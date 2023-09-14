loc_89D2F0			EQU	$0089D2F0

Spritemasker_Setup:
                move.b  obSubtype_Hi(a6),d0
                ;!@ bne.s   @skip
				btst	#7,d0
				bne.s	@skip
                ;!@ move.b  #1,obSubtype_Hi(a6)
				bset	#7,obSubtype_Hi(a6)
                move.w  #$0,obPriority_hi(a6)
                ;move.w  #0,obArt_BankHiA(a6)
                ;move.b  #3,obArt_BankLoA(a6)
                ;move.b  #$5F,obArt_BankLoB(a6)
                ;move.w  #$203,obArt_Frame_hi(a6)
				
				move.w	obSubtype_Hi(a6),d0
				andi.w	#$7FFF,d0
                move.w  d0,obWidth(a6)				
@skip:
				jmp		(loc_89D2F0).l
				rts