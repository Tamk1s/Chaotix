ROMStart	EQU	$880000
MSUMD_DRV	EQU	ROMStart+$040000
msuLockout	EQU	ROMStart+$048000
Checksum	EQU	ROMStart+$018E
errm_Chksum	EQU %100000

; Mega CD MMIO addresses used for communicating with msu-md driver on the mega cd (mode 1)
MSU_COMM_CMD        EQU $A12010                 ; Comm command 0 (high byte)
MSU_COMM_ARG        EQU $A12011                 ; Comm command 0 (low byte)
MSU_COMM_CMD_CK     EQU $A1201F                 ; Comm command 7 (low byte)
MSU_COMM_STATUS     EQU $A12020                 ; Comm status 0 (0-ready, 1-init, 2-cmd busy)

; 32X registers (68000 address space)
;REG_32X_BANK        EQU $A15104                 ; Controls 1MB ROM bank visible in $900000 - $9FFFFF range on the mega drive 68000
; 32X memory addresses (68000 address space)
;ROM_BASE_32X        EQU $880000
;ROM_BANK_BASE_32X   EQU $900000

; Where to put the code
;!@ ROM_END             equ $3facd0
;ROM_END             	equ $3F75C0

; Krisalis sound driver variables
;KRISALIS_VAR_BASE   equ $ffffb4f0
;z80_bus_request		equ $A11100
;RQ_End		equ $0
;RQ_Start   equ $100

;; MSU COMMANDS: ;------------------------------------------------------------------------------------------

MSU_PLAY            equ $1100                   ; PLAY      decimal no. of track (1-99) playback will be stopped in the end of track
MSU_PLAY_LOOP       equ $1200                   ; PLAY LOOP decimal no. of track (1-99) playback will restart the track when end is reached
MSU_PAUSE           equ $1300                   ; PAUSE     vol fading time. 1/75 of sec. (75 equal to 1 sec) instant stop if 0 pause playback
MSU_RESUME          equ $1400                   ; RESUME    none. resume playback
MSU_VOL             equ $1500                   ; VOL       volume 0-255. set cdda volume
MSU_NOSEEK          equ $1600                   ; NOSEEK    0-on(default state), 1-off(no seek delays)  seek time emulation switch
MSU_PLAYOF          equ $1a00                   ; PLAYOF    #1 = decimal no. of track (1-99) #2 = offset in sectors from the start of the track to apply when looping play cdda track and loop from specified sector offset

;; MACROS: ;------------------------------------------------------------------------------------------

    macro MSU_WAIT
@wait
        tst.b   MSU_COMM_STATUS
        bne.s   @wait
		;nop
		;nop
		;nop
		;nop
    endm

    macro MSU_COMMAND cmd, param
        MSU_WAIT
        move.w  #(\1|\2),MSU_COMM_CMD           ; Send msu cmd
        addq.b  #1,MSU_COMM_CMD_CK              ; Increment command clock
    endm
	
	macro MSU_COMMAND2 cmd, param
        move.w  #(\1|\2),MSU_COMM_CMD
        addq.b  #1,MSU_COMM_CMD_CK
    endm
	
	macro MSU_COMMAND3 param
        MSU_WAIT
        move.w  \1,MSU_COMM_CMD
        addq.b  #1,MSU_COMM_CMD_CK
    endm
	
	macro MSU_COMMAND4 param
        move.w  \1,MSU_COMM_CMD
        addq.b  #1,MSU_COMM_CMD_CK
    endm
	
    ;macro JMP_32X routine
        ;jmp     \1+ROM_BASE_32X
    ;endm

    ;macro JSR_32X_BANKED subroutine
        ;move.w  REG_32X_BANK,-(sp)
        ;move.w  #3,REG_32X_BANK
        ;jsr     ((\1-$300000)+ROM_BANK_BASE_32X)
        ;move.w  (sp)+,REG_32X_BANK
    ;endm
;------------------------------------------------------------------------------------------

	jsr     (MSUMD_DRV).l				; Load MSU-MD Driver

	;Check if CD hardware found (Sega CD addon)
	;if gensCompatible=0
	;!@ 
    tst.b 	d0							; if 1: no CD Hardware found
    bne.s	jmpLockout				    ; if 1, branch to lockout
	;nop
	;nop
	;endif
	
	MSU_COMMAND2 MSU_VOL,255			;Set CD Volume to MAX
	MSU_COMMAND2 MSU_NOSEEK,1			;Disable seek delay for emus
	;move.w 	#(MSU_VOL|255),MSU_COMM_CMD	; Set CD Volume to MAX
    ;addq.b 	#1,MSU_COMM_CMD_CK			; Increment command clock
    bra.s   msuOK                       ; skip jmpLockout
