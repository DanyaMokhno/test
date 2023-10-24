	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w8, #1
	stur	w8, [x29, #-8]
	mov	w8, #2
	stur	w8, [x29, #-12]
	mov	w8, #3
	stur	w8, [x29, #-16]
	sturb	wzr, [x29, #-17]
	ldurb	w8, [x29, #-17]
	tbz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_6
LBB0_2:
	mov	w8, #56
	sturb	w8, [x29, #-18]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #5
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-8]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	w8, [x29, #-12]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-16]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #24]
	ldur	w8, [x29, #-8]
	mul	w8, w8, w9
	stur	w8, [x29, #-8]
	ldr	w9, [sp, #24]
	ldur	w8, [x29, #-12]
	mul	w8, w8, w9
	stur	w8, [x29, #-12]
	ldr	w9, [sp, #24]
	ldur	w8, [x29, #-16]
	mul	w8, w8, w9
	stur	w8, [x29, #-16]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB0_3
LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\320\262\321\213\320\262\320\276\320\264\n"

l_.str.1:                               ; @.str.1
	.asciz	"%i\t%i\t%i\n"

.subsections_via_symbols
