	.file 	"start_custom.S"

.LDRAM_OFFSET:
	.quad	_DRAM_BASE_OFFSET	/*You should add DRAM base address since __bss_end__ and __bss_start__ contains only relative address*/

.Lbss_end:
	.quad	__bss_end__

.Lbss_start:
	.quad	__bss_start__

.Lheap_end:
	.quad	_heap_end

.Lheap_start:
	.quad	_heap_start


	.global _start
_start:
	mov	x0, #0
	ldr	x1,.Lbss_start		/* calculate beginning of the BSS */
	ldr	x2,.LDRAM_OFFSET
	add	x1, x1, x2
	ldr	x2,.Lbss_end		/* calculate end of the BSS */
	ldr	x3,.LDRAM_OFFSET
	add	x2, x2, x3

.Lloop_bss:
	cmp	x1,x2
	bge	.Lenclbss		/* If no BSS, no clearing required */
	str	xzr, [x1], #8
	b	.Lloop_bss

.Lenclbss:
	ldr	x1,.Lheap_start		/* calculate beginning of the BSS */
	ldr	x2,.LDRAM_OFFSET
	add	x1, x1, x2
	ldr	x2,.Lheap_end		/* calculate end of the BSS */
	ldr	x3,.LDRAM_OFFSET
	add	x2, x2, x3

.Lloop_heap:
	cmp	x1,x2
	bge	.Lenclheap		/* If no BSS, no clearing required */
	str	xzr, [x1], #8
	b	.Lloop_heap

.Lenclheap:
	mov	x0, #0
	mov	x1, #0
	sub	sp, sp, #16		/*Save return address to stack*/
	str	x30, [sp, #8]
	bl	main
	ldr	x30, [sp, #8]
	add	sp, sp, #16
	ret
