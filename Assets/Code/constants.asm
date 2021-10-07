; enum HW Stuff
z80_ram         EQU $A00000
z80_ram_end     EQU $A02000            ; end of non-reserved Z80 RAM
ym2612_a0       EQU $A04000
ym2612_d0       EQU $A04001
ym2612_a1       EQU $A04002
ym2612_d1       EQU $A04003
z80_version_hi  EQU $A10000            ; Version register (word)
                                        ;
                                        ; See page 72 of Genesis hw manual
                                        ; Also z8vb and z8vm bits/mask enums
                                        ;
                                        ; Upper byte (unused, 00000000)
z80_version_lo  EQU $A10001            ; Lower byte (MVDRVVVV)
z80_port_1_data_hi EQU $A10002         ; z80 Port 1 data (word, upper byte), Joypad 1 data
z80_port_1_data_lo EQU $A10003         ; z80 Port 1 data (word, lower byte), Joypad 1 data
z80_port_2_data_hi EQU $A10004         ; z80 Port 2 data (word, upper byte), Joypad 2 data
z80_port_2_data_lo EQU $A10005         ; z80 Port 2 data (word, upper byte), Joypad 2 data
z80_port_1_control_hi EQU $A10008      ; z80 Port 1 control (word, upper byte)
z80_port_1_control_lo EQU $A10009      ; z80 Port 1 control (word, lower byte)
z80_port_2_control_hi EQU $A1000A      ; z80 Port 2 control (word, upper byte)
z80_port_2_control_lo EQU $A1000B      ; z80 Port 2 control (word, lower byte)
z80_expansion_control_hi EQU $A1000C   ; Serial expansion port control (word, upper byte)
z80_expansion_control_lo EQU $A1000D   ; Serial expansion port control (word, lower byte)
z80_bus_rEQUest EQU $A11100
z80_reset       EQU $A11200
_32x_S32X_ID    EQU $A130EC            ; TMSS32x "MARS" ID. Readonly word
SRAM_access     EQU $A130F1            ; SRAM Mapper register, used in Chaotix for ROM/SRAM access
TMSS_Reg        EQU $A14000            ; TMSS Register for check (TMSS_Sega)
_32x_adpCtrl_hi EQU $A15100            ; Start of 32x sys registers/data
                                        ; Adapter control reg (word, high byte);
                                        ; see page 21 of 32x hw manual
_32x_adpCtrl_lo EQU $A15101            ; Low byte
_32x_intCtrl_hi EQU $A15102            ; Interrupt issued for SH2
                                        ; Interrupt Control Register (word)
                                        ;
                                        ; See page 22 of 32x manual,
                                        ; and _32x_intCtrl bit/mask enums
                                        ;
                                        ; Upper byte
_32x_intCtrl_lo EQU $A15103            ; Lower byte
_32x_CartBank_hi EQU $A15104           ; 32x Bank Set Register (Word)
                                        ; See page 22 of 32x manual
                                        ;
                                        ; Bitfield
                                        ; 00000000 000000YX
                                        ;
                                        ; YX Data seen at $900000-$9FFFFF
                                        ; 00 $000000-$0FFFFFh
                                        ; 01 $100000-$1FFFFFh
                                        ; 10 $200000-$2FFFFFh
                                        ; 11 $300000-$3FFFFFh
                                        ;
_32x_CartBank_lo EQU $A15105
_32x_dreqCtrl_hi EQU $A15106           ; DREQ Ctrl Register word; see page 23 & 32 of 32x manual
                                        ; Also see dreq (drqb_) enums for bitfield
_32x_dreqCtrl_lo EQU $A15107
_32x_dreqSrc0   EQU $A15108            ; 68k to SH-2 DREQ source register (longword)
                                        ; See page 23 of 32x manual
                                        ;
                                        ; Src addr mask format
                                        ; 00000000 xxxxxxx
                                        ; xxxxxxxx xxxxxx0
                                        ;
                                        ;
                                        ; Because the DREQ circuit does not use this data,
                                        ; nothing needs to be set at the time of CPU WRITE
                                        ; (bit dqcb_68S=1 in _32x_dreqCtrl register)
                                        ;
                                        ;
                                        ; Upper word, upper byte (00000000)
_32x_dreqSrc1   EQU $A15109            ; Upper word, lower byte (xxxxxxx)
_32x_dreqSrc2   EQU $A1510A            ; Lower word, upper byte (xxxxxxx)
_32x_dreqSrc3   EQU $A1510B            ; Lower word, lower byte (xxxxxx0)
_32x_dreqDest0  EQU $A1510C            ; 68k to SH-2 DREQ dest register (longword)
                                        ; See page 24 of 32x manual
                                        ;
                                        ; Dest addr mask format
                                        ; 00000000 xxxxxxx
                                        ; xxxxxxxx xxxxxx0
                                        ;
                                        ;
                                        ; Sets the SH2 side (SDRAM) address.
                                        ;
                                        ; The DREQ circuit does not use this data.
                                        ; Thus, when the destination address is known beforehand by SH2,
                                        ; or when SH2 doesn't need to
                                        ; know, no settings are nedded.
                                        ;
                                        ; Upper word, upper byte (00000000)
_32x_dreqDest1  EQU $A1510D            ; Upper word, lower byte (xxxxxxxx)
_32x_dreqDest2  EQU $A1510E            ; Lower word, upper byte (xxxxxxxx)
_32x_dreqDest3  EQU $A1510F            ; Lower word, lower byte (xxxxxxx0)
_32x_dreqLen_hi EQU $A15110            ; 68k to SH-2 DREQ length register
                                        ; See page 24 of 32x manual
                                        ;
                                        ; Length bitmask xxxxxxxx xxxxxx00
                                        ;
                                        ; Sets the number of data items (unitword) to be sent to SH2 side.
                                        ;
                                        ; The value to be set is in 4 word units.
                                        ; Low order 2 bits write is ignored ($00 fixed).
                                        ;
                                        ; Be sure to set this register for CPU WRITE
                                        ; (bit dqcb_68S=1 in _32x_dreqCtrl register).
                                        ;
                                        ; At each transfer, this register is decremented and when it becomes 0,
                                        ; the DREQ operation ends.
                                        ;
                                        ; Transfer is done 65536 ($FFFF) times when 0 is set.
                                        ; Read time reads the actual count value.
                                        ;
                                        ; Upper byte (xxxxxxxx)
_32x_dreqLen_lo EQU $A15111            ; Lower byte (xxxxxx00)
_32x_dreqFifo   EQU $A15112            ; FIFO for M68k->32x dreq (word)
                                        ; See page 24 of 32x manual
                                        ;
                                        ; Data is written to this register when DREQ is used by CPU WRITE
                                        ; (bit dqcb_68S=1 in _32x_dreqCtrl register)
_32x_SegaTV     EQU $A1511A            ; SEGA TV Register (word)
                                        ;
                                        ; Bitfield
                                        ; 00000000 0000000X
                                        ;
                                        ; CM Bit (r/w)
                                        ; 0=ROM (initial value)
                                        ; 1=DRAM
                                        ;
_32x_comm0      EQU $A15120            ; Bi-directional comm port words
                                        ; (68K<->SH2 communication)
_32x_comm2      EQU $A15122
_32x_comm4      EQU $A15124
_32x_comm8      EQU $A15128
_32x_commC      EQU $A1512C
pwm_ctrl_hi     EQU $A15130            ; PWM Control Register (word)
                                        ; See page 26 of 32x hw manual
                                        ;
                                        ; Also see pwcb/pwcm bit/mask enums for usage
                                        ;
                                        ; Upper byte (0000XXXX)
                                        ;
pwm_ctrl_lo     EQU $A15131            ; Lower byte (X000XXXX)
pwm_cycle_hi    EQU $A15132            ; PWM Cycle Register (word)
                                        ; See page 26 of 32x hw manual
                                        ;
                                        ; Upper byte (0000FFFF)
                                        ;
                                        ; Bit/readmask ($A15132/$20004032)
                                        ; MD/32x 0000FFFF FFFFFFFF
                                        ; MD/32x 0000BBBB BBBBBBBB
                                        ;
                                        ; F=New frEQUency
                                        ;
                                        ; The base clock frEQUency of the cycle registers are fixed respectively
                                        ; NTSC at 23.01MHz
                                        ; PAL  at 22.8MHz (set value x Scyc) becomes the cycle.
                                        ;
                                        ; NTSC Scyc = 1/23.01 [MHz]
                                        ; PAL  Scyc = 1/22.8 [MHz]
                                        ;
                                        ; The cycle counter does not operate
                                        ; when both Lch and Rch are off.
pwm_cycle_lo    EQU $A15133            ; Lower byte (FFFFFFFF)
                                        ;
                                        ;
pwm_lch_hi      EQU $A15134            ; The following 3 register words act similar
                                        ;
                                        ; Xch Pulse Width Register (word)
                                        ; See page 27 of 32x hw manual
                                        ; Also pwxb and pwxm bitfield/mask enums
                                        ;
                                        ; FIFO which handles left, right,
                                        ; and both (mono left and right)
                                        ; channel pulse data/statuses
                                        ;
                                        ;
                                        ; Lch, Upper byte (FE00PPPP)
