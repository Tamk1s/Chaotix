Cache32x_Full:
	;jsr		(ReadControllers).l
	;btst    #bit6_X,(v_jpadhold1ax).w;
	;beq.s   Skip1

	lea     (v_pal_buffer2).l,a1
	lea		(_32x_CRAM), a0
	moveq	#$7E,d0
	moveq	#$0000,d1
	
loop:
	move.w  (a0)+,d1
	move.w  d1,(a1)+
	dbf     d0,loop
Skip1:
	move.b  #$80,(_32x_adpCtrl_hi).l ; Start of 32x sys registers/data
	rts

Decache32x_Full:
	andi.w  #$FF,d0
	add.w   d0,d0
	move.w  d0,-(a0)

	jsr		(ReadControllers).l
	btst    #bit6_Z,(v_jpadhold1ax).w;
	beq.s   Skip2

	lea     (v_pal_buffer2).l,a0
	moveq   #$01,d1
	moveq   #$7F,d0
	jsr     (LoadAndMirrorPalette32X).l

Skip2:
	rts