; Standard Octave Pitch Equates
smpsPitch10lo		EQU	$88
smpsPitch09lo		EQU	$94
smpsPitch08lo		EQU	$A0
smpsPitch07lo		EQU	$AC
smpsPitch06lo		EQU	$B8
smpsPitch05lo		EQU	$C4
smpsPitch04lo		EQU	$D0
smpsPitch03lo		EQU	$DC
smpsPitch02lo		EQU	$E8
smpsPitch01lo		EQU	$F4
smpsPitch00			EQU	$00
smpsPitch01hi		EQU	$0C
smpsPitch02hi		EQU	$18
smpsPitch03hi		EQU	$24
smpsPitch04hi		EQU	$30
smpsPitch05hi		EQU	$3C
smpsPitch06hi		EQU	$48
smpsPitch07hi		EQU	$54
smpsPitch08hi		EQU	$60
smpsPitch09hi		EQU	$6C
smpsPitch10hi		EQU	$78

; Note Equates
nRst			EQU	$80
nC0			EQU	$81
nCs0			EQU	$82
nD0			EQU	$83
nEb0			EQU	$84
nE0			EQU	$85
nF0			EQU	$86
nFs0			EQU	$87
nG0			EQU	$88
nAb0			EQU	$89
nA0			EQU	$8A
nBb0			EQU	$8B
nB0			EQU	$8C
nC1			EQU	$8D
nCs1			EQU	$8E
nD1			EQU	$8F
nEb1			EQU	$90
nE1			EQU	$91
nF1			EQU	$92
nFs1			EQU	$93
nG1			EQU	$94
nAb1			EQU	$95
nA1			EQU	$96
nBb1			EQU	$97
nB1			EQU	$98
nC2			EQU	$99
nCs2			EQU	$9A
nD2			EQU	$9B
nEb2			EQU	$9C
nE2			EQU	$9D
nF2			EQU	$9E
nFs2			EQU	$9F
nG2			EQU	$A0
nAb2			EQU	$A1
nA2			EQU	$A2
nBb2			EQU	$A3
nB2			EQU	$A4
nC3			EQU	$A5
nCs3			EQU	$A6
nD3			EQU	$A7
nEb3			EQU	$A8
nE3			EQU	$A9
nF3			EQU	$AA
nFs3			EQU	$AB
nG3			EQU	$AC
nAb3			EQU	$AD
nA3			EQU	$AE
nBb3			EQU	$AF
nB3			EQU	$B0
nC4			EQU	$B1
nCs4			EQU	$B2
nD4			EQU	$B3
nEb4			EQU	$B4
nE4			EQU	$B5
nF4			EQU	$B6
nFs4			EQU	$B7
nG4			EQU	$B8
nAb4			EQU	$B9
nA4			EQU	$BA
nBb4			EQU	$BB
nB4			EQU	$BC
nC5			EQU	$BD
nCs5			EQU	$BE
nD5			EQU	$BF
nEb5			EQU	$C0
nE5			EQU	$C1
nF5			EQU	$C2
nFs5			EQU	$C3
nG5			EQU	$C4
nAb5			EQU	$C5
nA5			EQU	$C6
nBb5			EQU	$C7
nB5			EQU	$C8
nC6			EQU	$C9
nCs6			EQU	$CA
nD6			EQU	$CB
nEb6			EQU	$CC
nE6			EQU	$CD
nF6			EQU	$CE
nFs6			EQU	$CF
nG6			EQU	$D0
nAb6			EQU	$D1
nA6			EQU	$D2
nBb6			EQU	$D3
nB6			EQU	$D4
nC7			EQU	$D5
nCs7			EQU	$D6
nD7			EQU	$D7
nEb7			EQU	$D8
nE7			EQU	$D9
nF7			EQU	$DA
nFs7			EQU	$DB
nG7			EQU	$DC
nAb7			EQU	$DD
nA7			EQU	$DE
nBb7			EQU	$DF