pwm_lch_lo      EQU $A15135            ; Lch, lower byte (PPPPPPPP)
pwm_rch_hi      EQU $A15136            ; Rch, Upper byte (FE00PPPP)
pwm_rch_lo      EQU $A15137            ; Rch, Lower byte (PPPPPPPP)
pwm_mono_hi     EQU $A15138            ; Mono ch, Upper byte (FE00PPPP)
pwm_mono_lo     EQU $A15139            ; Mono ch, Lower byte (PPPPPPPP)
svdp_bitmap_mode_hi EQU $A15180        ; Start of Super VDP area
                                        ; Bitmap mode register; see page 36 of 32x hw manual
svdp_bitmap_mode_lo EQU $A15181
svdp_fb_ssh_hi  EQU $A15182            ; Super VDP Framebuffer Screen Shift ctrl reg
                                        ; See page 38 of 32x hw manual
                                        ;
                                        ; Upper byte (00000000)
svdp_fb_ssh_lo  EQU $A15183            ; Lower byte (0000000S)
                                        ;
                                        ; S=SFT Screen 1 dot left shift
                                        ; 0=off
                                        ; 1=on
                                        ;
                                        ; Switching is allowed at any time,
                                        ; but is valid from the next line.
                                        ;
svdp_fb_fillLen_hi EQU $A15184         ; Super VDP Frame Buffer Auto Fill length register (word)
                                        ; See page 38 of 32x hw manual
                                        ;
                                        ; Upper byte (00000000)
                                        ;
                                        ; Bit/readmask
                                        ; 00000000 XXXXXXXX
                                        ; 00000000 BBBBBBBB
                                        ;
                                        ; Word length when filling DRAM (frame buffer).
                                        ; To set this value, set the value for the to
                                        ; be-filled word length ($00-$FF).
                                        ;
svdp_fb_fillLen_lo EQU $A15185         ; Lower byte (XXXXXXXX)
svdp_fb_fillStart_hi EQU $A15186       ; Super VDP Framebuffer Auto Fill Start addr reg (word)
                                        ; See page 38 of 32x hw manual
                                        ;
                                        ; Upper byte (FEDCBA98)
                                        ;
                                        ; Bit/readmask
                                        ; FEDCBA98 76543210
                                        ; BBBBBBBB BBBBBBBB
                                        ;
                                        ; Hex digits=Bits of start address location
                                        ;
                                        ; Sets the start address of the area to be filled.
                                        ; Bits F-9 remains as fixed, but 8-1 are
                                        ; incremented at each Fill.
                                        ;
svdp_fb_fillStar_lo EQU $A15187        ; Lower byte (76543210)
svdp_fb_fillData_hi EQU $A15188        ; Super VDP Framebuffer Auto Fill data reg (word)
                                        ; See page 38 of 32x hw manual
                                        ;
                                        ; Upper byte (upper DDDDDDDD)
                                        ;
                                        ; Bit/readmask
                                        ; DDDDDDDD DDDDDDDD
                                        ; BBBBBBBB BBBBBBBB
                                        ;
                                        ; D=data bits
                                        ;
                                        ; Sets data to be filled.
                                        ; The Fill op begins when setting this reg
                                        ;
svdp_fb_fillData_lo EQU $A15189        ; Lower byte (lower DDDDDDDD)
svdp_fb_ctrl_hi EQU $A1518A            ; Super VDP Framebuffer Control Reg (Word)
                                        ; See page 37 of 32x manual
                                        ;
                                        ; Upper byte (XXX00000)
svdp_fb_ctrl_lo EQU $A1518B            ; Lower byte (000000XX)
_32x_CRAM       EQU $A15200
vdp_data_port   EQU $C00000            ; VDP Data Port
vdp_control_port_hi EQU $C00004        ; VDP Control Port (word, upper byte)
vdp_control_port_lo EQU $C00005        ; VDP Control Port (word, lower byte)
vdp_counter     EQU $C00008
psg_input       EQU $C00011

; ---------------------------------------------------------------------------

; enum z80_version bits
z8vb_v0_tmss    EQU 0
z8vb_v1         EQU 1
z8vb_v2         EQU 2
z8vb_v3         EQU 3
z8vb_rsv        EQU 4
z8vb_disk       EQU 5
z8vb_vmod       EQU 6
z8vb_mode       EQU 7
z8vb_bit8       EQU 8
z8vb_bit9       EQU 9
z8vb_bitA       EQU $A
z8vb_bitB       EQU $B
z8vb_bitC       EQU $C
z8vb_bitD       EQU $D
z8vb_bitE       EQU $E
z8vb_bitF       EQU $F
 ; ---------------------------------------------------------------------------

 ; enum z80_version mask (bitfield)
z8vm_v0_tmss    EQU 1                  ;z80_version register (word)
                                         ;
                                         ; bit/readfield
                                         ; 00000000 MVDRVVVV
                                         ; 00000000 RRRRRRRR
                                         ;
                                         ; V=Mega Drive version (4-bits)
                                         ; VVV0=no TMSS
                                         ; VVV1=has TMSS
z8vm_v1         EQU %10
z8vm_v2         EQU %100
z8vm_v3         EQU %1000
z8vm_rsv        EQU %10000             ; R=RSV Currently not used/reserved
                                         ;
