;@A D	 *4>HR\+p
; Z-1________ -0

	.subttl "SSCDLS.S:  Display Lists"
; Z-1________ -0

;_______ Display Lists ___________________________

; (presently at $5000, requires page boundary, <=512 bytes)
;  .macro header address,palette,width,hpos	 
;  .macro xheader address,palette,width,hpos,wm,ind

; Palette 0 is for sky, mountains - blue and greys
; Palette 1-5 are for the playfield - greens
; Palette 6 is for the Motorcycle   - greys
; Palette 7 is for the display readouts - bright colors

sky:
        header LABEL06,0,2,4
	    nullhdr

clouds:
	    header LABEL04,2,6,40
	    header LABEL04,2,6,110
	    nullhdr

field:
        header LABEL06,1,1,4		;temporary
	    nullhdr

mountains:
	    header LABEL07,0,11,0 	;place holder graphics here
	    header LABEL09,0,13,42	;will eventually be a complete
	    header LABEL07,0,11,94	;circular panorama.
	    header LABEL09,0,13,138	
	    nullhdr

bike0:	       		; Upper bike left & right
        header LABEL00,6,19,4
	    header LABEL02,6,19,80
        nullhdr
bike1:			; Upper mid bike left & right
        header LABEL05,6,19,4
	    header LABEL08,6,19,80
        nullhdr
bike2:			; Lower mid bike left & right
        header LABEL0A,6,19,4
        header LABEL0C,6,19,80
        nullhdr
bike3:		     	; Lower bike left & right
        header LABEL0E,6,19,4    
        header LABEL10,6,19,80    
        nullhdr

alpha1:			; Alphabet 8 point
	    header LABEL0F,7,13,24
	    header LABEL11,7,13,75
	    nullhdr


; Z-1________ -0
                                                                                                                                                                                                                   