; Channel IDs for SFX
cPSG1				EQU $80
cPSG2				EQU $A0
cPSG3				EQU $C0
cNoise				EQU $E0	; Not for use in S3/S&K/S3D
cFM3				EQU $03
cFM4				EQU $04
cFM5				EQU $05
cFM6				EQU $06	; Only in S3/S&K/S3D, overrides DAC
cPWM1				EQU	$18
cPWM2				EQU	$1A
cPWM3				EQU	$1C
cPWM4				EQU	$1E

; DAC Equates (S1)
dKick			EQU	$81
dSnare			EQU	$82
dTimpani		EQU	$83
dHiTimpani		EQU	$88
dMidTimpani		EQU	$89
dLowTimpani		EQU	$8A
dVLowTimpani	EQU	$8B
dFloorTimpani	EQU $8B

; !@ PSGDelta (S1->KC has 12 semitone increase between PSG)
PSGDelta	EQU	$0C

; PWM Equates (KC)
pEKick		EQU	$81
pESnare		EQU	$82
pSplashCymb	EQU	$83
pRideBell	EQU $84
pTomHi		EQU	$85
pTomMid		EQU	$86
pTomLow		EQU	$87
pEHiHat		EQU	$88
pCrashCymb	EQU $89
pClap		EQU $8A
pAKick		EQU $8B
pASnare		EQU	$8C
pBell		EQU $8D
;!@ Enum due to late PWM driver revision
pFingSnap	EQU	$8E
pFingSnapHi	EQU	$8E
pCowbell	EQU	$8F
pClickHi	EQU	$90
pClickLo	EQU	$91
pBongoHi	EQU	$92
pBongoLo	EQU	$93
pTimpaniHi	EQU	$94
pTimpaniLo	EQU	$95
pSilence	EQU $96
;!@ NEW DATA
pSega		EQU $97
pClosedHH	EQU $98
pOpenHH		EQU $99
pTomLower		EQU	$9A
pTomLowerer		EQU	$9B
pTomLowerest	EQU	$9C
pNepDada		EQU	$9D
pFingSnapLo		EQU	$9E
pOrchHitHi		EQU	$9F
pOrchHitMed		EQU	$A0
pOrchHitLo		EQU	$A1
pOrchHitLower	EQU	$A2

;!@ Crackers conversion enums. Knuckles Clackers equiv
pCra_d81	EQU	pEKick
pCra_d82	EQU	pASnare
pCra_d83	EQU	pTomHi
pCra_d84	EQU	pTomMid
pCra_d85	EQU	pTomLow

;!@ Convert ptrs to z80Ptr
; function to make a little-endian 16-bit pointer for the Z80 sound driver
;z80_ptr function x,y,((((x)|(y))<<8)&$FF00)|((((x)|(y))>>8)&$7F)|$80
;z80_ptr_neg function x,y,((((y)-(x))<<8)&$FF00)|((((y)-(x))>>8)&$7F)|$80

;!@
; macro to declare a little-endian 16-bit pointer for the Z80 sound driver
rom_ptr_z80 macro addr
	;dc.w z80_ptr(ptr,addr)
	dc.w  ((((addr)<<8)&$FF00)|(((addr)>>8)&$7F)|$80)
    endm
	
;Funciton to convert S1 tempo to S2 and then S3+
;The conversion works for all values of main tempo other than 0 — this value cannot be converted exactly between the two drivers. The conversion of main tempos from Sonic 1 to Sonic 2 can be done (approximately) with the following formula:
;S2 main tempo = floor{ [ (S1 main tempo-1) * 256 + floor(S1 main tempo/2) ] / S1 main tempo }			
;It is easy to convert between Sonic 2 and Sonic 3+ main tempo values:
;S2 main tempo = (256 - S3 main tempo) mod 256
;S3 main tempo = (256 - S2 main tempo) mod 256
tempo_conv macro tempo
		if tempo==0
			dc.b	((256 - (((256-1)*256 + (256/2)) / 256)) % 256)
		else
			dc.b	((256 - ((((tempo)-1)*256 + ((tempo)/2)) / (tempo))) % 256)
		endif
	endm
	
