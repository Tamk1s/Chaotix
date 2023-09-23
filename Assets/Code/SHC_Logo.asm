VRAMFillDouble	EQU	$008F446C
	jsr		(VRAMFillDouble).l
	jsr		(SHC_Advanced_Code).l
	rts

SHC_Advanced_Code:
	incbin	"SHC_Advanced.bin"
	 
	dc.b    %00000100               ; $80
	dc.b    %01110100               ; $81
    dc.b    ((($C000)>>$0A)&$FF)    ; $82
    dc.b    ((($A000)>>$0A)&$FF)    ; $83
    dc.b    ((($E000)>>$0D)&$FF)    ; $84
    dc.b    ((($F800)>>$09)&$FF)    ; $85
    dc.b    %00000000               ; $86
    dc.b    $20                     ; $87
    dc.b    %00000000               ; $88
    dc.b    %00000000               ; $89
    dc.b    $00                     ; $8A
    dc.b    %00000000               ; $8B
    dc.b    %10000001               ; $8C
    dc.b    ((($FC00)>>$0A)&$FF)    ; $8D
    dc.b    %00000000               ; $8E
    dc.b    $02                     ; $8F
    dc.b    %00000001               ; $90
    dc.b    $00                     ; $91
    dc.b    $00                     ; $92
    even 