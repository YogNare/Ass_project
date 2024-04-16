### SECTION: .text
rsect _main_c_41

DARE: ext
SUIT_VALUE: ext


macro movens/2
push $1
pop $2
mend

generate_cards>                         # -- Begin function generate_cards
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, 0
	ldi	r2, DARE
	ldi	r3, 1
	ldi	r4, 52
__LBB0_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	shl	r0, r6, 1
	ldi	r1, SUIT_VALUE
	movens	r1, r5
	add r6, r5, r1
	ldw	r6, r5, r5
	shl	r5, r5, 1
	ldw	r5, r2, r5
	cmp	r5, r3
	bne	__LBB0_7
	br	__LBB0_2
__LBB0_2:                               #   in Loop: Header=BB0_1 Depth=1
	br	__LBB0_4
__LBB0_5:                               #   in Loop: Header=BB0_4 Depth=2
	ldi	r5, 0
	stw	r1, r5
__LBB0_6:                               #   in Loop: Header=BB0_4 Depth=2
	ldw	r1, r5
	shl	r5, r5, 1
	ldw	r5, r2, r5
	cmp	r5, r3
	beq	__LBB0_4
	br	__LBB0_7
__LBB0_4:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldw	r1, r5
	add	r5, 1
	stw	r1, r5
	ldw	r1, r5
	cmp	r5, r4
	bne	__LBB0_6
	br	__LBB0_5
__LBB0_7:                               #   in Loop: Header=BB0_1 Depth=1
	ldw	r1, r5
	shl	r5, r5, 1
	stw	r5, r2, r3
	ldi	r5, 4
	cmp	r0, r5
	bhi	__LBB0_9
	br	__LBB0_8
__LBB0_8:                               #   in Loop: Header=BB0_1 Depth=1
	ldw	r1, r1
	shl	r1, r1, 1
	ldi	r5, dare
	ldb	r1, r5, r5
	ssw	r5, -8                          # 2-byte Folded Spill
	ldi	r5, dare
	add r1, r5, r1
	ldb	r1, r3, r1
	ldi	r5, hand1
	add r6, r5, r5
	stb	r5, r3, r1
	lsw	r1, -8                          # 2-byte Folded Reload
	ldi	r5, hand1
	stb	r6, r5, r1
	br	__LBB0_10
__LBB0_9:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, SUIT_VALUE
	ldw	r1, r1
	shl	r1, r1, 1
	ldi	r5, dare
	movens	r5, r6
	ldb	r1, r6, r5
	add r1, r6, r1
	ldb	r1, r3, r1
	shl	r1, r1, 8
	or r1, r5, r1
	ldi	r5, hand2
	stw	r5, r1
__LBB0_10:                              #   in Loop: Header=BB0_1 Depth=1
	add	r0, 1
	ldi	r1, 10
	cmp	r0, r1
	beq	__LBB0_3
	br	__LBB0_1
__LBB0_3:
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, 0
	ldi	r2, DARE
	ldi	r3, 1
	ldi	r4, 52
__LBB1_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	shl	r0, r6, 1
	ldi	r1, SUIT_VALUE
	movens	r1, r5
	add r6, r5, r1
	ldw	r6, r5, r5
	shl	r5, r5, 1
	ldw	r5, r2, r5
	cmp	r5, r3
	bne	__LBB1_5
	br	__LBB1_2
__LBB1_5:                               #   in Loop: Header=BB1_1 Depth=1
	ldw	r1, r5
	shl	r5, r5, 1
	stw	r5, r2, r3
	ldi	r5, 4
	cmp	r0, r5
	bhi	__LBB1_7
	br	__LBB1_6
__LBB1_6:                               #   in Loop: Header=BB1_1 Depth=1
	ldw	r1, r1
	shl	r1, r1, 1
	ldi	r5, dare
	ldb	r1, r5, r5
	ssw	r5, -8                          # 2-byte Folded Spill
	ldi	r5, dare
	add r1, r5, r1
	ldb	r1, r3, r1
	ldi	r5, hand1
	add r6, r5, r5
	stb	r5, r3, r1
	lsw	r1, -8                          # 2-byte Folded Reload
	ldi	r5, hand1
	stb	r6, r5, r1
	br	__LBB1_8
__LBB1_3:                               #   in Loop: Header=BB1_2 Depth=2
	ldi	r5, 0
	stw	r1, r5