;!@
; macro to declare a little-endian 16-bit pointer for the Z80 sound driver
;rom_ptr_z80_neg macro ptr,addr
	;dc.w z80_ptr_neg(ptr,addr)
	;dc.w	(((((addr)-(ptr))<<8)&$FF00)|((((addr)-(ptr))>>8)&$7F)|$80)
    ;endm

; Header Macros

;!@
; Header - Set up Voice Location
;smpsHeaderVoice macro loc
smpsHeaderVoice macro loc,songstart
;songStart set *
	;dc.w	loc-songStart
	rom_ptr_z80(loc+songstart)
	endm
; Header - Set up Channel Usage	
smpsHeaderChan macro fm,psg
	if \0==2
		dc.b	fm,psg
	else
		dc.b	fm
	endif	
	endm	
	

	
smpsHeaderTempo macro div,mod
TempDiv set div
	;!@ New
	dc.b	div,mod
	endm

;!@
; Header - Set up Tempo. Mod is converted from S1 to S3 tempo
smpsHeaderTempoC macro div,mod
TempDiv set div
	dc.b	div
	tempo_conv(mod)
	endm
	
; Header - Set up DAC Channel
smpsHeaderDAC macro loc
	dc.w	loc-songStart
	dc.w	$00
	endm
	
;!@
; Header - Set up FM Channel	
;smpsHeaderFM macro loc,pitch,vol
smpsHeaderFM macro loc,songstart,pitch,vol
	;dc.w	loc-songStart
	rom_ptr_z80(loc+songstart)
	dc.b	pitch,vol
	endm

;!@	
; Header - Set up PSG Channel
;smpsHeaderPSG macro loc,pitch,vol,voice
smpsHeaderPSG macro loc,songstart,pitch,vol,null,voice
	;dc.w	loc-songStart
	rom_ptr_z80(loc+songstart)
	dc.b	pitch,vol
	;dc.w	voice
	dc.b	null,voice
	endm

;!@ 
; Header - Set up SFX Channel
;sHeaderSFX	macro play,patch,loc,pitch,vol
smpsHeaderSFX	macro play,patch,loc,pitch,vol,songstart
	dc.b play,patch
	;dc.w loc-sPointZero
	rom_ptr_z80(loc+songstart)
	dc.b pitch,vol
    endm

; Co-ord Flag Macros and Equates
; E0xx - Panning, AMS, FMS
smpsPan macro direction,amsfms
panNone set $00
panRight set $40
panLeft set $80
panCentre set $C0
panCenter set $C0 ; silly Americans :U
	;dc.b $E0,direction+amsfms
	;endm		
	if \0==2
		dc.b $E0,direction|amsfms
	else
		dc.b $E0,direction
	endif
	endm
	
; E1xx - Alter note values by xx
smpsAlterNote macro val
	dc.b	$E1,val
	endm
	
; E2xx - Unknown
smpsE2 macro val
	dc.b	$E2,val
	endm

; E3 - Return (generally used after F8)
; F9 - Return (generally used after F8)
smpsReturn macro val
	;!@
	;dc.b	$E3
	dc.b	$F9
	endm
	
; E4 - Fade in previous song (ie. 1-Up)
smpsFade macro val
	dc.b	$E4
	endm

;!@ Invalid for S3+!
; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	;Error No S3 equivalent for CF!
	dc.b	$E5,val	
	endm
	
; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$E6,val
	endm
	
; E7 - Prevent attack of next note
smpsNoAttack	EQU $E7

