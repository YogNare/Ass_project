### SECTION: .text
rsect _main_c_41

DARE: ext
SUIT_VALUE: ext
COMMAND: ext
BID_PLAYER: ext
BID_BOT: ext
BALANCE_BOT: ext
COMB1: ext
RAUND: ext
RD_WR: ext
BID_COMMAND: ext
BALANCE_PLAYER: ext
FOLD_PLAYER: ext


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
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB0_1
__LBB0_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lsw	r0, -6
	ldi	r1, 9
	cmp	r0, r1
	bgt	__LBB0_12
	br	__LBB0_2
__LBB0_2:                               #   in Loop: Header=BB0_1 Depth=1
	br	__LBB0_3
__LBB0_3:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -6
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	shl	r0, r0, 1
	ldi	r1, DARE
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_7
	br	__LBB0_4
__LBB0_4:                               #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -6
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	add	r0, 1
	lsw	r2, -6
	shl	r2, r2, 1
	stw	r2, r1, r0
	lsw	r0, -6
	shl	r0, r0, 1
	ldw	r0, r1, r0
	ldi	r1, 52
	cmp	r0, r1
	blt	__LBB0_6
	br	__LBB0_5
__LBB0_5:                               #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -6
	shl	r0, r1, 1
	ldi	r2, SUIT_VALUE
	ldi	r0, 0
	stw	r1, r2, r0
	br	__LBB0_6
__LBB0_6:                               #   in Loop: Header=BB0_3 Depth=2
	br	__LBB0_3
__LBB0_7:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, 0
	ssw	r0, -8
	lsw	r0, -6
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	shl	r0, r1, 1
	ldi	r2, DARE
	ldi	r0, 1
	stw	r1, r2, r0
	lsw	r0, -6
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB0_9
	br	__LBB0_8
__LBB0_8:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -6
	shl	r0, r1, 1
	ldi	r2, hand1
	ldi	r0, SUIT_VALUE
	ldw	r1, r0, r0
	shl	r0, r0, 1
	ldi	r3, dare
	ldi	r4, dare+1
	ldb	r0, r4, r4
	ldi	r5, hand1+1
	stb	r1, r5, r4
	ldb	r0, r3, r0
	stb	r1, r2, r0
	br	__LBB0_10
__LBB0_9:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -8
	shl	r0, r1, 1
	ldi	r2, hand2
	ldi	r0, SUIT_VALUE
	ldw	r1, r0, r0
	shl	r0, r0, 1
	ldi	r3, dare
	ldi	r4, dare+1
	ldb	r0, r4, r4
	ldi	r5, hand2+1
	stb	r1, r5, r4
	ldb	r0, r3, r0
	stb	r1, r2, r0
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB0_10
__LBB0_10:                              #   in Loop: Header=BB0_1 Depth=1
	br	__LBB0_11
__LBB0_11:                              #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB0_1
__LBB0_12:
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
bot_first>                              # -- Begin function bot_first
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB1_3
	br	__LBB1_1
__LBB1_1:
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB1_3
	br	__LBB1_2
__LBB1_2:
	ldi	r0, BID_PLAYER
	ldw	r0, r2
	ldi	r1, BID_BOT
	ldw	r1, r3
	sub r2, r3, r2
	ssw	r2, -6
	lsw	r4, -6
	ldi	r3, BALANCE_BOT
	ldw	r3, r2
	sub r2, r4, r2
	stw	r3, r2
	ldw	r0, r0
	stw	r1, r0
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB1_10
__LBB1_3:
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_5
	br	__LBB1_4
__LBB1_4:
	ldi	r0, BID_PLAYER
	ldw	r0, r2
	ldi	r1, BID_BOT
	ldw	r1, r3
	sub r2, r3, r2
	ssw	r2, -8
	lsw	r4, -8
	ldi	r3, BALANCE_BOT
	ldw	r3, r2
	sub r2, r4, r2
	stw	r3, r2
	ldw	r0, r0
	stw	r1, r0
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB1_10
__LBB1_5:
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_7
	br	__LBB1_6
__LBB1_6:
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB1_10
__LBB1_7:
	br	__LBB1_8
