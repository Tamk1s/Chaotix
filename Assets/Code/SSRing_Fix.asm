;		ORG 0x9F8BE0
Code:			equ	$022F8BE0	; SDRAM
PlaySound:		equ $20004020
dword_6007DDC:	equ	$06007DDC
v_rings_SS:		equ	$06007DF0
v_SS_RingCntdwn:equ	$06003828	
SS_GetRingChain:equ	$060066E4
	org Code
		
SS_GetRing2:
	mov.l   cntdwn, r0 ; v_SS_RingCntdwn
	mov.l	#0,r1
	mov.l   r1, @r0
	
	mov.l   off_60054DC, r3 ; v_rings_SS
	mov.l   off_60054E0, r1 ; SS_GetRingChain ; DONE
	mov.b   @r3, r0
	tst     #1, r0
	bt/s    restore
	mov     #$2D, r2 ; '-' ; one of these is left pan, one right (TODO)
	mov     #$69, r2 ; 'i'
	nop
	nop
restore:	
	rts
	nop
	
	
SS_LoseRings2:
	mov.l   cntdwn, r0 ; v_SS_RingCntdwn
	mov.l	#0,r1
	mov.l   r1, @r0

	sts.l   pr, @-r15
	mov.b   @(4,r13), r0
	or      #$10, r0
	mov.b   r0, @(4,r13)
	mov.l   off_600623C, r1 ; dword_6007DDC
	mov.w   dword_6006238, r0 ; h'8000000
	rts
	nop
	
off_60054DC:    	dc.l	v_rings_SS
off_60054E0:    	dc.l	SS_GetRingChain
off_600623C:    	dc.l 	dword_6007DDC   ; DATA XREF: SS_LoseRings+8r
dword_6006238:  	dc.l	$08000000
cntdwn:				dc.l	v_SS_RingCntdwn
playSound_ptr:  	dc.l	PlaySound


	; org	$060054AE
; SS_GetRing_Jump:
	; mov.l offset1_r0
	; jsr @r0
	; nop
; offset1_r0:			dc.l	$022F8BE0

	; org	$060061D4
; SS_LoseRings2:
	; mov.l offset2_r0
	; jsr @r0
	; nop	
; offset2_r0:			dc.l	$022F8BF2