jmpLockout:
	jmp 	msuLockout					;Display lockout msg if no Sega CD attached

msuOK:
	;Do original MARS checksum code
	moveq   #errm_Chksum,d0 ; Move MarsError Chksum value into d0
	lea     ROMStart,a0     ; Load MARS Bank Image address into a0 (ROMStart)
	move.w  Checksum-ROMStart(a0),d6 ; Move the expected checksum data into d6
	rts

;Replacement function for PlaySound (BGM portion) to handle MSU CDDA	
PlaySound_MSU:	
        tst.b   d0                              ; d0 = track number
        bne.s	play							; if track is not zero (silence), then branch
		
		;Stop MSU driver, then stop original Chaotix z80 Sound Driver
		MSU_COMMAND MSU_PAUSE, 0
        bra.s     original_code
play:
		lea     AUDIO_TBL(pc),a0				;Load audio table params addr into a0
		subi.w	#$01,d0							;Make d0 0-based
		add.w   d0,d0							;Double d0
		move.w  (a0,d0),d0        				;Get word offset/params for track ID from table

		; Send play commands from table
		MSU_COMMAND3 d0

;Original BGM playback code
original_code:		
        move.b  #$80,($A0003F).l				;Set SMPS driver speed to $80 (normal speed, NTSC 
		move.b	#$00, d0						;Force playback of BGM $00 (silence)
		move.b  d0,(a0)+
		move.b  d0,(a0)+
		move.b  d0,(a0)
        rts

; TABLES: ------------------------------------------------------------------------------------------

        align 2
AUDIO_TBL:
        ;       #Command|id		#Track Name
        dc.w	MSU_PLAY_LOOP|$01	; Door Into Summer
        dc.w	MSU_PLAY_LOOP|$02	; Electoria
        dc.w	MSU_PLAY_LOOP|$03	; Speed of Sound
        dc.w	MSU_PLAY_LOOP|$04	; Seascape
        dc.w	MSU_PLAY_LOOP|$05	; Midnight Greenhouse
        dc.w	MSU_PLAY_LOOP|$06	; New Moon
        dc.w	MSU_PLAY_LOOP|$07	; Labyrinth
        dc.w	MSU_PLAY_LOOP|$08	; Trial and Error
        dc.w	MSU_PLAY_LOOP|$09	; Walkin'
        dc.w	MSU_PLAY_LOOP|$0A	; Hyper-Hyper
        dc.w	MSU_PLAY_LOOP|$0B	; Evening Star
        dc.w	MSU_PLAY_LOOP|$0C	; Moonrise
        dc.w	MSU_PLAY_LOOP|$0D	; Overture
        dc.w	MSU_PLAY_LOOP|$0E	; This Horizon
        dc.w	MSU_PLAY_LOOP|$0F	; Take Off
        dc.w	MSU_PLAY_LOOP|$10	; Combination
        dc.w	MSU_PLAY_LOOP|$11	; Take a Nap
        dc.w	MSU_PLAY_LOOP|$12	; Surging Power
        dc.w	MSU_PLAY_LOOP|$13	; Mechanical Dance
        dc.w	MSU_PLAY_LOOP|$14	; Tube Panic
        dc.w	MSU_PLAY_LOOP|$15	; Crystal Nightmare
        dc.w	MSU_PLAY_LOOP|$16	; Child's Song
        dc.w	MSU_PLAY_LOOP|$17	; Soda Pop
        dc.w	MSU_PLAY_LOOP|$18	; Pendulum
        dc.w	MSU_PLAY_LOOP|$19	; Silver Screen
        dc.w	MSU_PLAY_LOOP|$1A	; Tachy Touch
        dc.w	MSU_PLAY_LOOP|$1B	; Chaotic World
        dc.w	MSU_PLAY_LOOP|$1C	; Surprise!
        dc.w	MSU_PLAY_LOOP|$1D	; Nice Meeting You
        dc.w	MSU_PLAY_LOOP|$1E	; Have a Happy Day
        dc.w	MSU_PLAY|$1F		; Reach the Goal
        dc.w	MSU_PLAY|$20		; High Five
        dc.w	MSU_PLAY_LOOP|$21	; Decision
        dc.w	MSU_PLAY_LOOP|$22	; From Party to Party
        dc.w	MSU_PLAY|$23		; Have Some Fun
        dc.w	MSU_PLAY_LOOP|$24	; Oriental Legend
        dc.w	MSU_PLAY_LOOP|$25	; Steel Heart
        dc.w	MSU_PLAY|$26		; Tribute
        dc.w	MSU_PLAY_LOOP|$27	; Destructive Power
        dc.w	MSU_PLAY_LOOP|$28	; Just Another Day
        dc.w	MSU_PLAY|$29		; Decision 2nd
AUDIO_TBL_END:
		nop