;!@ This may have problems, needs some convesion factor due to usage of mult by tempo div in S3+
; E8xx - Set note fill to xx
smpsNoteFill macro val		
	dc.b	$E8,(val/TempDiv)
	endm
	
;!@
; E9xx - Add xx to channel pitch
; FBxx - Add xx to channel pitch
smpsAlterPitch macro val
	;!@
	;dc.b	$E9,val
	dc.b	$FB,val
	endm
	
;!@
; EAxx - Set music tempo modifier to xx
; FF00xx - Set music tempo to xx S3
smpsSetTempoMod macro val
	;dc.b	$EA,val
	dc.b	$FF,$00,val
	endm
	
;!@
; EAxx - Set music tempo modifier to xx
; FF00xx - Set music tempo to xx S3 (TEMPO - TEMPO_SET)
smpsSetTempoModC macro val
	;dc.b	$EA,val
	dc.b $FF,$00
	tempo_conv(val)
	endm
	
;!@
; EBxx - Set music tempo divider to xx
; FF04xx - Set global tick multiplier to xx (TICK_MULT - TMULT_ALL)
smpsSetTempoDiv macro val
	;dc.b	$EB,val
TempDiv set val
	dc.b $FF,$04,val
	endm

;!@	
; ECxx - Add xx to PSG channel volume (VOLUME - VOL_NN_PSG)
;
; May need interpolation/conversion factor:
; Change volume attenuation of PSG track.
;The single parameter byte is added to track's current volume attenuation;
;anything greater than $0F (unsigned comparison) is set to $0F (silence). Also, the flutter index is reduced by 1. 
smpsSetVol macro val
	dc.b	$EC,val
	endm
	
; ED - Unknown
smpsED		EQU $ED
	
;!@ S3K= send cmd to YM2612 port; unused in S1
; EE - Stops special SFX ($D0-$D4, S1 only) and restarts overridden music track
smpsEE 		EQU $EE
	
;!@
; EFxx - Set Voice of FM channel to xx
; EFxx[yy] - Set patch id of FM channel to xx. If xx bit7 set, read from another song instead
; (INSTRUMENT - INS_C_FMP)
;smpsFMvoice macro voice
	;dc.b	$EF,voice
smpsFMvoice macro pat, song		
	;if song<>""
	if \0==2
		dc.b $EF,pat|$80,song+$81
	else
		dc.b $EF,pat
	endif
    endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$F0,wait,speed,change,step
	endm
	
smpsModSet2	macro bytes
	smpsModSet	((bytes&$FF000000)>>24),((bytes&$00FF0000)>>16),((bytes&$0000FF00)>>8),(bytes&$000000FF)
	endm
	
; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
;!@
smpsModSetC macro wait,speed,change,step
	dc.b	$F0
	;if (SonicDriverVer>=3)&&(SourceDriver<3)
		dc.b	wait+1,speed,change,(step*speed+1)&$FF
	;elseif (SonicDriverVer<3)&&(SourceDriver>=3)
		;dc.b	wait-1,speed,change,(((step==0)<<8)|step)/(((step==0)<<8)|step)-1		
	;else
		;dc.b	wait,speed,change,step
	;endif
	;dc.b	speed,change,step
	endm

;!@	
smpsModSetC2 macro bytes
	smpsModSetC	((bytes&$FF000000)>>24),((bytes&$00FF0000)>>16),((bytes&$0000FF00)>>8),(bytes&$000000FF)
	endm
	

;!@ Used very differently in S3; don't use
; F1 - Turn on Modulation
smpsModOn 	EQU $F1
; F4 - Turn off Modulation
smpsModOff 	EQU $F4

; F2 - End of channel
smpsStop macro
	dc.b	$F2
	endm
	
;!@
; F3xx - PSG waveform to xx
; S3+ only: If parameter byte is zero, the channel is converted
; back into a normal PSG channel and the noise channel is silenced.
; Otherwise, sets the PSG track to noise and sets PSG noise to parameter byte, which should be from $E0 to $E7 (inclusive). 
smpsPSGform macro form
	dc.b	$F3,form
	endm
	
; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b	$F5,voice
	endm
	
;BAD Cmpr
;if (loc<*)
	;rom_ptr_z80_neg(*-loc,songstart)
;else
	;rom_ptr_z80(loc-*-1,songstart)
;endif

;!@
; F6xxxx - Jump to xxxx
;smpsJump macro loc
smpsJump macro loc,songstart
	dc.b	$F6
	if (loc<*)
		rom_ptr_z80(loc+songstart)
	else
		rom_ptr_z80(loc+songstart)
	endif
	;dc.w	loc-*-1
	endm

;!@
; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
;smpsLoop macro index,loops,loc
smpsLoop macro index,loops,loc,songstart
	dc.b	$F7
	dc.b	index,loops
	if (loc<*)
		rom_ptr_z80(loc+songstart)
	else
		rom_ptr_z80(loc+songstart)
	endif
	;dc.w	loc-*-1
	endm

;!@
; F8xxxx - Call pattern at xxxx, saving return point
;smpsCall macro loc
smpsCall macro loc,songstart
	dc.b	$F8
	if (loc<*)
		rom_ptr_z80(loc+songstart)
	else
		rom_ptr_z80(loc+songstart)
	endif
	;dc.w	loc-*-1
	endm
	
; F9 - Unknown
smpsF9		EQU $F9

; Voices - Feedback
smpsVcFeedback macro val
vcFeedback set val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm set val
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	endm

; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 set op1
vcAM2 set op2
vcAM3 set op3
vcAM4 set op4
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	endm

; Voices - Decay Level	
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	endm

