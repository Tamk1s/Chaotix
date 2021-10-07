; ORG at raw ROM addr $775A6 ($08F75A6), within ROM padding
; Patch longpointer at $11E2E ($891E2E) to $008F75A6 to enable object

;Object type $00BC (SonED2 obj $2F)
;Loop Chunk spritemasker
Obj_LoopChunkMasker:
                move.l  #AP3_LvlGlbl,obArt_Bank(a6) ; Load LvlGlbl 32x ArtBank
                move.w  #$1080,obSST_04_Hi(a6) 		; Set 32x sprite prio (svdp_bitmap_mode) to above MD artwork with high sprite priority $80
                move.w  obSubType_Hi(a6),d0			; Move subtypes into d0.
                lsr.w   #1,d0						; d0 = d0 >> 1
                lea     (Obj_Chunk_Frames).l,a0		; Load addr of sprite frame table into a0
                move.w  (a0,d0.w),obArt_Frame(a6) 	; Move subtypes's 32x sprite frame into SST from table 

                jsr     ChkObjectVisible			; Handle visibility of object while scrolling
                bcc.s   locret_lcm					; If on screen, skip
                jsr     DeleteObject				; If off screen, delete

locret_lcm:
                rts
; End of function Obj_LoopChunkMasker
; ---------------------------------------------------------------------------

; Table of 32x sprite frames and render flags
;(frame $11 of artbank, loop chunk sprite, formerly red ball frame $00 of bank)
								; Subtypes:
Obj_Chunk_Frames:	dc.w $1100	; $00=bottom-right (normal)
					dc.w $1102	; $04=top-right (vflip)
					dc.w $1101	; $08=bottom-left (hflip)
					dc.w $1103	; $0C=top-left (v/hflip)