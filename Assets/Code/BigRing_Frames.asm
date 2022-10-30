;dword_892902:
;	      aabbccdd
;aabb = ??
;aa = 
;bb = 
;ccdd= frame rendering
;cc = Frame

;dd = rendering flag
;		v = vflip
;		h = hflip
;		M = Positioning via child mirroring
;		M000 00vh
;$00=	0000 0000	normal rendering
;$01=	0000 0001	hflip
;$82=	1000 0010	vmirror+vflip
;$83=	1000 0011	vmirror+vflip+hflip

;Frames:
Bot0	EQU	$11
Bot1	EQU	$12
Bot2	EQU	$13
Bot3	EQU	$14
Bot4	EQU	$15
Bot5	EQU	$16
Bot6	EQU	$10

Top0	EQU	$29
Top1	EQU	$2A
Top2	EQU	$2B
Top3	EQU	$2C
Top4	EQU	$2D
Top5	EQU	$2E
Top6	EQU	$2F

;Renderflags
uWord_Top	EQU	$F000
uWord_Bot	EQU	$1000

TopNormal	EQU	$00
TopHFlip	EQU	$01
BotNormal	EQU	$80
BotHFlip	EQU	$81

RenderFrame macro uWord, frame, render	
		dc.l	(uWord<<16)|(frame<<8)|render
	endm
	
	RenderFrame	uWord_Top,Top0,TopNormal
	RenderFrame	uWord_Bot,Bot0,BotNormal
	RenderFrame	uWord_Top,Top1,TopNormal
	RenderFrame	uWord_Bot,Bot1,BotNormal
	RenderFrame	uWord_Top,Top2,TopNormal
	RenderFrame	uWord_Bot,Bot2,BotNormal
	RenderFrame	uWord_Top,Top3,TopNormal
	RenderFrame	uWord_Bot,Bot3,BotNormal
	RenderFrame	uWord_Top,Top4,TopNormal
	RenderFrame	uWord_Bot,Bot4,BotNormal
	RenderFrame	uWord_Top,Top5,TopNormal
	RenderFrame	uWord_Bot,Bot5,BotNormal
	RenderFrame	uWord_Top,Top6,TopNormal
	RenderFrame	uWord_Bot,Bot6,BotNormal
	RenderFrame	uWord_Top,Top5,TopHFlip
	RenderFrame	uWord_Bot,Bot5,BotHFlip
	RenderFrame	uWord_Top,Top4,TopHFlip
	RenderFrame	uWord_Bot,Bot4,BotHFlip
	RenderFrame	uWord_Top,Top3,TopHFlip
	RenderFrame	uWord_Bot,Bot3,BotHFlip
	RenderFrame	uWord_Top,Top2,TopHFlip
	RenderFrame	uWord_Bot,Bot2,BotHFlip
	RenderFrame	uWord_Top,Top1,TopHFlip
	RenderFrame	uWord_Bot,Bot1,BotHFlip