; Voices - Total Level
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	dc.b	(vcFeedback<<3)+vcAlgorithm
	dc.b	(vcDT4<<4)+vcCF4,(vcDT3<<4)+vcCF3,(vcDT2<<4)+vcCF2,(vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4,(vcRS3<<6)+vcAR3,(vcRS2<<6)+vcAR2,(vcRS1<<6)+vcAR1
	dc.b	(vcAM4<<5)+vcD1R4,(vcAM3<<5)+vcD1R3,(vcAM2<<5)+vcD1R2,(vcAM1<<5)+vcD1R1
	dc.b	vcD2R4,vcD2R3,vcD2R2,vcD2R1
	dc.b	(vcDL4<<4)+vcRR4,(vcDL3<<4)+vcRR3,(vcDL2<<4)+vcRR2,(vcDL1<<4)+vcRR1
	dc.b	vcTL4,vcTL3,vcTL2,vcTL1	
	endm	
	
;==============================================
;!@ The following CF flags/macros are KC-drive specific! 
;Rest here mostly used  to compile KC/Nat ASM files for BC purposes...

;!@
; Header - Set up a secondary PWM Channel
;smpsHeaderPWM macro loc
smpsHeaderPWM macro loc, songstart,pitch,volL,volR
	;dc.w	loc-songStart
	rom_ptr_z80(loc+songstart)	
	;!@
	dc.b	pitch
	if \0==4
		dc.b	volL
	else
		dc.b	(volL<<4)+volR
	endif	
	endm
	
;!@ Unused and unneeded; leftover Sonic 32x header stuff
; Header - Set up first PWM Channel
;smpsHeaderPWM1 macro loc,num
	;dc.w	loc-songStart
	;dc.b	num,0
	;endm

;!@
; Header - Set up Tick Multiplier (for Sfx)
;sHeaderSFX
smpsHeaderTick	macro tmul
	dc.b tmul
    endm

;!@ KC Exclusives!
;# PAN_ANIM
;# pan animation has 2 modes; if first arg is 0, it will end it. Otherwise, more args will be used
;!0xE4, 0 > sPanAni:;								
;!0xE4, 1-0xFF > sPanAni: .lb, .db, .db, .db, .db;	
KC_smpsPanAni macro val1,val2,val3,val4,val5
	if val1==0
		dc.b	$E4,$00
	else
		dc.b	$E4,val1,val2,val3,val4,val5
	endif
	endm


; Alter Volume
;!0xE5 > saVolFMP: .db, .db;								
KC_smpsFMAlterVol macro val1,val2
	dc.b	$E5,val1,val2
	endm

;!@ KC Exclusive!	
;!0xE9 > ssLFO: .db, .db;									
KC_smpsSetLFO macro enable,amsfms
	dc.b	$E9,enable,amsfms
	endm

;!0xEA > sPlayDAC: .db | 0x80;								
KC_smpsPlayDACSample macro sample
	dc.b	$EA,(sample&$7F)
	endm

;!@ Songstart param added
;!0xEB > sLoopExit: .db, .dw {						
;smpsConditionalJump macro index,loc
KC_smpsConditionalJump macro index,loc,songstart
	dc.b	$EB
	dc.b	index
	;dc.w	z80_ptr(loc)
	rom_ptr_z80(loc+songstart)
	endm

;!@ Usage/naming is speculative. Called ssTransposeS3K in S3k/Nat driver...	
;!0xED > sYMcmd: .db, .db;							
; Set note values to xx-$40
KC_smpsSetNote macro val
	dc.b	$ED,val
	endm

;!0xEE > sYM1cmd: .db, .db;							
KC_smpsFMICommand macro reg,val
	dc.b	$EE,reg,val
	endm

;!0xF1 > sModEnv: .db, .db {							
; Set Modulation
KC_smpsModChange2 macro fmmod,psgmod
	dc.b	$F1,fmmod,psgmod
	endm
	
;!0xF4 > sModEnv: .db {
; Set Modulation
KC_smpsModChange macro val
	dc.b	$F4,val
	endm

;!@ KC exclusive!
;!0xFC > sPitchSlide: .db;						
KC_smpsPitchSlide macro enable
	dc.b	$FC,enable
	endm
	
;!0xFD > sRawFreq: .db;							
KC_smpsAlternateSMPS macro flag
	dc.b	$FD,flag
	endm

;!0xFE > sSpecFM3: .db, .db, .db, .db {			
	;%; Broken?
;}
KC_smpsFM3SpecialMode macro ind1,ind2,ind3,ind4
	dc.b	$FE,ind1,ind2,ind3,ind4
	Error Broken?
	endm

;!0xFF, 1 > sPlaySound: .db;						
KC_smpsPlaySound macro index
	dc.b	$FF,$01,index
	endm

;!0xFF, 2 > sMusPause: .db;						
KC_smpsHaltMusic macro flag
	dc.b	$FF,$02,flag
	endm

;!@ Modified with SongStart	param
;!0xFF, 3 > sCopyMem: .dw, .db {					
	;%; No song should ever use this command. It may good idea to remove it.
;}
;KC_smpsCopyData macro data,len
KC_smpsCopyData macro data,len,songstart
	Error Coord. Flag to copy data should not be used. Complain to GenesisDoes if any music uses it.
	;Error No song should ever use this command. It may be a good idea to remove it.
	dc.b	$FF,$03
	;dc.w	little_endian(data)
	rom_ptr_z80(data+songstart)
	dc.b	len
	endm

;!0xFF, 5 > sSSGEG: .db, .db, .db, .db {			
	;=op2 .a2
	;:=2 .a1
	;:=1 \op2\
;}
KC_smpsSSGEG macro op1,op2,op3,op4
	dc.b	$FF,$05,op1,op3,op2,op4
	endm
	
	
;!0xFF, 6 > sVolEnvFM: .db, .db {
	;:?0 {
		;?volenv;
	;}
;}	
KC_smpsFMVolEnv macro tone,mask
	dc.b	$FF,$06,tone,mask
	endm
;==============================================

