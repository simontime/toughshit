	title Lights Out Patch
	type  8521
	
	program
	
letter_crop_size equ 0c7h
letter_y_offset  equ 0cah

y_offs_1 equ 4c17h
y_offs_2 equ 4c20h

DrawBankGraphic equ 4ad0h

	org 4350h
; do the looping letter animation
LoopLetterAnimation:
	; T
	mov    r8,#11
	mov    r0,y_offs_1(rr2)
	mov    r9,r0
	mov    r10,#183
	mov    r11,#43
	mov    r12,#18
	mov    r13,#41
	call   DrawBankGraphic
	
	; O
	mov    r8,#29
	mov    r0,y_offs_2(rr2)
	mov    r9,r0
	mov    r10,#183
	mov    r11,#1
	mov    r12,#25
	mov    r13,#42
	call   DrawBankGraphic
	
	; U
	mov    r8,#54
	mov    r0,y_offs_1(rr2)
	mov    r9,r0
	mov    r10,#208
	mov    r11,#1
	mov    r12,#22
	mov    r13,#41
	call   DrawBankGraphic
	
	; G
	mov    r8,#76
	mov    r0,y_offs_2(rr2)
	mov    r9,r0
	mov    r10,#233
	mov    r11,#42
	mov    r12,#23
	mov    r13,#42
	call   DrawBankGraphic
	
	; H
	mov    r8,#99
	mov    r0,y_offs_1(rr2)
	mov    r9,r0
	mov    r10,#234
	mov    r11,#84
	mov    r12,#22
	mov    r13,#41
	call   DrawBankGraphic
	
	; S
	mov    r8,#121
	mov    r0,y_offs_2(rr2)
	mov    r9,r0
	mov    r10,#212
	mov    r11,#89
	mov    r12,#20
	mov    r13,#42
	call   DrawBankGraphic
	
	; H
	mov    r8,#139
	mov    r0,y_offs_1(rr2)
	mov    r9,r0
	mov    r10,#234
	mov    r11,#84
	mov    r12,#22
	mov    r13,#41
	call   DrawBankGraphic
	
	; I
	mov    r8,#161
	mov    r0,y_offs_2(rr2)
	mov    r9,r0
	mov    r10,#230
	mov    r11,#1
	mov    r12,#10
	mov    r13,#41
	call   DrawBankGraphic
	
	; T
	mov    r8,#171
	mov    r0,y_offs_1(rr2)
	mov    r9,r0
	mov    r10,#183
	mov    r11,#43
	mov    r12,#18
	mov    r13,#41
	call   DrawBankGraphic

	org 499ah
; begin the letter animation
BeginLetterAnimation:
	; T
	mov    r8,#11
	mov    r9,letter_y_offset
	mov    r10,#183
	mov    r11,#43
	add    r11,letter_crop_size
	mov    r12,#18
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; O
	mov    r8,#29
	mov    r9,letter_y_offset
	mov    r10,#183
	mov    r11,#1
	add    r11,letter_crop_size
	mov    r12,#25
	mov    r13,#42
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; U
	mov    r8,#54
	mov    r9,letter_y_offset
	mov    r10,#208
	mov    r11,#1
	add    r11,letter_crop_size
	mov    r12,#22
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; G
	mov    r8,#76
	mov    r9,letter_y_offset
	mov    r10,#233
	mov    r11,#42
	add    r11,letter_crop_size
	mov    r12,#23
	mov    r13,#42
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; H
	mov    r8,#99
	mov    r9,letter_y_offset
	mov    r10,#234
	mov    r11,#84
	add    r11,letter_crop_size
	mov    r12,#22
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; S
	mov    r8,#121
	mov    r9,letter_y_offset
	mov    r10,#212
	mov    r11,#89
	add    r11,letter_crop_size
	mov    r12,#20
	mov    r13,#42
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; H
	mov    r8,#139
	mov    r9,letter_y_offset
	mov    r10,#234
	mov    r11,#84
	add    r11,letter_crop_size
	mov    r12,#22
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; I
	mov    r8,#161
	mov    r9,letter_y_offset
	mov    r10,#230
	mov    r11,#1
	add    r11,letter_crop_size
	mov    r12,#10
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic
	
	; T
	mov    r8,#171
	mov    r9,letter_y_offset
	mov    r10,#183
	mov    r11,#43
	add    r11,letter_crop_size
	mov    r12,#18
	mov    r13,#41
	sub    r13,letter_crop_size
	call   DrawBankGraphic

	end