__LBB1_8:
	br	__LBB1_9
__LBB1_9:
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB1_10
__LBB1_10:
	lsw	r0, -4
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                          # 2-byte Folded Spill
	ldi	r0, 0
	ssw	r0, -4
	ssw	r0, -6
	jsr	generate_cards
	ldi	r0, COMB1
	ldi	r1, 2
	stw	r0, r1
	ldi	r2, RAUND
	ldi	r1, 1
	stw	r2, r1
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, stronger_probabilities
	ldw	r0, r1, r0
	ssw	r0, -8
	br	__LBB2_1
__LBB2_1:                               # =>This Inner Loop Header: Depth=1
	ldi	r1, RD_WR
	ldi	r0, 1
	stw	r1, r0
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB2_6
	br	__LBB2_2
__LBB2_2:                               #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB2_6
	br	__LBB2_3
__LBB2_3:
	ldi	r0, raise_count
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB2_5
	br	__LBB2_4
__LBB2_4:
	lsw	r0, -8
	ldi	r1, -400
	add r0, r1, r0
	ssw	r0, -8
	br	__LBB2_5
__LBB2_5:
	jsr	bot_first
	br	__LBB2_21
__LBB2_6:                               #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_12
	br	__LBB2_7
__LBB2_7:                               #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, raise_count
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB2_9
	br	__LBB2_8
__LBB2_8:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -8
	ldi	r1, -400
	add r0, r1, r0
	ssw	r0, -8
	br	__LBB2_9
__LBB2_9:                               #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, BID_COMMAND
	ldw	r0, r3
	ldi	r2, BALANCE_PLAYER
	ldw	r2, r1
	sub r1, r3, r1
	stw	r2, r1
	ldw	r0, r2
	ldi	r1, BID_PLAYER
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	ldi	r0, raise_count
	ldw	r0, r1
	add	r1, 1
	stw	r0, r1
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	blt	__LBB2_11
	br	__LBB2_10
__LBB2_10:                              #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -8
	ldi	r1, 200
	add r0, r1, r0
	ssw	r0, -8
	br	__LBB2_11
__LBB2_11:                              #   in Loop: Header=BB2_1 Depth=1
	jsr	bot_first
	br	__LBB2_19
__LBB2_12:                              #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_15
	br	__LBB2_13
__LBB2_13:                              #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, BID_BOT
	ldw	r0, r0
	ldi	r1, BID_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB2_15
	br	__LBB2_14
__LBB2_14:                              #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, BID_BOT
	ldw	r0, r2
	ldi	r1, BID_PLAYER
	ldw	r1, r3
	sub r2, r3, r2
	ssw	r2, -10
	lsw	r4, -10
	ldi	r3, BALANCE_PLAYER
	ldw	r3, r2
	sub r2, r4, r2
	stw	r3, r2
	ldw	r0, r0
	stw	r1, r0
	br	__LBB2_18
__LBB2_15:                              #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_17
	br	__LBB2_16
__LBB2_16:
	ldi	r1, FOLD_PLAYER
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_21
__LBB2_17:                              #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_18
__LBB2_18:                              #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_19
__LBB2_19:                              #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_20
__LBB2_20:                              #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_1
__LBB2_21:
	ldi	r1, RAUND
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, 0
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
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

probabilities>                          # @probabilities
	dc	5000                            # 0x1388
	dc	4200                            # 0x1068
	dc	400                             # 0x190
	dc	200                             # 0xc8
	dc	39                              # 0x27
	dc	14                              # 0xe
	dc	2                               # 0x2
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0

stronger_probabilities>                 # @stronger_probabilities
	dc	4800                            # 0x12c0
	dc	4600                            # 0x11f8
	dc	800                             # 0x320
	dc	400                             # 0x190
	dc	200                             # 0xc8
	dc	161                             # 0xa1
	dc	147                             # 0x93
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0

### SECTION: .bss
raise_count>                            # @raise_count
	dc	0                               # 0x0

hand1>                                  # @hand1
	ds	10

hand2>                                  # @hand2
	ds	10

end.