z8vm_disk       EQU %100000            ; D=Disk FDD presence (Sega CD)
                                         ;
                                         ; 0=FDD/SCD not connected
                                         ; 1=FDD/SCD not connected
                                         ;
                                         ; Check this bit for Sega CD presence,
                                         ; to handle SegaCD 32x support
                                         ;
                                         ; (See https//plutiedev.com/subcpu-in-mode1#check-if-present)
                                         ;
z8vm_vmod       EQU %1000000           ; V=VMOD Video mode CPU clock
                                         ;
                                         ; 0=NTSC CPU clock (7.67 MHz)
                                         ; 1=PAL CPU clock (7.60 MHz)
                                         ;
z8vm_mode       EQU %10000000          ; M=Mode/model
                                         ;
                                         ; 0=Domestic Model (USA?)
                                         ; 1=Overseas Model (Japan)
                                         ;
z8vm_bit8       EQU %100000000         ; All bits of upper word are unused
z8vm_bitA       EQU %10000000000
z8vm_bitC       EQU %1000000000000
z8vm_bitD       EQU %10000000000000
z8vm_bitE       EQU %100000000000000
z8vm_bitF       EQU %1000000000000000

; ---------------------------------------------------------------------------

; enum _32x_adpCtrl bits
adcb_aden       EQU 0
adcb_res        EQU 1
adcb_ren        EQU 7
adcb_fm         EQU $F

 ; ---------------------------------------------------------------------------

 ; enum _32x_adpCtrl bitmask (bitfield)
adcm_aden       EQU 1                  ; Adapter control register (word);
                                         ; see page 21 of 32x hw manual
                                         ;
                                         ; Bitmask
                                         ; 0bF0000000 N00000SA
                                         ; F = VDP Access Auth
                                         ; N = SH2 Reset Enable
                                         ; S = Reset SH2
                                         ; A = Adapter Enable Bit
                                         ;
                                         ; Adapter Enable bit
                                         ;
                                         ; 0=Prohibit 32x
                                         ; 1=Permit 32x (initz by initprg; change prohibited)
                                         ;
                                         ; Switching access authorization is done while writing to the FM bit. Therefore, be aware
                                         ; that if writing to the FM bit is done by MEGA Drive while SH2 accesses VDP, access
                                         ; authorization is forced to switch to MEGA Drive.
adcm_res        EQU %10                ; Resets SH2
                                         ; 0=Reset
                                         ; 1=Cancel reset (initz by initprg. Change prohibited)
adcm_ren        EQU %10000000          ; SH2 Reset Enable
                                         ; 0=Disable
                                         ; 1=Enable
adcm_fm         EQU %1000000000000000  ; VDP Access Authz
                                         ; 0=MD (Default)
                                         ; 1=SH2
; ---------------------------------------------------------------------------

; enum _32x_dreqCtrl bits
dqcb_RV_DMA     EQU 0
dqcb_bit1       EQU 1
dqcb_68S        EQU 2
dqcb_dmaFifo_Full EQU 7
dqcb_FB_WCacheEmpty EQU $E
dqcb_FB_WCacheFull EQU $F

 ; ---------------------------------------------------------------------------

 ; enum _32x_dreqCtrl mask (bitfield)
dqcm_RV_DMA     EQU 1                  ; ROM to VRAM DMA
                                         ; 0 NO OPERATION (initial value)
                                         ; 1 DMA Start Allowed
                                         ;
                                         ; The SH2 side cannot access the ROM when RV = 1 (when doing ROM to VRAM DMA,
                                         ; be sure that RV = 1). Waits until value becomes 0 (RV = 0) before accessing.
                                         ;
                                         ; Basically when SRAM_Acess is toggled to SRAM mode,
                                         ; RV bit must be set off (and vice versa)
                                         ;
                                         ; https//gendev.spritesmind.net/forum/viewtopic.php?p=12036#p12036
                                         ;
                                         ; MD=R/W, 32x=readonly
dqcm_bit1       EQU %10                ; Always 0
                                         ; MD=R/W, 32x=readonly
dqcm_68S        EQU %100               ; 68S/Mode
                                         ; 0=No Operation
                                         ; 1=CPU Write (68K writes data in FIFO)
                                         ;
                                         ; The internal system starts operation when 68S is 1.
                                         ; Writing 0 force-ends the operation.
                                         ; It is automatically set to 0 after DMA ends.
                                         ;
                                         ; MD=R/W, 32x=readonly
dqcm_dmaFifo_Full EQU %10000000        ; DMA FIFO Full
                                         ; 0=Can write
                                         ; 1=Cannot write
                                         ;
                                         ; MD=readonly, 32x=inacc
dqcm_FB_WCacheEmpty EQU %100000000000000 ; EMPT Frame Buffer, Write Cache Empty
                                         ; 0=Data
                                         ; 1=No Data
                                         ;
                                         ; MD=inacc, 32x=readonly
dqcm_FB_WCacheFull EQU %1000000000000000 ; Full 32x Frame Buffer, Write Cache Full
                                         ; 0=Space
                                         ; 1=No Space
                                         ;
                                         ; MD=inacc, 32x=readonly
; ---------------------------------------------------------------------------

; enum _32x_intCtrl bits
intb_master     EQU 0
intb_slave      EQU 1

 ; ---------------------------------------------------------------------------

 ; enum _32x_intCtrl mask (bitfield)
intm_master     EQU 1                  ; Master SH2 interrupt command
                                         ; 0=NO OPERATION (initial value)
                                         ; 1=Interrupt command
                                         ;
intm_slave      EQU %10                ; Slave SH2 interrupt command
                                         ; 0=NO OPERATION (initial value)
                                         ; 1=Interrupt command
; ---------------------------------------------------------------------------

; enum pwm_ctrl bits
pwcb_lmd1       EQU 0
pwcb_lmd0       EQU 1
pwcb_rmd1       EQU 2
pwcb_rmd0       EQU 3
pwcb_bit4       EQU 4
pwcb_bit5       EQU 5
pwcb_bit6       EQU 6
pwcb_rtp        EQU 7
pwcb_tm0        EQU 8
pwcb_tm1        EQU 9
pwcb_tm2        EQU $A
pwcb_tm3        EQU $B
pwcb_bitC       EQU $C
pwcb_bitD       EQU $D
pwcb_bitE       EQU $E
pwcb_bitF       EQU $F

 ; ---------------------------------------------------------------------------

 ; enum pwcm_ctrl mask (bitfield)
pwcm_lmd1       EQU 1                  ; PWM Control Register (word)
                                         ;
                                         ; Bitmask
                                         ; MD/32x 0000ABCD R000WXYZ
                                         ;
                                         ; Readmask
                                         ; MD     0000RRRR B000BBBB   $  A15130
                                         ; 32x    0000BBBB B000BBBB   $20004030
                                         ;
                                         ;
                                         ; Bits YZ
                                         ; Y=LMD0
                                         ; Z=LMD1
                                         ;
                                         ;  Truth table
                                         ; LMD0 |LMD1 |OUT
                                         ; -----------------
                                         ;   0  |  0  |OFF
                                         ; -----------------
                                         ;   0  |  1  |L
                                         ;   1  |  0  |R
                                         ; -----------------
                                         ;   1  |  1  |Prohib
                                         ;
                                         ; Both cannot be set to Lch or Rch.
pwcm_lmd0       EQU %10                ;
                                         ;
pwcm_rmd1       EQU %100               ; Bits WX
                                         ; W=RMD0
                                         ; X=RMD1
                                         ;
                                         ;  Truth table
                                         ; RMD0 |RMD1 |OUT
                                         ; -----------------
                                         ;   0  |  0  |OFF
                                         ; -----------------
                                         ;   0  |  1  |R
                                         ;   1  |  0  |L
                                         ; -----------------
                                         ;   1  |  1  |Prohib
                                         ;
                                         ; Both cannot be set to Lch or Rch.
pwcm_rmd0       EQU %1000              ;
                                         ;
pwcm_bit4       EQU %10000
pwcm_bit5       EQU %100000
pwcm_bit6       EQU %1000000
pwcm_rtp        EQU %10000000          ; R=RTP DREQ1 occurrence enable (SH2 side only)
                                         ; 0= off (initial value)
                                         ; 1= on
                                         ;
pwcm_tm0        EQU %100000000         ; Bits ABCD=TM3-TM0
                                         ; PWM Timer interrupt interval
                                         ;
pwcm_tm1        EQU %1000000000
pwcm_tm2        EQU %10000000000
pwcm_tm3        EQU %100000000000
pwcm_bitC       EQU %1000000000000
pwcm_bitD       EQU %10000000000000
pwcm_bitE       EQU %100000000000000
pwcm_bitF       EQU %1000000000000000

; ---------------------------------------------------------------------------

; enum pwm_xch bits
pwxb_p0         EQU 0
pwxb_p1         EQU 1
pwxb_p2         EQU 2
pwxb_p3         EQU 3
pwxb_p4         EQU 4
pwxb_p5         EQU 5
pwxb_p6         EQU 6
pwxb_p7         EQU 7
pwxb_p8         EQU 8
pwxb_p9         EQU 9
pwxb_pA         EQU $A
pwxb_pB         EQU $B
pwxb_bitC       EQU $C
pwxb_bitD       EQU $D
pwxb_empty      EQU $E
pwxb_full       EQU $F

 ; ---------------------------------------------------------------------------

 ; enum pwm_xch mask (bitfield)
pwxm_p0         EQU 1                  ; X Channel PWM Register (word)
                                         ; Fifo which write pulse data/gives FIFO status
                                         ;
                                         ; Handles left, right, and mono (both) channels
                                         ; depending on register
                                         ;
                                         ; $A1513X, $2000403X
                                         ; X=$34, $36, $38
                                         ;
                                         ; Bitmask
                                         ; MD/32x FE00PPPP PPPPPPPP
                                         ;
                                         ; Readmask
                                         ; MD/32x RR00WWWW WWWWWWWW
                                         ;
                                         ;
                                         ; P=Pulse
                                         ; 12-bit Pulse width value
pwxm_p1         EQU %10
pwxm_p2         EQU %100
pwxm_p3         EQU %1000
pwxm_p4         EQU %10000
pwxm_p5         EQU %100000
pwxm_p6         EQU %1000000
pwxm_p7         EQU %10000000
pwxm_p8         EQU %100000000
pwxm_p9         EQU %1000000000
pwxm_pA         EQU %10000000000
pwxm_pB         EQU %100000000000      ;
                                         ;
pwxm_bitC       EQU %1000000000000
pwxm_bitD       EQU %10000000000000    ;
                                         ;
pwxm_empty      EQU %100000000000000   ; F=Full Conditions of pulse width FIFO
                                         ; 0=Space available
                                         ; 1=No space available
                                         ;
pwxm_full       EQU %1000000000000000  ; E=Empty Conditions of pulse width FIFO
                                         ; 0=Data per FIFO
                                         ; 1=No data per FIFO
; ---------------------------------------------------------------------------

; enum svdp_bitmap bits
bmm_mode_lo     EQU 0
bmm_mode_hi     EQU 1
bmm_bit2        EQU 2
bmm_bit3        EQU 3
bmm_bit4        EQU 4
bmm_bit5        EQU 5
bmm_LMode240    EQU 6
bmm_prio        EQU 7
bmm_bit8        EQU 8
bmm_bit9        EQU 9
bmm_bitA        EQU $A
bmm_bitB        EQU $B
bmm_bitC        EQU $C
bmm_bitD        EQU $D
bmm_bitE        EQU $E
bmm_tv          EQU $F

; ---------------------------------------------------------------------------
; enum svdp_bitmap mask (bitfield)
bmb_mode_lo     EQU 1                  ; Bitmap mode register; see page 36 of 32x hw manual
                                        ; 0bT0000000 PL0000MM
                                        ;
                                        ; T= TV Format
                                        ; P = Priority
                                        ; L = line mode
                                        ; MM= Draw Mode (2-bit, 4 values)
bmb_mode_hi     EQU %10                ; High bit for bitmap draw mode
                                        ;
                                        ; Valid combos
                                        ;   xx =
                                        ; - 00 = Blank Mode (default)
                                        ; - 01 = Packed Pixel Mode
                                        ; - 10 = Direct Color Mode
                                        ; - 11 = Run Length Mode
bmb_bit2        EQU %100
bmb_bit3        EQU %1000
bmb_bit4        EQU %10000
bmb_bit5        EQU %100000
bmb_LMode240    EQU %1000000           ; 240 Line Mode (PAL only; 0=224 lines default, 1=240 lines)
bmb_prio        EQU %10000000          ; Screen priority. (0=MD has prio [default], 1=32x)
bmb_bit8        EQU %100000000
bmb_bit9        EQU %1000000000
bmb_bitA        EQU %10000000000
bmb_bitB        EQU %100000000000
bmb_bitC        EQU %1000000000000
bmb_bitD        EQU %10000000000000
bmb_bitE        EQU %100000000000000
bmb_tv          EQU %1000000000000000  ; TV format (0=pal, 1=NTSC)
; ---------------------------------------------------------------------------

; enum svdp_fb_ctrl bits
fbcb_fs         EQU 0                  ; Usable Bitmask
                                        ; VHP00000 000000FS
fbcb_fen        EQU 1
fbcb_bit2       EQU 2
fbcb_bit3       EQU 3
fbcb_bit4       EQU 4
fbcb_bit5       EQU 5
fbcb_bit6       EQU 6
fbcb_bit7       EQU 7
fbcb_bit8       EQU 8
fbcb_bit9       EQU 9
fbcb_bitA       EQU $A
fbcb_bitB       EQU $B
fbcb_bitC       EQU $C
fbcb_pen        EQU $D
fbcb_hbla       EQU $E
fbcb_vbla       EQU $F
 ; ---------------------------------------------------------------------------

 ; enum svdp_fb_ctr mask (bitfield)
fbcm_fs         EQU 1                  ; Super VDP Framebuffer Control Reg (Word)
                                         ; See page 37 of 32x manual
                                         ;
                                         ; Bit/readmask
                                         ; 0bVHP00000 000000FS
                                         ; 0bRRR00000 000000BB
                                         ;
                                         ; S=FS Frame Buffer Swap
                                         ; 0=Transfers DRAM0 to VDP side (initial value)
                                         ; 1=Transfers DRAM1 to VDP side
                                         ;
                                         ; ? Swapping the Frame Buffer is allowed during V Blank (VBLK = 1) or
                                         ;   when in the blank mode. However, writing the FS bit is always allowed,
                                         ;   and when written during display, swapping is done at the next V Blank.
                                         ;   With respect to read, the value, which indicates DRAM during display
                                         ;   until the next V Blank, is returned.
                                         ;
                                         ; ? When having swapped the Frame Buffer, be sure to access the Frame
                                         ;   Buffer after confirming that VBLK = 1 or FS bit has changed.
                                         ;
fbcm_fen        EQU %10                ; F=FEN Frame Buffer Authz
                                         ; 0=Access approved
                                         ; 1=Access denied
                                         ;
                                         ; ? When having performed FILL, be sure to access the Frame Buffer after
                                         ;   confirming that FEN is EQUal to 0.
fbcm_bit2       EQU %100
fbcm_bit3       EQU %1000
fbcm_bit4       EQU %10000
fbcm_bit5       EQU %100000
fbcm_bit6       EQU %1000000
fbcm_bit7       EQU %10000000
fbcm_bit8       EQU %100000000
fbcm_bit9       EQU %1000000000
fbcm_bitA       EQU %10000000000
fbcm_bitB       EQU %100000000000
fbcm_bitC       EQU %1000000000000
fbcm_pen        EQU %10000000000000    ; P=PEN Palette Access Approval
                                         ; 0=Access denied
                                         ; 1=Access approved
                                         ;
                                         ; ? Palette access is possible only during H and V blank.
                                         ;
                                         ; ? Palette can access whenever the bitmap mode is in
                                         ;   the direct color mode, as well as during Blank.
                                         ;
fbcm_hbla       EQU %100000000000000   ; H=HBLK HBlank
                                         ; 0=During display period
                                         ; 1=During HBlank
                                         ;
fbcm_vbla       EQU %1000000000000000  ; V=VBLK VBlank
                                         ; 0=During display period
                                         ; 1=During VBlank
; ---------------------------------------------------------------------------

; enum Bus rEQUest constants
RQ_End          EQU 0
RQ_Start        EQU $100

; ---------------------------------------------------------------------------

; enum M68K SR Int consts
msr_EnableInts  EQU $2300
msr_DisableInts EQU $2700

; ---------------------------------------------------------------------------
; enum M68K SR Bits (bitfield)
msr_Carry       EQU 1
msr_oVerflow    EQU %10
msr_Zero        EQU %100
msr_Neg         EQU %1000
msr_Xtend       EQU %10000
msr_intPrio0    EQU %100000000
msr_intPrio1    EQU %1000000000
msr_intPrio2    EQU %10000000000
msr_supervisor  EQU %10000000000000
msr_Trace       EQU %1000000000000000

; ---------------------------------------------------------------------------
; enum SRAM Type bits (bitfield)
stb_Alignment   EQU %1000              ; Alignment of bits. 0=even, 1=odd
                                        ;
                                        ; SRAM type bitfield
                                        ; 1S1b a000
                                        ;
                                        ; S = Volatile bit
                                        ; 0 = Volatile (lost on power down)
                                        ; 1 = Non-volatile (persists on power down)
                                        ;
                                        ; ba = SRAM type info
                                        ; b = bit type (16/8)
                                        ; a = alignment type (even/odd)
                                        ; ba = 01 = special case (EEPROM), all others are SRAM types
                                        ;
                                        ; ba = 00 (16-bit)
                                        ; ba = 01 (Invalid/EEPROM?)
                                        ; ba = 10 (8-bit even)
                                        ; ba = 11 (8-bit odd)
                                        ;
                                        ; Read https//plutiedev.com/rom-header#sram
                                        ;
stb_BitSize     EQU %10000             ; Size of bits 0=16-bit, 1=8-bit
stb_SRAMEnable2 EQU %100000            ; Bit always set
stb_Volatile    EQU %1000000           ; Is SRAM volatile? (0=don't persist, 1=persist after powerdown)
stb_SRAMEnable1 EQU %10000000          ; Bit always set

; ---------------------------------------------------------------------------

; enum SRAM_Access masks (bitfield)
srm_Enable      EQU 1
srm_Write       EQU %10

; ---------------------------------------------------------------------------

; enum SRAM_Access bits and misc (width 1 byte)
srb_Enable      EQU 0                  ; Toggles SRAM access (0= upper 2MB bank is ROM, 1 = upper bank is SRAM)
                                        ; https//forums.nesdev.com/viewtopic.php?p=133836#p133836
srb_Write       EQU 1                  ; Toggles write access for bank (0=write-protected, 1=write access)
                                        ;
                                        ; Misc stuff
RAM_Hdr_End_SRAM EQU $20               ; End byte for SRAM type header (of type SRAM)
RAM_Hdr_End_EEPROM EQU $40             ; End byte for SRAM type header (of type EEPROM)
SRAM_Checksum_Loop EQU $FB             ; Amount of times to loop for the SRAM checksum function.
                                        ; = (SRAM_Filesize - 0x04)
SRAM_Filesize   EQU $FF                ; Amount of unique bytes in SRAM (per segment, =(SRAM_End-SRAM_Start)/4)
SRAM_Chksum_Seed EQU $4B52
SRAM_Duplicate  EQU $200201            ; SRAM addr of 2nd half (duplicate data).
                                        ; Used as failsafe in case 1st half gets corrupted (bad checksum)
                                        ;
                                        ; =SRAM_Start + ((SRAMEnd-SRAMStart)/2)+1 for SRAM type $FA)
; ---------------------------------------------------------------------------

; enum ROM Header stuff
ROM32x_DestAddr EQU 0                  ; Destination (offset in 32x SDRAM for ROM32x_SrcAddr)
MUH_Version     EQU 0                  ; Mars User Header version
ROM32x_Size     EQU $9000              ; Size of the 32x code area (long-word alignment)
ChkSum          EQU $B61C              ; ROM Checksum
ROM32x_SrcAddr  EQU $77800             ; Source (offset in ROM for start of 32x code)
SRAMStart       EQU $200001            ; Start address of SRAM
SRAMEnd         EQU $2003FF            ; End address of SRAM
ROM68k_EndAddr  EQU $2FFFFF            ; End address of 68k ROM
Bank1_MemOffset EQU $700000            ; Logical offset for addresses in Bank1
                                        ; Physical_ROM_addr = (logical_Bank1_addr-this)
Bank0_MemOffset EQU $880000            ; Logical offset for addresses in Bank0
                                        ; Physical_ROM_addr = (logical_Bank0_addr-this)
RAM68k_Start    EQU $FF0000            ; Start address of 68k RAM
StackAddr       EQU $FF0200            ; Stack address
RAM68k_End      EQU $FFFFFF            ; End address of 68k RAM
ROM32x_VBR_M    EQU $6000000           ; SH-2 (Master) Vector Base addr
ROM32x_VBR_S    EQU $6000080           ; SH-2 (Slave) Vector Base addr
ROM32x_EntryPt_M EQU $60001A0          ; SH-2 (Master) Start addr
ROM32x_EntryPt_S EQU $60001A4          ; SH-2 (Slave) Start addr
Vtr_Line1010_EmuHandler EQU $FFFFC012
Vtr_Line1111_EmuHandler EQU $FFFFC018
Vtr_TraceHandler EQU $FFFFC01E
Vtr_SpuriousEx_Handler EQU $FFFFC024
Vtr_IRQ2        EQU $FFFFC02A
v_Security_Sega EQU $FFFFFFC0          ; Security variable for Genesis TMSS (TMSS_Sega='SEGA')
v_Security_Init EQU $FFFFFFC4          ; Security variable for Mars TMSS (TMSS_Mars_Init='INIT')

; ---------------------------------------------------------------------------

; enum TMSS 32x Boot Strings
RAM_Hdr_Start   EQU 'RA'               ; ROM Header text constant for SRAM support ('RA')
chr_TimeAttack  EQU 'TA'               ; Special no-save string variant for time attack mode (v_SaveFile_ID)!
TMSS_Mars_Init  EQU 'INIT'             ; See page of 80 of 32x hw manual (http//www.tmeeco.eu/SMD/32x_hardware_manual.pdf)
TMSS_Mars       EQU 'MARS'             ; TMSS_32x String
TMSS_Mars_MasterOk EQU 'M_OK'          ; TMSS_32x Master OK
TMSS_Mars_Ready EQU 'REDY'             ; TMSS_32x Ready
TMSS_Mars_Sec_Fail EQU 'SDER'          ; TMSS_32x SDRAM Error
TMSS_Sega       EQU 'SEGA'             ; TMSS String (Genesis)
TMSS_Mars_SDRAM_Fail EQU 'SQER'        ; TMSS_32x Security Error
TMSS_Mars_SlaveOk EQU 'S_OK'           ; TMSS_32x Slave OK
TMSS_MarsCD     EQU '_CD_'             ; Sega Genesis CD 32x header

; ---------------------------------------------------------------------------

; enum MarsError_Results bits
errb_Mars       EQU 0
errb_TV         EQU 1                  ;
                                        ;
errb_bit2       EQU 2                  ; bits 2 - 4 are unused
errb_bit3       EQU 3
errb_bit4       EQU 4                  ;
                                        ;
errb_Chksum     EQU 5
errb_SQER       EQU 6
errb_SDER       EQU 7                  ;
                                        ;
errb_bit8       EQU 8                  ; bits 8-E are unused
errb_bit9       EQU 9
errb_bitA       EQU $A
errb_bitB       EQU $B
errb_bitC       EQU $C
errb_bitD       EQU $D
errb_bitE       EQU $E                 ;
                                        ;
errb_Reset      EQU $F

 ; ---------------------------------------------------------------------------

 ; enum MarsError_Results mask (bitfield)
errm_Mars       EQU 1                  ; MarsError status (d0.w)
                                         ;
                                         ; Bitmask
                                         ; R0000000 DSC000TM
                                         ;
                                         ; M=MARS ID Error (no 32x MARS TMSS string/presence)
                                         ;
errm_TV         EQU %10                ; T=TV Mode Error
                                         ; (Genesis and 32x hardware not
                                         ; matching same TV Video mode regions)
                                         ;
errm_bit2       EQU %100               ; bits 2-4 are unused
errm_bit3       EQU %1000
errm_bit4       EQU %10000
errm_Chksum     EQU %100000            ; C=Check Sum Error
                                         ; (Calculated checksum
                                         ; does not meet expected)
                                         ;
errm_SQER       EQU %1000000           ; S=Security error
                                         ;
errm_SDER       EQU %10000000          ; D=SDRAM Self Check Error
                                         ; Bad 32x SDRAM
                                         ;
errm_bit8        EQU %100000000         ; Bits 8-E are unused
errm_bit9        EQU %1000000000
errm_bitA        EQU %10000000000
errm_bitB        EQU %100000000000
errm_bitC        EQU %1000000000000
errm_bitD        EQU %10000000000000
errm_bitE        EQU %100000000000000
errm_Reset       EQU %1000000000000000  ; R=Reset type
                                         ;
                                         ; 0=Cold Start
                                         ; 1=Hot Start
; ---------------------------------------------------------------------------

; enum General bool & status consts
sccFalse        EQU 0                  ; scc opcode False result
False           EQU 0                  ; Boolean false (bit)
True            EQU 1                  ; Boolean true (bit)
sccTrue         EQU $FF                ; scc opcode True result

; ---------------------------------------------------------------------------

; enum Interrupt stuff
v_vbla_opcode   EQU $FFFFC030          ; VBlank opcode (word)
v_vbla_addr     EQU $FFFFC032          ; VBlank addr (long)
v_hbla_opcode   EQU $FFFFC036          ; HBlank opcode (word)
v_hbla_addr     EQU $FFFFC038          ; HBlank opcode (long)

; ---------------------------------------------------------------------------

; enum Joypad Stuff (width 1 byte)
JPad3Btn        EQU 0                  ; 3-button controller
JpadCfg_1       EQU 0                  ; Config type 1
JPad6Btn        EQU 1                  ; 6-button controller
JpadCfg_2       EQU 8                  ; Config type 2
JpadNone        EQU $F                 ; Undetectable controller type https//gendev.spritesmind.net/forum/viewtopic.php?t=2948
JPadCfg_3       EQU $10                ; Config type 3
JpadCfg2P       EQU $FE                ; Upper byte of word for v_japdCfg2a
v_jpadType1     EQU $FFFFC138          ; Type of Joypad for player 1 (JPad3/6Btn or JPadNone)
v_jpadhold1ax   EQU $FFFFC13B          ; Multi-button held state for Player 1 (6-button, XYZM)
v_jpadhold1a    EQU $FFFFC13C          ; Multi-button hold state for Player 1 (3-button, SACBRLDU)
v_jpadpress1a   EQU $FFFFC13D          ; Single-button press state for Player 1 (3-button, SACBRLDU)
v_jpadhold1b    EQU $FFFFC13E          ; Duplicate of v_jpadhold1a
v_jpadpress1b   EQU $FFFFC13F          ; Duplicate of v_jpadpress1a
v_jpadType2     EQU $FFFFC148          ; Type of Joypad for player 2
v_jpadhold2ax   EQU $FFFFC14B          ; Multi-button held state for Player 2 (6-button, XYZM)
v_jpadhold2     EQU $FFFFC14C          ; Multi-button hold state for Player 2 (3-button, SACBRLDU)
v_jpadpress2    EQU $FFFFC14D          ; Single-button press state for Player 2 (3-button, SACBRLDU)
v_jpadCfg1a     EQU $FFFFE04C          ; JPad 1 configuration (Options Menu, word)
v_jpadCfg2a     EQU $FFFFE05C          ; JPad 2 configuration (options Menu, word)
v_jpadCfg1b     EQU $FFFFFFCE          ; Mirror of lower v_jpadCfg1a byte
v_jpadCfg2b     EQU $FFFFFFCF          ; Mirror of lower v_jpadCfg2a byte, but without JPadCfg2P flag

; ---------------------------------------------------------------------------

; enum Joypad input masks 3btn (bitfield)
btn3_Up         EQU 1
btn3_Dn         EQU %10
btn3_L          EQU %100
btn3_R          EQU %1000
btn3_B          EQU %10000
btn3_C          EQU %100000
btn3_A          EQU %1000000
btn3_Start      EQU %10000000

; ---------------------------------------------------------------------------

; enum Joypad input bits 3btn (width 1 byte)
bit3_Up         EQU 0
bit3_Dn         EQU 1
bit3_L          EQU 2
bit3_R          EQU 3
bit3_B          EQU 4
bit3_C          EQU 5
bit3_A          EQU 6
bit3_Start      EQU 7

; ---------------------------------------------------------------------------

; enum Joypad input masks 6btn (bitfield)
btn6_Z          EQU 1
btn6_Y          EQU %10
btn6_X          EQU %100
btn6_Mode       EQU %1000

; ---------------------------------------------------------------------------

; enum Joypad input bits 6btn (width 1 byte)
bit6_Z          EQU 0
bit6_Y          EQU 1
bit6_X          EQU 2
bit6_Mode       EQU 3

; ---------------------------------------------------------------------------

; enum Cheat flags (width 1 byte)
amyCode         EQU $19710117          ; Amy cheat code value
debuglvlCode    EQU $19711004          ; Debug/LevelSelect cheat code value
v_debugLvlCode  EQU $FFFFD662          ; Colortest 32x CRAM buffer for Debug/Level select code
v_amyCode       EQU $FFFFD664          ; Colortest 32x CRAM buffer for Amy code
f_debugcheat    EQU $FFFFFFEC          ; Debug cheat flag
f_amySndTest    EQU $FFFFFFED          ; Amy cameo in Sound Test flag
f_levselcheat   EQU $FFFFFFEE          ; LevelSelect cheat flag

; ---------------------------------------------------------------------------

; enum GameMode IDs
id_Sega         EQU 0
id_Title        EQU 8
id_GM_Unk1      EQU $10
id_Level        EQU $18
id_Special      EQU $20
id_Ending       EQU $28
id_LvlSel       EQU $30
id_Demo         EQU $38
id_Options      EQU $40
id_CharSel      EQU $48
id_Bonus        EQU $50
id_Level_IntroPractice EQU $58         ; Used for Introduction/Practice modes
id_DataLoad     EQU $60
id_TrainingMenu EQU $68
id_Exit         EQU $70
id_GM_Unk3      EQU $78
v_gamemode      EQU $FFFFDFDE          ; Current gamemode

; ---------------------------------------------------------------------------

; enum Level stats and demos
MaxDemo         EQU 5                  ; Max amount of autodemos
v_rings         EQU $FFFFE008          ; Rings (word)
v_score         EQU $FFFFE00A          ; Score (long)
v_time          EQU $FFFFE010          ; Level time in frames (word)
v_chRings       EQU $FFFFE01A          ; Current Special Stage/Chaos Ring count (word)
v_btnpushtime2  EQU $FFFFFD28          ; Time (in frames) for the current demo button (1 byte)
v_demo_btn      EQU $FFFFFD29          ; Demo button (1 byte)
v_demo_btnAddr  EQU $FFFFFD2A          ; Address of current demo button data frame
v_demonum       EQU $FFFFFFD0          ; 0-based ID of current autoplay demo (byte)

; ---------------------------------------------------------------------------

; enum id_Options submodes
id_GMOpt_Opt    EQU 0                  ; Options menu root
id_GMOpt_SndTest1 EQU 4                ; SndTest 1
id_GMOpt_ClrTest EQU 8                 ; Color Test
id_GMOpt_SndTest2 EQU $C               ; Duplicate of SndTest1
v_gamesubmode   EQU $FFFFDFE0          ; Game submode (word)

; ---------------------------------------------------------------------------

; enum id_CharSel Submodes
id_GMCharSel_Menu2P EQU $10            ; Combi Select submenu (2P)

; ---------------------------------------------------------------------------

; enum id_level layout data
v_lvllayout     EQU $FFFFC1FE          ; Current uncomp level layout data
v_128x128p      EQU $FFFFC202          ; Current uncomp 128x128 primary chunk mappings.
v_16x16p        EQU $FFFFC206          ; Current uncomp 16x16 primary block mappings
v_128x128s      EQU $FFFFC242          ; Current uncomp 128x128 secondary chunk mappings.
v_16x16s        EQU $FFFFC246          ; Current uncomp 16x16 secondary block mappings

; ---------------------------------------------------------------------------

; enum cambounds (width 2 bytes)
v_screenposx    EQU $FFFFC1DE          ; FG/screen x-position (word)
v_limitright1   EQU $FFFFC1E6          ; Screenpos x right limit (word)
v_limitleft1    EQU $FFFFC1E8          ; Screenpos x left limit (word)
v_limitbtm1     EQU $FFFFC1EA          ; Screenpos y btm limit (word)
v_limittop1     EQU $FFFFC1EC          ; Screenpos y top limit (word)
v_screenposy    EQU $FFFFC1EE          ; FG/screen y-position (word)
v_screenposx_target EQU $FFFFDFE8      ; Target position for FG/screen x-position movement (word)
v_screenposy_target EQU $FFFFDFEA      ; Target position for FG/screen y-position movement (word)

; ---------------------------------------------------------------------------

; enum Palette and player stuff (width 1 byte)
pal32x_null     EQU $FFFF
v_pal_buffer    EQU $FFFFD460          ; Primary buffer for CRAM palette entries (long, length $40 words)
v_pal_buffer2   EQU $FFFFD560          ; Secondary buffer for CRAM palette entries (long, length $40 words)
                                        ; Loaded only when a level is loaded,
                                        ; also copied to v_pal_buffer when bonus stage ends)
v_player1_T2Ptr EQU $FFFFE034          ; Player 1 Ptr to OST Table 2 (word)
v_player2_T2Ptr EQU $FFFFE036          ; Player 2 Ptr to OST Table 2 (word)
v_player1_hi    EQU $FFFFE038          ; Char ID*4 for Player 1 (word, see Character types IDs)
v_player1_lo    EQU $FFFFE039          ; Low byte
v_player2_hi    EQU $FFFFE03A          ; Char ID*4 for Player 2 (word, see Character types IDs)
v_player2_lo    EQU $FFFFE03B          ; Low byte
v_player_SSBS   EQU $FFFFE048          ; Char ID*4 for Player (word,
                                        ; in v_gamemode = id_Special/id_Bonus gamemodes,
                                        ; see Character types IDs)
; ---------------------------------------------------------------------------

; enum Character type IDs x 4 (width 1 byte)
chr_MightyP     EQU 0
chr_WechniaP    EQU 4
chr_KnucklesP   EQU 8
chr_CharmyP     EQU $C
chr_VectorP     EQU $10
chr_BombP       EQU $14
chr_HeavyP      EQU $18
chr_EspioP      EQU $1C

; ---------------------------------------------------------------------------

; enum Character type IDs (width 1 byte)
chr_Mighty      EQU 0
chr_Wechnia     EQU 1
chr_Knuckles    EQU 2
chr_Charmy      EQU 3
chr_Vector      EQU 4
chr_Bomb        EQU 5
chr_Heavy       EQU 6
chr_Espio       EQU 7

; ---------------------------------------------------------------------------

; enum Level and SRAM stuff (width 4 bytes)
v_SaveFile_ID_NoSave EQU $7FFF         ; Constant for mask/no-save SRAM ID variant
SaveFile_MaxTime EQU $9EFB             ; Max time attack time for SRAM entries
v_zone_hi       EQU $FFFFDFF2          ; Current Zone ID (Word, see Zone IDs)
v_zone_lo       EQU $FFFFDFF3
v_act_hi        EQU $FFFFDFF4          ; Current Act (0-6, word)
v_act_lo        EQU $FFFFDFF5
v_tod_hi        EQU $FFFFDFF6          ; Current Time-of-Day (TOD, word, see
v_tod_lo        EQU $FFFFDFF7
v_gameProg1:    EQU $FFFFDFFE
v_gameProg2:    EQU $FFFFE000
v_gameProg3:    EQU $FFFFE002
v_SaveFile_ID   EQU $FFFFE01C          ; Game Save file ID. 1-based in menu, 0-based in game.
                                       ; $FFFF = No Save; otherwise file ID
v_SaveFile_Data1 EQU $FFFFE216         ; Cache for Save File 1 data (training/load game menus)
v_SaveFile_Data2 EQU $FFFFE226         ; Cache for Save File 2 data
v_SaveFile_Data3 EQU $FFFFE236         ; Cache for Save File 3 data
v_SaveFile_Data EQU $FFFFFA00          ; RAM address where current loaded SRAM save game
                                        ; is cached into RAM.
                                        ;
                                        ; Size (SRAMEnd-SRAMStart)/0x02 bytes
                                        ;
v_curSong       EQU $FFFFFCFC          ; Current level Song ID (byte).
                                        ; Used for restoration after Bonus Stages etc
v_numCBtnPress  EQU $FFFFFD36          ; Number of C button presses (word, for player jumps/actions) within the team.
                                        ; Zero presses gives a Secret Bonus at end of level
f_SaveMode      EQU $FFFFFD38          ; How this save file should be saved (sccFalse = Autosave, sccTrue = Manual)

; ---------------------------------------------------------------------------

; enum Zone IDs (width 1 byte)
id_bbz          EQU 0                  ; Botanic Base Zone
id_ssz          EQU 1                  ; Speed Slider Zone
id_aaz          EQU 2                  ; Amazing Arena Zone
id_ttz          EQU 3                  ; Techno Tower Zone
id_mmz          EQU 4                  ; Marina Madness Zone
id_iiz_tut      EQU 5                  ; Isolated Island Zone (Tutorial)
id_iiz_intro    EQU 6                  ; Isolated Island Zone (Introduction).
                                        ; Act 5 is practice tutorial (TOD then is used as lesson ID)
                                        ; See enum TOD for lesson ID breakdown
id_we           EQU 7                  ; World Entrance
                                        ;
                                        ; LoadLevelStuff routine within id_Level gamemode tends
                                        ; to temporarily use various WE act/tod combos to
                                        ; change music for various events
                                        ;
                                        ; Act 0/1 = Normal/Metal Sonic boss World Entrance (WE_M/D/S/N songs)
                                        ; Act 2 = MS Kai Final Boss
                                        ; Act 3 = Bonus Stage
                                        ; Act 5 Sunset = SEGA Screen (silence)
id_notused      EQU 8                  ; Not used. Act 0=Credits
;id_bonus        EQU 9                  ; Bonus stages
;id_special      EQU $A                 ; Special Stages

; ---------------------------------------------------------------------------

; enum TOD IDs (width 1 byte)
id_tod_m        EQU 0                  ; Morning
id_tod_mlit     EQU 1                  ; Morning (AAZ Lit)
id_tod_d        EQU 2                  ; Day
id_tod_dlit     EQU 3                  ; Day (AAZ Lit)
id_tod_s        EQU 4                  ; Sunset
id_tod_slit     EQU 5                  ; Sunset (AAZ Lit)
id_tod_n        EQU 6                  ; Night
id_tod_nlit     EQU 7                  ; Night (AAZ Lit)

; ---------------------------------------------------------------------------

; enum lesson IDs for Practice level
id_lsn1         EQU 0                  ; Practice mode is id_iiz_intro zone acts 5 & 6
                                        ; 4 lessons for act 5, 3 for act 6
                                        ; Each lesson increment is +=2 for v_tod variable
                                        ; 5 = Standard Buttons, 6 = Throw to ledge
id_lsn2         EQU 2                  ; 5 = Charge forward, 6 = Band up to ledge
id_lsn3         EQU 4                  ; 5 = Charge backwards, 6 = Band up to ledge 2
id_lsn4         EQU 6                  ; 5 = Throw, 6 = invalid

; ---------------------------------------------------------------------------

; enum player variables (width 2 bytes)
v_rubberband    EQU $FFFFFCEA          ; Bitfield status for rubber band/team stuff (byte,
                                        ; see Rubberband bits/masks)
; ---------------------------------------------------------------------------
; enum Rubberband bit masks (bitfield)
rbm_Active_Player2 EQU 1
rbm_TwoPlayer   EQU %10
rbm_Active_Player1 EQU %100
rbm_Pow_CombineRing EQU %1000
rbm_CantMove    EQU %10000
rbm_CantPause   EQU %100000
rbm_Unk         EQU %1000000
rbm_DemoCtrl    EQU %10000000

; ---------------------------------------------------------------------------

; enum Rubberband bits
rbb_Active_Player1 EQU 0               ; Set if Player is active
rbb_TwoPlayer   EQU 1                  ; Set if 2P control
rbb_Active_Player2 EQU 2               ; Set if Combi partner is active
rbb_Pow_CombineRing EQU 3              ; Set if Combine Ring powerup active
rbb_CantMove    EQU 4                  ; Primarily used for WE Act2 (MS Kai Boss cutscene)
rbb_CantPause   EQU 5                  ; Can't pause (primarily used for Title Cards and Boss Cutscenes)
rbb_Unk         EQU 6                  ; Unknown bit
rbb_DemoCtrl    EQU 7                  ; Set if players are being controlled by autodemo data

; ---------------------------------------------------------------------------

; enum Common Obj Stuff (width 1 byte)
v_Obj_E026      EQU $FFFFE026          ; Something to do with decaching/deleting object if OOB? (Word)
v_objspace      EQU $FFFFE02C          ; Ptr to object variable space addr ($40 bytes per object) (many bytes)
v_objspace_singleton EQU $FFFFE02E     ; Ptr to Singleton Object variable space addr
v_ObjLimit_Left EQU $FFFFE08C          ; Left xpos viewport for objpos bounds (word)
v_ObjLimit_Top  EQU $FFFFE08E          ; Top ypos viewport for objpos bounds (word)
v_ObjLimit_Right EQU $FFFFE090         ; Right xpos viewport for objpos bounds (word)
v_ObjLimit_Btm  EQU $FFFFE092          ; Bottom ypos viewport for objpos bounds (word)
v_ObjPos_Ptr    EQU $FFFFE09C          ; Ptr to current level's ObjPos data addr (long)
v_ObjPos_Index  EQU $FFFFE0A0          ; Index into v_ObjPos_Ptr for leftmost onscreen object (word)
v_ObjPos_Cache  EQU $FFFFE0A2          ; Cache for current level's ObjPos data (long, $100 bytes)
; ---------------------------------------------------------------------------
; enum Common OST Constants (width 1 byte)
obLLPtr         EQU 0                  ; OST Linked-List allocator chain ptr (word)
obSST_02_Hi     EQU 2                  ; Cache word offset? Word $02 (hi byte)
obSST_02_Lo     EQU 3                  ; Cache word offset? Word $02 (lo byte)
obSST_04_Hi     EQU 4                  ; Word $04 (upper byte). Appears to be to set 32x prio (svdp_bitmap_mode)
obSST_04_Lo     EQU 5                  ; Word $04 (lower byte). Appears to be to set 32x prio (svdp_bitmap_mode)
obType_Hi       EQU 6                  ; object Type (upper byte of word, S1)
obType_Lo       EQU 7                  ; object Type (lower byte of word, S1)
obX_Hi          EQU 8                  ; x-axis position (upper byte of word, S1)
obX_Lo          EQU 9                  ; x-axis position (lower byte of word, S1)
obY_Hi          EQU $C                 ; y-axis position (upper byte of word, S1)
obY_Lo          EQU $D                 ; x-axis position (lower byte of word, S1)
obArt_Bank      EQU $10                ; 32x Art Bank ID (word)
obScreenX_Hi    EQU $14                ; x-axis screen position (upper byte of word, S1)
obScreenX_Lo    EQU $15                ; x-axis screen position (lower byte of word, S1)
obScreenY_Hi    EQU $16                ; y-axis screen position (upper byte of word, S1)
obScreenY_Lo    EQU $17                ; y-axis screen position (lower byte of word, S1)
obArt_Frame     EQU $20                ; 32x Art frame in Bank ID (word)
obSubtype_Hi    EQU $28                ; object subtype (upper byte of word, S1)
obSubtype_Lo    EQU $29                ; object subtype (lower byte of word, S1)
; ---------------------------------------------------------------------------
; enum obArt_Bank IDs
AP3_Mighty      EQU 0                  ; See SonED2 ROMulan split.txt extraction, and SH2 disasm
                                        ; for what 32x art file data is contained in which banks/purpose of each banks
AP3_Wechnia     EQU 1
AP3_Knuckles    EQU 2
AP3_Charmy      EQU 3
AP3_Vector      EQU 4
AP3_Bomb        EQU 5
AP3_Heavy       EQU 6
AP3_Espio       EQU 7
AP3_Mighty_ArmHandRing EQU 8
AP3_Wechnia_ArmHandRing EQU 9
AP3_Knuckles_ArmHandRing EQU $A
AP3_Charmy_ArmHandRing EQU $B
AP3_Vector_ArmHandRing EQU $C
AP3_Bomb_ArmHandRing EQU $D
AP3_Heavy_ArmHandRing EQU $E
AP3_Espio_ArmHandRing EQU $F
AP3_Bank10      EQU $10
AP3_LvlGlbl     EQU $11
AP3_Monitor     EQU $12
AP3_HUD_Lvl     EQU $13
AP3_BBZ_Ens1    EQU $14
AP3_SSZ_Mosqui  EQU $15
AP3_MS_Intro1   EQU $16
AP3_SSZ_Spikeball EQU $17
AP3_BBZ_Boss    EQU $18
AP3_MS_Intro2   EQU $19
AP3_WE_LvlIcons1 EQU $1A
AP3_BBZ_Ens2    EQU $1B
AP3_EnParts_Explos EQU $1C
AP3_RBand       EQU $1D
AP3_Bank1E      EQU $1E
AP3_MMZ_Ens1    EQU $1F
AP3_Explosions  EQU $20
AP3_MMZ_Ens2    EQU $21
AP3_MMZ_BG      EQU $22
AP3_MiscGlbl    EQU $23
AP3_MiscEnd     EQU $24
AP3_BBZ_Objs    EQU $25
AP3_BS_Objs     EQU $26
AP3_Knuckles_SS EQU $27
AP3_TTZ_Objs    EQU $28
AP3_AAZ_Objs1   EQU $29
AP3_SSZ_Ens     EQU $2A                ; !@ Loop chunk obj!
AP3_MMZ_Objs    EQU $2B
AP3_MMZ_Boss    EQU $2C
AP3_TTZ_Ens     EQU $2D
AP3_IIZ_Objs1   EQU $2E
AP3_IIZ_Objs2   EQU $2F
AP3_SegaLogo    EQU $30
AP3_BBZ_BossCut EQU $31
AP3_MMZ_Ens3    EQU $32
AP3_MMZ_BossCut EQU $33
AP3_BBZ_BG1     EQU $34
AP3_BBZ_BG2     EQU $35
AP3_AAZ_Ens1    EQU $36
AP3_TTZ_Boss    EQU $37
AP3_AAZ_MiniBoss EQU $38
AP3_AAZ_Ens2    EQU $39
AP3_Bank3A      EQU $3A
AP3_AAZ_BossCut EQU $3B
AP3_AAZ_Objs2   EQU $3C
AP3_AAZ_Objs3   EQU $3D
AP3_TutHUD      EQU $3E
AP3_TTZ_BossCut EQU $3F
AP3_LevelTCs    EQU $40
AP3_Heavy_SS    EQU $41
AP3_Mighty_SS   EQU $42
AP3_Vector_SS   EQU $43
AP3_Bomb_SS     EQU $44
AP3_SSZ_BossCut EQU $45
AP3_Charmy_SS   EQU $46
AP3_Espio_SS    EQU $47
AP3_AAZ_Ens3    EQU $48
AP3_AAZ_Boss    EQU $49
AP3_GotThrough  EQU $4A
AP3_WE_MSBoss   EQU $4B
AP3_Bank4B      EQU $4C
AP3_SS_HUD      EQU $4D
AP3_SS_CRingR   EQU $4E
AP3_SS_Objs     EQU $4F
AP3_Space1      EQU $50                ; This is the checker pattern for most menus (File sel, Training, CharSel, etc)
AP3_Space2      EQU $51                ; Space BG sprites for Sega, Gameover screens
AP3_Ring32x     EQU $52
AP3_BigRing     EQU $53
AP3_TSChars     EQU $54
AP3_TS          EQU $55
AP3_SSZ_Boss    EQU $56
AP3_Eggman_JPack EQU $57
AP3_WE_CombiCatcher EQU $58
AP3_WE_Signs    EQU $59
AP3_WE_Boss     EQU $5A
AP3_WE_Claw     EQU $5B
AP3_WE_LvlIcons2 EQU $5C
AP3_WE_LvlIcons3 EQU $5D
AP3_WE_LvlStatus EQU $5E
AP3_CRings      EQU $5F
AP3_SSZ_Objs    EQU $60
AP3_Bank60      EQU $61
AP3_SSZ_Elevator EQU $62
AP3_SSZ_UFO     EQU $63
AP3_Bank63      EQU $64
AP3_Bank64      EQU $65
AP3_SSZ_Bell    EQU $66
AP3_SSZ_Plunger EQU $67
AP3_Bank67      EQU $68
AP3_Bank68      EQU $69
AP3_SSBumper    EQU $6A
AP3_EggmanIntro EQU $6B
AP3_IntroMosqui EQU $6C
AP3_Bank6C      EQU $6D
AP3_TailsBiPlane EQU $6E
AP3_SuperSonic  EQU $6F
AP3_EndingPlane EQU $70
AP3_MSKai       EQU $71
AP3_InvinStars  EQU $72
AP3_Bank73      EQU $73
AP3_Bank74      EQU $74
AP3_Bank75      EQU $75
AP3_Bank76      EQU $76
AP3_Bank77      EQU $77
AP3_Bank78      EQU $78
AP3_Bank79      EQU $79
AP3_Bank7A      EQU $7A
AP3_Bank7B      EQU $7B
AP3_Bank7C      EQU $7C
AP3_Bank7D      EQU $7D
AP3_Bank7E      EQU $7E
AP3_Bank7F      EQU $7F
Art32x_DREQ_SrcDefault EQU $D45E       ; Default constant value for Art32x_DREQ_Src
                                        ; (Points to Art32x_DREQ_Dest)
ArtPtr32X_Offset EQU $2000000
Art32x_DREQ_Src EQU $FFFFD01E          ; 32x DREQ Source address variable
Art32x_DREQ_Dest EQU $FFFFD45E         ; 32x DREQ dest address variable
f_DREQ_Success  EQU $FFFFFCE7          ; Some flag that is set when DREQ successfully completed (SH2DREQSend)
; ---------------------------------------------------------------------------
; enum obType IDs (width 4 bytes)
objID_Monitor   EQU $10C
objID_Spring    EQU $164
objID_Signpost  EQU $1C8
; ---------------------------------------------------------------------------

; enum Player specific OST constants Table1 (width 1 byte)
obChrT1_Tbl2    EQU $3A                ; Ptr to OST Table 2 for players

; ---------------------------------------------------------------------------

; enum Player specific OST constants Table2
obChrT2_05      EQU 5
obChrT2_PowStatus EQU $30              ; Powerup status bitfield (see obChrT2_PowStatus masks/bits)
obChrT2_PowTimer_Invin EQU $32         ; Invin timer (from PowTimer to $0; $0 == no invin; Each new box adds PowTimer)
obChrT2_PowTimer_Shoes EQU $34         ; Speed shoes timer (from PowTimer to $0; $0 == no speed shoes; each new box adds PowTimer; the song speed is B0)
obChrT2_PowTimer_CharChng EQU $36      ; Character Change monitor FX
obChrT2_PowTimer_SizeTimer EQU $38     ; Timer for size powerups
objChrT2_PowChar_3A EQU $3A            ; !@ Needs research
PowShoes_SongSpeed EQU $B0             ; Constant tempo value for sped up music (speed shoes)
PowTimer        EQU $4B0               ; Constant value for powerup timers
Pow_CombiCatcher EQU $FFFFFDD7         ; Powerup for easy Combi Catcher claw game (byte, sccFalse/True)
Pow_LevelSel_Roulette EQU $FFFFFDD8    ; Powerup for easy LevelSelect roulette (byte, sccFalse/True)

; ---------------------------------------------------------------------------
; enum obChrT2_PowStatus masks (bitfield)
psm_Shield      EQU 1
psm_Size        EQU $1000
; ---------------------------------------------------------------------------
; enum obChrT2_PowStatus bits
psb_Shield      EQU 0                  ; Shield enabled bit
psb_Size        EQU 3                  ; Size powerup bit. 1=shrunken, 0=grown. Only checked when obChrT2_PowTimer_SizeTimer != 0
; ---------------------------------------------------------------------------
; enum bgm IDs (width 1 byte)
bgm_Null        EQU 0
bgm_IIZ         EQU 1
bgm_TTZ         EQU 2
bgm_SSZ         EQU 3
bgm_MMZ         EQU 4
bgm_BBZ         EQU 5
bgm_AAZ_Lit     EQU 6
bgm_AAZ         EQU 7
bgm_AAZ_MiniBoss EQU 8
bgm_WE_M        EQU 9
bgm_WE_D        EQU $A
bgm_WE_S        EQU $B
bgm_WE_N        EQU $C
bgm_IntroCutscene EQU $D
bgm_Title       EQU $E
bgm_CharSel     EQU $F
bgm_Practice    EQU $10
bgm_IIZ_Intro   EQU $11
bgm_Invincible  EQU $12
bgm_Gameover    EQU $13
bgm_Special     EQU $14
bgm_TTZ_Boss    EQU $15
bgm_SSZ_Boss    EQU $16
bgm_MMZ_Boss    EQU $17
bgm_BBZ_Boss    EQU $18
bgm_AAZ_Boss    EQU $19
bgm_Bonus       EQU $1A
bgm_WE_Roulette EQU $1B
bgm_WE_Boss     EQU $1C
bgm_WE_Clawgame EQU $1D
bgm_SGTut_Menus EQU $1E
bgm_GotThrough  EQU $1F
bgm_CharGet     EQU $20
bgm_WE_Roulette_Decision EQU $21
bgm_GotThrough2 EQU $22
bgm_BossCutscene EQU $23
bgm_WE_BossFinal EQU $24
bgm_MetalSonic  EQU $25
bgm_AllCRings   EQU $26
bgm_CreditsBad  EQU $27
bgm_CreditsGood EQU $28
bgm_WE_Roulette_Decision2nd EQU $29
; ---------------------------------------------------------------------------
; enum sfx IDs (width 1 byte)
sfx_Bomb        EQU $2A                ; Bomb-sound sfx (various uses)
sfx_Skid        EQU $2B                ; Player skidding (S1)
sfx_RingLoss    EQU $2C                ; Ring Loss (S1)
sfx_RingLeft    EQU $2D                ; Ring (Left, S1)
sfx_BreakItem   EQU $2E                ; Item break/enemy kill (S1)
sfx_Spring      EQU $2F                ; Spring (S1)
sfx_Lamppost    EQU $30                ; Lamppost (S1)
sfx_PixelPlatCollapse EQU $31          ; Collasping of pixel platform, other uses
sfx_BBZ_Boss_Earthquake EQU $32        ; Earthquake (BBZ boss, other uses)
sfx_SSRing      EQU $33                ; Special Stage ring enter (S1)
sfx_Error       EQU $34                ; Buzzer SFX (S2 but better)
sfx_ClockTick   EQU $35                ; Clock tick (AAZ Lit)
sfx_MetalSonic_Dash EQU $36            ; Metal Sonic dashing around
sfx_TTZ_GirderFan EQU $37              ; TTZ Girder fan (other uses)
sfx_WE_ClawGame_CharSquish EQU $38     ; Squishing of char while in Combi Catcher (WE)
sfx_WE_LvlSel_Roulette EQU $39         ; WE Level Roulette beeps
sfx_Bumper      EQU $3A                ; Bumper (S1)
sfx_BombsDrop   EQU $3B                ; TTZ Carry bomb drop (various other uses)
sfx_Teleport    EQU $3C                ; Dash from spindash (S1)
sfx_AAZClock_Radar EQU $3D             ; Radar for AAZ Clock
sfx_AAZClock_Radar2 EQU $3E            ; Higher-pitched variant sfx_AAZClock_Radar. !@ Unused?
sfx_BreakItem2  EQU $3F                ; Like sfx_BreakItem, but no reverb/flatter
sfx_HitBoss     EQU $40                ; Boss hit sfx
sfx_WallSmash   EQU $41                ; Collasping platform noise from S1, various other uses
sfx_Signpost    EQU $42                ; Signpost spin/get all limits in SS
sfx_CombiThrow  EQU $43                ; Throw combi partner
sfx_SS_WallHit  EQU $44                ; Hit 3D wall in SS
sfx_KnucklesWallClimb EQU $45          ; Knuckles wall cling
sfx_BSRing      EQU $46                ; Bonus Stage ring
sfx_SSCourseOut EQU $47                ; Special Stage Course Out
sfx_WE_ClawGame_Start EQU $48          ; 2-note jingle when starting WE Claw Game
sfx_Electric    EQU $49                ; Electric SFX (BBZ Boss/other uses)
sfx_Switch1     EQU $4A                ; Switch SFX 1 (S1)
sfx_Bell        EQU $4B                ; SSZ Bell ding-dong
sfx_4C          EQU $4C                ; !@ Unknown, unused
sfx_4D          EQU $4D                ; !@ Something to do with bosses or cutscenes
sfx_TTZ_Drill   EQU $4E                ; TTZ Drill vehicle whirr
sfx_TTZ_Drilling EQU $4F               ; TTZ Drilling into walls
sfx_AAZLit_Filmstrip EQU $50           ; AAZ Lit filmstrip animation ticks
sfx_TTZCutscene_Claw EQU $51           ; Thumpy whir/placement of boss arena (TTZ Boss cutscene, other uses)
sfx_Balloon     EQU $52                ; SSZ Balloon noise, various other uses
sfx_AAZ_UFO     EQU $53                ; AAZ UFO flight
sfx_Shield      EQU $54                ; Powerup shield (S1)
sfx_MightyWallJump EQU $55             ; Mighty walljump sfx (other uses)
sfx_Switch2     EQU $56                ; Switch SFX 2 (S1)
sfx_57          EQU $57                ; !@ Unknown, unused
sfx_Death       EQU $58                ; Death of a player (S1)/hit wall in BS (various other uses)
sfx_Shrink      EQU $59                ; Shrink powerdown
sfx_Grow        EQU $5A                ; Grow powerup
sfx_VectorADash EQU $5B                ; Vector Air Dash (various other uses)
sfx_Jingle_ACrings EQU $5C             ; Jingle when getting all Chaos Rings
sfx_5D          EQU $5D                ; !@ Unknown, unused (variant of sfx_SSLimitGet?)
sfx_SSLimitGet  EQU $5E                ; Limit get (Special Stage)
sfx_Jump        EQU $5F                ; Jump SFX (Sonic CD FM-styled)
sfx_Cash        EQU $60                ; Cash register SFX (level results, S1)
sfx_WE_ClawGame_CharSquish_WhirrDone EQU $61 ; Final whirr for WE ClawGame Combi Catcher
sfx_WE_ClawGame_Whirr EQU $62          ; Whirr for WE Claw Game (various other uses)
sfx_BBZ_Elevator EQU $63               ; BBZ Elevator (other uses)
sfx_MMZ_Ships   EQU $64                ; MMZ Ships whirr
sfx_CombiChange EQU $65                ; Combi change sfx (powerups, other uses)
sfx_SSZ_UFO     EQU $66                ; SSZ UFO whirr
sfx_WE_ClawGame_Whirr2 EQU $67         ; Whirr2 for WE Claw Game (various other uses)
sfx_WE_MSBoss_EnterRoulette EQU $68    ; Metal Sonic boss enterring roulette (other uses)
sfx_RingRight   EQU $69                ; Ring (Right, S1)
sfx_sfxLoopStop EQU $6A                ; Stops looping SFX
sfx_Jingle_SegaBeta EQU $6B            ; !@ Unused Beta Sega Jingle
sfx_Spindash    EQU $6C                ; Spindash chargeup (S1). No pitch shifting
sfx_ExitSS      EQU $6D                ; Same SFX/usage as S1's sfx_EnterSS, but only used when exiting SS after getting Chaos Ring
sfx_AAZ_Suction EQU $6E                ; Suction sfx for AAZ Tubes (hard to trigger)
v_ring_speaker  EQU $FFFFFCE6          ; Current pan of the ring sound; positive is left, negative/zero is right.