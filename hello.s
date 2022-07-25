	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, #0
	str	wzr, [sp, #12]
	adrp	x9, _i@PAGE
	ldr	w8, [x9, _i@PAGEOFF]
	add	w8, w8, #456
	str	w8, [x9, _i@PAGEOFF]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_i                              ; @i
	.p2align	2
_i:
	.long	123                             ; 0x7b

.subsections_via_symbols
