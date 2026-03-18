	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z10parseRoutePKci             ; -- Begin function _Z10parseRoutePKci
	.p2align	2
__Z10parseRoutePKci:                    ; @_Z10parseRoutePKci
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_2
	b	LBB0_1
LBB0_1:
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp, #8]
	b	LBB0_2
LBB0_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ReadHTMLFilePiPKc          ; -- Begin function _Z12ReadHTMLFilePiPKc
	.p2align	2
__Z12ReadHTMLFilePiPKc:                 ; @_Z12ReadHTMLFilePiPKc
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1088
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	x0, [sp, #48]
	str	x1, [sp, #40]
	ldr	x0, [sp, #40]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fopen
	str	x0, [sp, #32]
	ldr	x8, [sp, #40]
	cbnz	x8, LBB1_2
	b	LBB1_1
LBB1_1:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_perror
	b	LBB1_6
LBB1_2:
	add	x0, sp, #56
	mov	x1, #1024                       ; =0x400
	bl	_bzero
	str	xzr, [sp, #24]
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp, #16]
	ldr	x8, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	_strlen
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	mov	w3, #0                          ; =0x0
	bl	_send
	b	LBB1_3
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x3, [sp, #32]
	add	x0, sp, #56
	mov	x2, #1024                       ; =0x400
	mov	x1, x2
	bl	_fread
	str	x0, [sp, #24]
	subs	x8, x0, #0
	b.ls	LBB1_5
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldr	x8, [sp, #48]
	ldr	w0, [x8]
	ldr	x2, [sp, #24]
	add	x1, sp, #56
	mov	w3, #0                          ; =0x0
	bl	_send
	b	LBB1_3
LBB1_5:
	ldr	x0, [sp, #32]
	bl	_fclose
	b	LBB1_6
LBB1_6:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB1_8
	b	LBB1_7
LBB1_7:
	bl	___stack_chk_fail
LBB1_8:
	add	sp, sp, #1088
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1152
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	w2, #0                          ; =0x0
	str	wzr, [sp, #84]
	str	wzr, [sp, #80]
	mov	w0, #2                          ; =0x2
	mov	w1, #1                          ; =0x1
	bl	_socket
	str	w0, [sp, #76]
	tbz	w0, #31, LBB2_2
	b	LBB2_1
LBB2_1:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_perror
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp, #84]
	b	LBB2_14
LBB2_2:
	sub	x1, x29, #40
	mov	w8, #2                          ; =0x2
	sturb	w8, [x29, #-39]
	stur	wzr, [x29, #-36]
	mov	w8, #33315                      ; =0x8223
	sturh	w8, [x29, #-38]
	ldr	w0, [sp, #76]
	mov	w2, #16                         ; =0x10
	bl	_bind
	tbz	w0, #31, LBB2_4
	b	LBB2_3
LBB2_3:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_perror
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp, #84]
	b	LBB2_14
LBB2_4:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #76]
	mov	w1, #5                          ; =0x5
	bl	_listen
	tbz	w0, #31, LBB2_6
	b	LBB2_5
LBB2_5:
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_perror
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [sp, #84]
	b	LBB2_14
LBB2_6:
	mov	x9, sp
	mov	x8, #9090                       ; =0x2382
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	b	LBB2_7
LBB2_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #80]
	cbnz	w8, LBB2_9
	b	LBB2_8
LBB2_8:                                 ;   in Loop: Header=BB2_7 Depth=1
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #80]
	b	LBB2_9
LBB2_9:                                 ;   in Loop: Header=BB2_7 Depth=1
	mov	w8, #16                         ; =0x10
	str	w8, [sp, #72]
	mov	x0, #4                          ; =0x4
	bl	_malloc
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	cbz	x8, LBB2_11
	b	LBB2_10
LBB2_10:                                ;   in Loop: Header=BB2_7 Depth=1
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	b	LBB2_11
LBB2_11:                                ;   in Loop: Header=BB2_7 Depth=1
	ldr	w0, [sp, #76]
	sub	x1, x29, #56
	add	x2, sp, #72
	bl	_accept
	ldr	x8, [sp, #64]
	str	w0, [x8]
	tbz	w0, #31, LBB2_13
	b	LBB2_12
LBB2_12:                                ;   in Loop: Header=BB2_7 Depth=1
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_perror
	b	LBB2_7
LBB2_13:                                ;   in Loop: Header=BB2_7 Depth=1
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	add	x0, sp, #88
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x1, #1024                       ; =0x400
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	_bzero
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #64]
	ldr	w0, [x8]
	mov	w3, #0                          ; =0x0
	bl	_recv
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x8, x8, #5
	str	x8, [sp, #56]
	ldr	x0, [sp, #56]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_strtok
	str	x0, [sp, #48]
	ldr	x0, [sp, #48]
	mov	w1, #1024                       ; =0x400
	bl	__Z10parseRoutePKci
	str	x0, [sp, #40]
	ldr	x8, [sp, #64]
	ldr	w0, [x8]
	bl	_close
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #64]
	bl	_free
	b	LBB2_7
LBB2_14:
	ldr	w8, [sp, #84]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_16
	b	LBB2_15
LBB2_15:
	bl	___stack_chk_fail
LBB2_16:
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	add	sp, sp, #1152
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"index"

l_.str.1:                               ; @.str.1
	.asciz	"static/index.html"

l_.str.2:                               ; @.str.2
	.asciz	"r"

l_.str.3:                               ; @.str.3
	.asciz	"Could not open file!"

l_.str.4:                               ; @.str.4
	.asciz	"HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"

l_.str.5:                               ; @.str.5
	.asciz	"The server socket was not able to be created"

l_.str.6:                               ; @.str.6
	.asciz	"could not bind server to port"

l_.str.7:                               ; @.str.7
	.asciz	"bound server to to ip and port"

l_.str.8:                               ; @.str.8
	.asciz	"could not listen to socket and ip"

l_.str.9:                               ; @.str.9
	.asciz	"Listening on port: %d\n"

l_.str.10:                              ; @.str.10
	.asciz	"The server started and is ready to handle connectins!"

l_.str.11:                              ; @.str.11
	.asciz	"a client wants to connect!"

l_.str.12:                              ; @.str.12
	.asciz	"The client could not be accepted!"

l_.str.13:                              ; @.str.13
	.asciz	"Client connected!"

l_.str.14:                              ; @.str.14
	.asciz	" "

l_.str.15:                              ; @.str.15
	.asciz	"Client Disconnected!"

.subsections_via_symbols