__LBB1_4:                               #   in Loop: Header=BB1_2 Depth=2
	ldw	r1, r5
	shl	r5, r5, 1
	ldw	r5, r2, r5
	cmp	r5, r3
	beq	__LBB1_2
	br	__LBB1_5
__LBB1_2:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldw	r1, r5
	add	r5, 1
	stw	r1, r5
	ldw	r1, r5
	cmp	r5, r4
	bne	__LBB1_4
	br	__LBB1_3
__LBB1_7:                               #   in Loop: Header=BB1_1 Depth=1
	ldi	r1, SUIT_VALUE
	ldw	r1, r1
	shl	r1, r1, 1
	ldi	r5, dare
	movens	r5, r6
	ldb	r1, r6, r5
	add r1, r6, r1
	ldb	r1, r3, r1
	shl	r1, r1, 8
	or r1, r5, r1
	ldi	r5, hand2
	stw	r5, r1
__LBB1_8:                               #   in Loop: Header=BB1_1 Depth=1
	add	r0, 1
	ldi	r1, 10
	cmp	r0, r1
	bne	__LBB1_1
	br	__LBB1_9
__LBB1_9:
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
dare>                                   # @dare
	db	72                              # 0x48
	db	50                              # 0x32
	db	72                              # 0x48
	db	51                              # 0x33
	db	72                              # 0x48
	db	52                              # 0x34
	db	72                              # 0x48
	db	53                              # 0x35
	db	72                              # 0x48
	db	54                              # 0x36
	db	72                              # 0x48
	db	55                              # 0x37
	db	72                              # 0x48
	db	56                              # 0x38
	db	72                              # 0x48
	db	57                              # 0x39
	db	72                              # 0x48
	db	84                              # 0x54
	db	72                              # 0x48
	db	74                              # 0x4a
	db	72                              # 0x48
	db	81                              # 0x51
	db	72                              # 0x48
	db	75                              # 0x4b
	db	72                              # 0x48
	db	65                              # 0x41
	db	68                              # 0x44
	db	50                              # 0x32
	db	68                              # 0x44
	db	51                              # 0x33
	db	68                              # 0x44
	db	52                              # 0x34
	db	68                              # 0x44
	db	53                              # 0x35
	db	68                              # 0x44
	db	54                              # 0x36
	db	68                              # 0x44
	db	55                              # 0x37
	db	68                              # 0x44
	db	56                              # 0x38
	db	68                              # 0x44
	db	57                              # 0x39
	db	68                              # 0x44
	db	84                              # 0x54
	db	68                              # 0x44
	db	74                              # 0x4a
	db	68                              # 0x44
	db	81                              # 0x51
	db	68                              # 0x44
	db	75                              # 0x4b
	db	68                              # 0x44
	db	65                              # 0x41
	db	83                              # 0x53
	db	50                              # 0x32
	db	83                              # 0x53
	db	51                              # 0x33
	db	83                              # 0x53
	db	52                              # 0x34
	db	83                              # 0x53
	db	53                              # 0x35
	db	83                              # 0x53
	db	54                              # 0x36
	db	83                              # 0x53
	db	55                              # 0x37
	db	83                              # 0x53
	db	56                              # 0x38
	db	83                              # 0x53
	db	57                              # 0x39
	db	83                              # 0x53
	db	84                              # 0x54
	db	83                              # 0x53
	db	74                              # 0x4a
	db	83                              # 0x53
	db	81                              # 0x51
	db	83                              # 0x53
	db	75                              # 0x4b
	db	83                              # 0x53
	db	65                              # 0x41
	db	67                              # 0x43
	db	50                              # 0x32
	db	67                              # 0x43
	db	51                              # 0x33
	db	67                              # 0x43
	db	52                              # 0x34
	db	67                              # 0x43
	db	53                              # 0x35
	db	67                              # 0x43
	db	54                              # 0x36
	db	67                              # 0x43
	db	55                              # 0x37
	db	67                              # 0x43
	db	56                              # 0x38
	db	67                              # 0x43
	db	57                              # 0x39
	db	67                              # 0x43
	db	84                              # 0x54
	db	67                              # 0x43
	db	74                              # 0x4a
	db	67                              # 0x43
	db	81                              # 0x51
	db	67                              # 0x43
	db	75                              # 0x4b
	db	67                              # 0x43
	db	65                              # 0x41

### SECTION: .bss
hand1>                                  # @hand1
	ds	10

hand2>                                  # @hand2
	ds	10

end.
