; @A D	 *4>HR\+p
; Z-1________ -0

	.subttl "SSCDLI.S:  Display Line Interrupts"
; Z-1________ -0

DLI:
	sta saveA	;fast save
	inc DLICOUNT	; master DLI counter
	lda DLICOUNT
	sta WSYNC

	beq .0
	cmp #1
	beq .1
	cmp #2
	beq .2
	cmp #3
	beq .3
	cmp #4
	beq .4
	cmp #5
	beq .5
	cmp #6
	beq .6	;considerably delayed at outset, use WSYNC if necessary
	lda saveA
	rti

.0:		;30 lines above visible screen
	put #%01000000,CTRL	;COLORon,DMAon,CHAR1by,BORDERbg,TRANSon,MODE160
	put #$9F,BKGRND
	lda saveA
	rti

.1:		;base of mountains
	sta WSYNC	
	put #$C4,BKGRND
	sta WSYNC
	put #$C5,BKGRND
	sta WSYNC
	put #$B6,BKGRND	;surmounts C6 luminance error
	sta WSYNC
	inc WhirliGig    ; visible indicator, "random" if sample timed externally
	sta WSYNC
	put #$C7,BKGRND
	lda saveA
	rti
.2:		;7 scan lines below horizon
	sta WSYNC
	put #$C8,BKGRND
	lda saveA
	rti
.3:		;10 scan lines lower
	sta WSYNC
;	put #$C9,BKGRND
	lda saveA
	rti
.4:		;15 scan lines lower
	sta WSYNC
;	put #$C6,BKGRND
	lda saveA
	rti
.5:		;just above bike
	sta WSYNC
;	put #$C7,BKGRND
	 lda saveA
	 rti	
.6:		; just above text line
	sta WSYNC
	put #255,DLICOUNT	;counts to 7
	put #$10,BKGRND
	put #%01000011,CTRL	;COLORon,DMAon,CHAR1by,BORDERbg,TRANSon,MODE320ac
	lda saveA
	rti	

; Z-1________ -0
                                                                                                                                                                                