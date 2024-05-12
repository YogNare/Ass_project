### SECTION: .text
rsect _main_c_41

memset: ext
SEQUENCE_PTR: ext
SEQUENCE_LEN: ext
BALANCE_BOT: ext
DISPLAY_BALANCE_BOT: ext
BALANCE_PLAYER: ext
DISPLAY_BALANCE_PL: ext
BID_BOT: ext
DISPLAY_BID_BOT: ext
BID_PLAYER: ext
DISPLAY_BID_PL: ext
COMB1: ext
COMB2: ext
WHO_WIN: ext
SUIT_VALUE: ext
HAND1: ext
HAND2: ext
ROUND: ext
FOLD: ext
RD_WR: ext
COMMAND: ext
BID_COMMAND: ext
THREE_CARD_PL: ext
PRINT_FOUR_CARD_PL: ext
PRINT_FIVE_CARD_PL: ext
PRINT_BOT_CARD: ext


macro movens/2
push $1
pop $2
mend

delay>                                  # -- Begin function delay
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-6
	ssw	r0, -2
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB0_1
__LBB0_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -4
	lsw	r1, -2
	cmp	r0, r1
	bge	__LBB0_4
	br	__LBB0_2
__LBB0_2:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB0_3
__LBB0_3:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB0_1
__LBB0_4:
	addsp	6
	pop	fp
	rts
                                        # -- End function
display_num>                            # -- Begin function display_num
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-2
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -24576
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 88
	stw	r1, r0
	ldi	r0, -24320
	stw	r2, r0
	ldi	r0, 78
	stw	r1, r0
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, DISPLAY_BALANCE_BOT
	stw	r1, r0
	ldi	r0, 5
	ssw	r0, -2                          # 2-byte Folded Spill
	jsr	delay
	lsw	r0, -2                          # 2-byte Folded Reload
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	ldi	r2, DISPLAY_BALANCE_PL
	stw	r2, r1
	jsr	delay
	lsw	r0, -2                          # 2-byte Folded Reload
	ldi	r1, BID_BOT
	ldw	r1, r1
	ldi	r2, DISPLAY_BID_BOT
	stw	r2, r1
	jsr	delay
	lsw	r0, -2                          # 2-byte Folded Reload
	ldi	r1, BID_PLAYER
	ldw	r1, r1
	ldi	r2, DISPLAY_BID_PL
	stw	r2, r1
	jsr	delay
	addsp	2
	pop	fp
	rts
                                        # -- End function
analysis>                               # -- Begin function analysis
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-82
	ldi	r1, COMB1
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, COMB2
	stw	r1, r0
	ldi	r1, 50
	ssw	r1, -2
	ldi	r1, -58
	add	r1, fp, r1
	ldi	r2, 2
	stw	r1, r2, r0
	ssw	r0, -58
	ldi	r1, -62
	add	r1, fp, r1
	stw	r1, r2, r0
	ssw	r0, -62
	ssw	r0, -64
	br	__LBB2_1
__LBB2_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -64
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_4
	br	__LBB2_2
__LBB2_2:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -64
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r0, 0
	stw	r1, r2, r0
	lsw	r1, -64
	shl	r1, r2, 1
	ldi	r1, -54
	add	r1, fp, r1
	stw	r1, r2, r0
	br	__LBB2_3
__LBB2_3:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -64
	add	r0, 1
	ssw	r0, -64
	br	__LBB2_1
__LBB2_4:
	ldi	r0, 0
	ssw	r0, -66
	br	__LBB2_5
__LBB2_5:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -66
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB2_20
	br	__LBB2_6
__LBB2_6:                               #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB2_8
	br	__LBB2_7
__LBB2_7:                               #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	lsw	r1, -2
	sub r0, r1, r0
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r1
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_8:                               #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB2_10
	br	__LBB2_9
__LBB2_9:                               #   in Loop: Header=BB2_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_10:                              #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB2_12
	br	__LBB2_11
__LBB2_11:                              #   in Loop: Header=BB2_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_12:                              #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB2_14
	br	__LBB2_13
__LBB2_13:                              #   in Loop: Header=BB2_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_14:                              #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB2_16
	br	__LBB2_15
__LBB2_15:                              #   in Loop: Header=BB2_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_16:                              #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB2_18
	br	__LBB2_17
__LBB2_17:                              #   in Loop: Header=BB2_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_19
__LBB2_18:                              #   in Loop: Header=BB2_5 Depth=1
	br	__LBB2_19
__LBB2_19:                              #   in Loop: Header=BB2_5 Depth=1
	lsw	r0, -66
	add	r0, 1
	ssw	r0, -66
	br	__LBB2_5
__LBB2_20:
	ldi	r0, 0
	ssw	r0, -68
	br	__LBB2_21
__LBB2_21:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -68
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB2_36
	br	__LBB2_22
__LBB2_22:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB2_24
	br	__LBB2_23
__LBB2_23:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -2
	sub r0, r1, r0
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r1
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_24:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB2_26
	br	__LBB2_25
__LBB2_25:                              #   in Loop: Header=BB2_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_26:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB2_28
	br	__LBB2_27
__LBB2_27:                              #   in Loop: Header=BB2_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_28:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB2_30
	br	__LBB2_29
__LBB2_29:                              #   in Loop: Header=BB2_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_30:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB2_32
	br	__LBB2_31
__LBB2_31:                              #   in Loop: Header=BB2_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_32:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB2_34
	br	__LBB2_33
__LBB2_33:                              #   in Loop: Header=BB2_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB2_35
__LBB2_34:                              #   in Loop: Header=BB2_21 Depth=1
	br	__LBB2_35
__LBB2_35:                              #   in Loop: Header=BB2_21 Depth=1
	lsw	r0, -68
	add	r0, 1
	ssw	r0, -68
	br	__LBB2_21
__LBB2_36:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_41
	br	__LBB2_37
__LBB2_37:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_41
	br	__LBB2_38
__LBB2_38:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_41
	br	__LBB2_39
__LBB2_39:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_41
	br	__LBB2_40
__LBB2_40:
	ldi	r0, 1
	ssw	r0, -62
	br	__LBB2_41
__LBB2_41:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_46
	br	__LBB2_42
__LBB2_42:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_46
	br	__LBB2_43
__LBB2_43:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_46
	br	__LBB2_44
__LBB2_44:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB2_46
	br	__LBB2_45
__LBB2_45:
	ldi	r0, -62
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB2_46
__LBB2_46:
	ldi	r0, 0
	ssw	r0, -70
	br	__LBB2_47
__LBB2_47:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -70
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_89
	br	__LBB2_48
__LBB2_48:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_63
	br	__LBB2_49
__LBB2_49:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB2_59
	br	__LBB2_50
__LBB2_50:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_59
	br	__LBB2_51
__LBB2_51:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_59
	br	__LBB2_52
__LBB2_52:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_59
	br	__LBB2_53
__LBB2_53:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_59
	br	__LBB2_54
__LBB2_54:
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_58
	br	__LBB2_55
__LBB2_55:
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB2_57
	br	__LBB2_56
__LBB2_56:
	ldi	r1, COMB1
	ldi	r0, 9
	stw	r1, r0
	br	__LBB2_89
__LBB2_57:
	ldi	r1, COMB1
	ldi	r0, 8
	stw	r1, r0
	br	__LBB2_89
__LBB2_58:
	ldi	r1, COMB1
	ldi	r0, 4
	stw	r1, r0
	br	__LBB2_89
__LBB2_59:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_61
	br	__LBB2_60
__LBB2_60:                              #   in Loop: Header=BB2_47 Depth=1
	ldi	r1, COMB1
	ldi	r0, 5
	stw	r1, r0
	br	__LBB2_61
__LBB2_61:                              #   in Loop: Header=BB2_47 Depth=1
	br	__LBB2_62
__LBB2_62:                              #   in Loop: Header=BB2_47 Depth=1
	br	__LBB2_63
__LBB2_63:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB2_65
	br	__LBB2_64
__LBB2_64:
	ldi	r1, COMB1
	ldi	r0, 7
	stw	r1, r0
	br	__LBB2_89
__LBB2_65:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_77
	br	__LBB2_66
__LBB2_66:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -72
	br	__LBB2_67
__LBB2_67:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -72
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_74
	br	__LBB2_68
__LBB2_68:                              #   in Loop: Header=BB2_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_70
	br	__LBB2_69
__LBB2_69:
	ldi	r1, COMB1
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB2_74
__LBB2_70:                              #   in Loop: Header=BB2_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_72
	br	__LBB2_71
__LBB2_71:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB2_74
__LBB2_72:                              #   in Loop: Header=BB2_67 Depth=1
	br	__LBB2_73
__LBB2_73:                              #   in Loop: Header=BB2_67 Depth=1
	lsw	r0, -72
	add	r0, 1
	ssw	r0, -72
	br	__LBB2_67
__LBB2_74:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_76
	br	__LBB2_75
__LBB2_75:
	ldi	r1, COMB1
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_76
__LBB2_76:
	br	__LBB2_89
__LBB2_77:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_87
	br	__LBB2_78
__LBB2_78:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -74
	br	__LBB2_79
__LBB2_79:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -74
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_84
	br	__LBB2_80
__LBB2_80:                              #   in Loop: Header=BB2_79 Depth=1
	lsw	r0, -74
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_82
	br	__LBB2_81
__LBB2_81:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB2_84
__LBB2_82:                              #   in Loop: Header=BB2_79 Depth=1
	br	__LBB2_83
__LBB2_83:                              #   in Loop: Header=BB2_79 Depth=1
	lsw	r0, -74
	add	r0, 1
	ssw	r0, -74
	br	__LBB2_79
__LBB2_84:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_86
	br	__LBB2_85
__LBB2_85:
	ldi	r1, COMB1
	ldi	r0, 3
	stw	r1, r0
	br	__LBB2_86
__LBB2_86:
	br	__LBB2_89
__LBB2_87:                              #   in Loop: Header=BB2_47 Depth=1
	br	__LBB2_88
__LBB2_88:                              #   in Loop: Header=BB2_47 Depth=1
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -70
	br	__LBB2_47
__LBB2_89:
	ldi	r0, 0
	ssw	r0, -76
	br	__LBB2_90
__LBB2_90:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -76
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_132
	br	__LBB2_91
__LBB2_91:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_106
	br	__LBB2_92
__LBB2_92:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB2_102
	br	__LBB2_93
__LBB2_93:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_102
	br	__LBB2_94
__LBB2_94:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_102
	br	__LBB2_95
__LBB2_95:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_102
	br	__LBB2_96
__LBB2_96:                              #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_102
	br	__LBB2_97
__LBB2_97:
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_101
	br	__LBB2_98
__LBB2_98:
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB2_100
	br	__LBB2_99
__LBB2_99:
	ldi	r1, COMB2
	ldi	r0, 9
	stw	r1, r0
	br	__LBB2_132
__LBB2_100:
	ldi	r1, COMB2
	ldi	r0, 8
	stw	r1, r0
	br	__LBB2_132
__LBB2_101:
	ldi	r1, COMB2
	ldi	r0, 4
	stw	r1, r0
	br	__LBB2_132
__LBB2_102:                             #   in Loop: Header=BB2_90 Depth=1
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_104
	br	__LBB2_103
__LBB2_103:                             #   in Loop: Header=BB2_90 Depth=1
	ldi	r1, COMB2
	ldi	r0, 5
	stw	r1, r0
	br	__LBB2_104
__LBB2_104:                             #   in Loop: Header=BB2_90 Depth=1
	br	__LBB2_105
__LBB2_105:                             #   in Loop: Header=BB2_90 Depth=1
	br	__LBB2_106
__LBB2_106:                             #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB2_108
	br	__LBB2_107
__LBB2_107:
	ldi	r1, COMB2
	ldi	r0, 7
	stw	r1, r0
	br	__LBB2_132
__LBB2_108:                             #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_120
	br	__LBB2_109
__LBB2_109:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -78
	br	__LBB2_110
__LBB2_110:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -78
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_117
	br	__LBB2_111
__LBB2_111:                             #   in Loop: Header=BB2_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_113
	br	__LBB2_112
__LBB2_112:
	ldi	r0, COMB2
	ldi	r2, 2
	stw	r0, r2
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB2_117
__LBB2_113:                             #   in Loop: Header=BB2_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_115
	br	__LBB2_114
__LBB2_114:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB2_117
__LBB2_115:                             #   in Loop: Header=BB2_110 Depth=1
	br	__LBB2_116
__LBB2_116:                             #   in Loop: Header=BB2_110 Depth=1
	lsw	r0, -78
	add	r0, 1
	ssw	r0, -78
	br	__LBB2_110
__LBB2_117:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_119
	br	__LBB2_118
__LBB2_118:
	ldi	r1, COMB2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_119
__LBB2_119:
	br	__LBB2_132
__LBB2_120:                             #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_130
	br	__LBB2_121
__LBB2_121:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -80
	br	__LBB2_122
__LBB2_122:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -80
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB2_127
	br	__LBB2_123
__LBB2_123:                             #   in Loop: Header=BB2_122 Depth=1
	lsw	r0, -80
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_125
	br	__LBB2_124
__LBB2_124:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB2_127
__LBB2_125:                             #   in Loop: Header=BB2_122 Depth=1
	br	__LBB2_126
__LBB2_126:                             #   in Loop: Header=BB2_122 Depth=1
	lsw	r0, -80
	add	r0, 1
	ssw	r0, -80
	br	__LBB2_122
__LBB2_127:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_129
	br	__LBB2_128
__LBB2_128:
	ldi	r1, COMB2
	ldi	r0, 3
	stw	r1, r0
	br	__LBB2_129
__LBB2_129:
	br	__LBB2_132
__LBB2_130:                             #   in Loop: Header=BB2_90 Depth=1
	br	__LBB2_131
__LBB2_131:                             #   in Loop: Header=BB2_90 Depth=1
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -76
	br	__LBB2_90
__LBB2_132:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB2_134
	br	__LBB2_133
__LBB2_133:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_134
__LBB2_134:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB2_136
	br	__LBB2_135
__LBB2_135:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB2_136
__LBB2_136:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB2_176
	br	__LBB2_137
__LBB2_137:
	ldi	r0, 12
	ssw	r0, -82
	br	__LBB2_138
__LBB2_138:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -82
	ldi	r1, 0
	cmp	r0, r1
	blt	__LBB2_175
	br	__LBB2_139
__LBB2_139:                             #   in Loop: Header=BB2_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	beq	__LBB2_141
	br	__LBB2_140
__LBB2_140:                             #   in Loop: Header=BB2_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_148
	br	__LBB2_141
__LBB2_141:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_144
	br	__LBB2_142
__LBB2_142:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_144
	br	__LBB2_143
__LBB2_143:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_176
__LBB2_144:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_147
	br	__LBB2_145
__LBB2_145:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_147
	br	__LBB2_146
__LBB2_146:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB2_176
__LBB2_147:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_173
__LBB2_148:                             #   in Loop: Header=BB2_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_156
	br	__LBB2_149
__LBB2_149:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_152
	br	__LBB2_150
__LBB2_150:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_152
	br	__LBB2_151
__LBB2_151:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_176
__LBB2_152:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_155
	br	__LBB2_153
__LBB2_153:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_155
	br	__LBB2_154
__LBB2_154:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB2_176
__LBB2_155:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_172
__LBB2_156:                             #   in Loop: Header=BB2_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 7
	cmp	r0, r1
	bne	__LBB2_164
	br	__LBB2_157
__LBB2_157:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB2_160
	br	__LBB2_158
__LBB2_158:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_160
	br	__LBB2_159
__LBB2_159:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_176
__LBB2_160:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB2_163
	br	__LBB2_161
__LBB2_161:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB2_163
	br	__LBB2_162
__LBB2_162:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB2_176
__LBB2_163:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_171
__LBB2_164:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB2_167
	br	__LBB2_165
__LBB2_165:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_167
	br	__LBB2_166
__LBB2_166:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB2_176
__LBB2_167:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB2_170
	br	__LBB2_168
__LBB2_168:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB2_170
	br	__LBB2_169
__LBB2_169:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB2_176
__LBB2_170:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_171
__LBB2_171:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_172
__LBB2_172:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_173
__LBB2_173:                             #   in Loop: Header=BB2_138 Depth=1
	br	__LBB2_174
__LBB2_174:                             #   in Loop: Header=BB2_138 Depth=1
	lsw	r0, -82
	sub	r0, 1
	ssw	r0, -82
	br	__LBB2_138
__LBB2_175:
	ldi	r1, WHO_WIN
	ldi	r0, 0
	stw	r1, r0
	br	__LBB2_176
__LBB2_176:
	addsp	82
	pop	fp
	rts
                                        # -- End function
generate_cards>                         # -- Begin function generate_cards
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-10
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, 0
	ssw	r0, -8
	ssw	r0, -10
	br	__LBB3_1
__LBB3_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -10
	ldi	r1, 9
	cmp	r0, r1
	bgt	__LBB3_7
	br	__LBB3_2
__LBB3_2:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -10
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB3_4
	br	__LBB3_3
__LBB3_3:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -10
	shl	r0, r3, 1
	ldi	r4, hand1
	ldi	r1, card_one_round
	ldw	r1, r0
	shl	r0, r0, 1
	ldi	r2, SUIT_VALUE
	ldw	r0, r2, r0
	shl	r0, r2, 1
	ldi	r5, deck
	ldi	r0, deck+1
	ldb	r2, r0, r6
	ldi	r0, hand1+1
	stb	r3, r0, r6
	ldb	r2, r5, r2
	stb	r3, r4, r2
	lsw	r2, -10
	shl	r2, r2, 1
	ldsb	r2, r0, r0
	ldi	r3, HAND1
	stw	r2, r3, r0
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB3_5
__LBB3_4:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -8
	shl	r0, r3, 1
	ldi	r4, hand2
	ldi	r1, card_one_round
	ldw	r1, r0
	shl	r0, r0, 1
	ldi	r2, SUIT_VALUE
	ldw	r0, r2, r0
	shl	r0, r2, 1
	ldi	r5, deck
	ldi	r0, deck+1
	ldb	r2, r0, r6
	ldi	r0, hand2+1
	stb	r3, r0, r6
	ldb	r2, r5, r2
	stb	r3, r4, r2
	lsw	r2, -8
	shl	r2, r2, 1
	ldsb	r2, r0, r0
	ldi	r3, HAND2
	stw	r2, r3, r0
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB3_5
__LBB3_5:                               #   in Loop: Header=BB3_1 Depth=1
	br	__LBB3_6
__LBB3_6:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB3_1
__LBB3_7:
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
	pop	fp
	rts
                                        # -- End function
bot_logic>                              # -- Begin function bot_logic
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r0, -4
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB4_2
	br	__LBB4_1
__LBB4_1:
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
	br	__LBB4_9
__LBB4_2:
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB4_8
	br	__LBB4_3
__LBB4_3:
	ldi	r0, pointer_raise
	ldw	r0, r0
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB4_7
	br	__LBB4_4
__LBB4_4:
	ldi	r0, pointer_raise
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, prob_raise
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_6
	br	__LBB4_5
__LBB4_5:
	ldi	r0, 15
	ssw	r0, -8
	lsw	r2, -8
	ldi	r1, BALANCE_BOT
	ldw	r1, r0
	sub r0, r2, r0
	stw	r1, r0
	lsw	r2, -8
	ldi	r1, BID_BOT
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	br	__LBB4_6
__LBB4_6:
	ldi	r1, pointer_raise
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB4_7
__LBB4_7:
	br	__LBB4_8
__LBB4_8:
	br	__LBB4_9
__LBB4_9:
	jsr	display_num
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -13312
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 194
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
one_round>                              # -- Begin function one_round
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-18
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r0, -4
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB5_1
__LBB5_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB5_46
	br	__LBB5_2
__LBB5_2:                               #   in Loop: Header=BB5_1 Depth=1
	ldi	r0, 0
	ssw	r0, -8
	br	__LBB5_3
__LBB5_3:                               #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	blt	__LBB5_8
	br	__LBB5_4
__LBB5_4:                               #   in Loop: Header=BB5_3 Depth=2
	lsw	r0, -4
	ldi	r1, 6001
	cmp	r0, r1
	blt	__LBB5_8
	br	__LBB5_5
__LBB5_5:                               #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, prob_fold
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_7
	br	__LBB5_6
__LBB5_6:                               #   in Loop: Header=BB5_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 1
	stw	r1, r0
	br	__LBB5_38
__LBB5_7:                               #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_8
__LBB5_8:                               #   in Loop: Header=BB5_3 Depth=2
	ldi	r1, RD_WR
	ldi	r0, 1
	stw	r1, r0
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -16192
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB5_13
	br	__LBB5_9
__LBB5_9:                               #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB5_13
	br	__LBB5_10
__LBB5_10:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -13824
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 200
	stw	r1, r0
	lsw	r0, -4
	jsr	bot_logic
	ldi	r0, BID_BOT
	ldw	r0, r0
	ldi	r1, BID_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB5_12
	br	__LBB5_11
__LBB5_11:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_3
__LBB5_12:                              #   in Loop: Header=BB5_1 Depth=1
	br	__LBB5_38
__LBB5_13:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB5_29
	br	__LBB5_14
__LBB5_14:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, BID_COMMAND
	ldw	r0, r0
	ldi	r1, 20
	cmp	r0, r1
	bgt	__LBB5_29
	br	__LBB5_15
__LBB5_15:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB5_29
	br	__LBB5_16
__LBB5_16:                              #   in Loop: Header=BB5_3 Depth=2
	lsw	r0, -8
	ldi	r1, 6
	cmp	r0, r1
	bgt	__LBB5_28
	br	__LBB5_17
__LBB5_17:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -13824
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 200
	stw	r1, r0
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
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_27
	br	__LBB5_18
__LBB5_18:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB5_20
	br	__LBB5_19
__LBB5_19:                              #   in Loop: Header=BB5_3 Depth=2
	lsw	r0, -4
	ldi	r1, 300
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB5_26
__LBB5_20:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_22
	br	__LBB5_21
__LBB5_21:                              #   in Loop: Header=BB5_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1150
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB5_25
__LBB5_22:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_24
	br	__LBB5_23
__LBB5_23:                              #   in Loop: Header=BB5_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1000
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB5_24
__LBB5_24:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_25
__LBB5_25:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_26
__LBB5_26:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_27
__LBB5_27:                              #   in Loop: Header=BB5_3 Depth=2
	jsr	display_num
	lsw	r0, -4
	jsr	bot_logic
	br	__LBB5_28
__LBB5_28:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_36
__LBB5_29:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_32
	br	__LBB5_30
__LBB5_30:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB5_32
	br	__LBB5_31
__LBB5_31:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -13824
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 200
	stw	r1, r0
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
	jsr	display_num
	lsw	r0, -4
	jsr	bot_logic
	br	__LBB5_35
__LBB5_32:                              #   in Loop: Header=BB5_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_34
	br	__LBB5_33
__LBB5_33:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 2
	stw	r1, r0
	br	__LBB5_38
__LBB5_34:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_35
__LBB5_35:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_36
__LBB5_36:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_37
__LBB5_37:                              #   in Loop: Header=BB5_3 Depth=2
	br	__LBB5_3
__LBB5_38:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB5_40
	br	__LBB5_39
__LBB5_39:
	br	__LBB5_46
__LBB5_40:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_42
	br	__LBB5_41
__LBB5_41:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -13056
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 82
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	br	__LBB5_43
__LBB5_42:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	br	__LBB5_43
__LBB5_43:                              #   in Loop: Header=BB5_1 Depth=1
	ldi	r1, ROUND
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB5_44
__LBB5_44:                              #   in Loop: Header=BB5_1 Depth=1
	br	__LBB5_45
__LBB5_45:                              #   in Loop: Header=BB5_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB5_1
__LBB5_46:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_53
	br	__LBB5_47
__LBB5_47:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_49
	br	__LBB5_48
__LBB5_48:
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -13056
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 82
	stw	r1, r0
	ldi	r0, -11008
	stw	r2, r0
	ldi	r0, 98
	stw	r1, r0
	br	__LBB5_52
__LBB5_49:
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_51
	br	__LBB5_50
__LBB5_50:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB5_51
__LBB5_51:
	br	__LBB5_52
__LBB5_52:
	br	__LBB5_61
__LBB5_53:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_60
	br	__LBB5_54
__LBB5_54:
	ldi	r0, WHO_WIN
	ldi	r1, 1
	stw	r0, r1
	ldi	r0, ROUND
	ldw	r0, r0
	cmp	r0, r1
	bne	__LBB5_56
	br	__LBB5_55
__LBB5_55:
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -13056
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 82
	stw	r1, r0
	ldi	r0, -11008
	stw	r2, r0
	ldi	r0, 98
	stw	r1, r0
	br	__LBB5_59
__LBB5_56:
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_58
	br	__LBB5_57
__LBB5_57:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB5_58
__LBB5_58:
	br	__LBB5_59
__LBB5_59:
	br	__LBB5_60
__LBB5_60:
	br	__LBB5_61
__LBB5_61:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB5_63
	br	__LBB5_62
__LBB5_62:
	ldi	r2, SEQUENCE_PTR
	ssw	r2, -14                         # 2-byte Folded Spill
	ldi	r0, -12544
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -12                         # 2-byte Folded Spill
	ldi	r0, 184
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, BID_BOT
	ldw	r0, r2
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	ldi	r0, BID_PLAYER
	ldw	r0, r2
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	jsr	display_num
	lsw	r2, -14                         # 2-byte Folded Reload
	lsw	r1, -12                         # 2-byte Folded Reload
	ldi	r0, -12288
	stw	r2, r0
	ldi	r0, 76
	stw	r1, r0
	ldi	r3, RD_WR
	ldi	r0, 1
	stw	r3, r0
	ldi	r0, -11776
	stw	r2, r0
	ldi	r0, 122
	stw	r1, r0
	ldi	r0, -11520
	stw	r2, r0
	ldi	r0, 330
	stw	r1, r0
	br	__LBB5_66
__LBB5_63:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB5_65
	br	__LBB5_64
__LBB5_64:
	ldi	r2, SEQUENCE_PTR
	ssw	r2, -18                         # 2-byte Folded Spill
	ldi	r0, -12544
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -16                         # 2-byte Folded Spill
	ldi	r0, 184
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, BID_BOT
	ldw	r0, r2
	ldi	r1, BALANCE_BOT
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	ldi	r0, BID_PLAYER
	ldw	r0, r2
	ldw	r1, r0
	add r0, r2, r0
	stw	r1, r0
	jsr	display_num
	lsw	r2, -18                         # 2-byte Folded Reload
	lsw	r1, -16                         # 2-byte Folded Reload
	ldi	r0, -12032
	stw	r2, r0
	ldi	r0, 84
	stw	r1, r0
	ldi	r3, RD_WR
	ldi	r0, 1
	stw	r3, r0
	ldi	r0, -11776
	stw	r2, r0
	ldi	r0, 122
	stw	r1, r0
	ldi	r0, -11520
	stw	r2, r0
	ldi	r0, 330
	stw	r1, r0
	br	__LBB5_65
__LBB5_65:
	br	__LBB5_66
__LBB5_66:
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	18
	pop	fp
	rts
                                        # -- End function
insert_seq_player>                      # -- Begin function insert_seq_player
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r0, -2
	ssw	r1, -4
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB6_11
	br	__LBB6_1
__LBB6_1:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB6_3
	br	__LBB6_2
__LBB6_2:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB6_10
__LBB6_3:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB6_5
	br	__LBB6_4
__LBB6_4:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB6_9
__LBB6_5:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB6_7
	br	__LBB6_6
__LBB6_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB6_8
__LBB6_7:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB6_8
__LBB6_8:
	br	__LBB6_9
__LBB6_9:
	br	__LBB6_10
__LBB6_10:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, THREE_CARD_PL
	stw	r1, r2, r0
	br	__LBB6_35
__LBB6_11:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB6_22
	br	__LBB6_12
__LBB6_12:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB6_14
	br	__LBB6_13
__LBB6_13:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB6_21
__LBB6_14:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB6_16
	br	__LBB6_15
__LBB6_15:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB6_20
__LBB6_16:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB6_18
	br	__LBB6_17
__LBB6_17:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB6_19
__LBB6_18:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB6_19
__LBB6_19:
	br	__LBB6_20
__LBB6_20:
	br	__LBB6_21
__LBB6_21:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	stw	r1, r2, r0
	br	__LBB6_34
__LBB6_22:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB6_33
	br	__LBB6_23
__LBB6_23:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB6_25
	br	__LBB6_24
__LBB6_24:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB6_32
__LBB6_25:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB6_27
	br	__LBB6_26
__LBB6_26:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB6_31
__LBB6_27:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB6_29
	br	__LBB6_28
__LBB6_28:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB6_30
__LBB6_29:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB6_30
__LBB6_30:
	br	__LBB6_31
__LBB6_31:
	br	__LBB6_32
__LBB6_32:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	stw	r1, r2, r0
	br	__LBB6_33
__LBB6_33:
	br	__LBB6_34
__LBB6_34:
	br	__LBB6_35
__LBB6_35:
	addsp	4
	pop	fp
	rts
                                        # -- End function
insert_seq_bot>                         # -- Begin function insert_seq_bot
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-4
	ssw	r0, -2
	ssw	r1, -4
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB7_2
	br	__LBB7_1
__LBB7_1:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB7_9
__LBB7_2:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB7_4
	br	__LBB7_3
__LBB7_3:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB7_8
__LBB7_4:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB7_6
	br	__LBB7_5
__LBB7_5:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB7_7
__LBB7_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB7_7
__LBB7_7:
	br	__LBB7_8
__LBB7_8:
	br	__LBB7_9
__LBB7_9:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_BOT_CARD
	stw	r1, r2, r0
	addsp	4
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-20
	ldi	r0, 0
	ssw	r0, -2
	ldi	r2, BALANCE_BOT
	ldi	r1, 2000
	stw	r2, r1
	ldi	r2, BALANCE_PLAYER
	stw	r2, r1
	ssw	r0, -4
	ssw	r0, -6
	br	__LBB8_1
__LBB8_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB8_8
	br	__LBB8_2
__LBB8_2:                               #   in Loop: Header=BB8_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 0
	ssw	r0, -12                         # 2-byte Folded Spill
	stw	r1, r0
	jsr	generate_cards
	lsw	r0, -12                         # 2-byte Folded Reload
	ldi	r1, hand_iteration
	ssw	r1, -16                         # 2-byte Folded Spill
	stw	r1, r0
	ldi	r0, 17
	ldi	r1, 24
	jsr	insert_seq_player
	ldi	r0, 13
	ldi	r1, 20
	jsr	insert_seq_bot
	lsw	r1, -16                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 34
	ldi	r1, 41
	ssw	r1, -14                         # 2-byte Folded Spill
	jsr	insert_seq_player
	ldi	r0, 30
	ldi	r1, 37
	jsr	insert_seq_bot
	lsw	r1, -16                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 51
	ldi	r1, 58
	jsr	insert_seq_player
	ldi	r0, 47
	ldi	r1, 54
	jsr	insert_seq_bot
	lsw	r1, -16                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 33
	ldi	r1, 40
	jsr	insert_seq_player
	ldi	r0, 64
	ldi	r1, 71
	jsr	insert_seq_bot
	lsw	r2, -16                         # 2-byte Folded Reload
	lsw	r0, -14                         # 2-byte Folded Reload
	ldw	r2, r1
	add	r1, 1
	stw	r2, r1
	ldi	r1, 48
	jsr	insert_seq_player
	ldi	r0, 81
	ldi	r1, 88
	jsr	insert_seq_bot
	lsw	r0, -12                         # 2-byte Folded Reload
	ldi	r1, pointer_raise
	stw	r1, r0
	ssw	r0, -8
	br	__LBB8_3
__LBB8_3:                               #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -8
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB8_6
	br	__LBB8_4
__LBB8_4:                               #   in Loop: Header=BB8_3 Depth=2
	lsw	r0, -4
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	ldi	r1, 1
	and r0, r1, r0
	lsw	r1, -8
	shl	r1, r1, 1
	ldi	r2, prob_raise
	stw	r1, r2, r0
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB8_5
__LBB8_5:                               #   in Loop: Header=BB8_3 Depth=2
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB8_3
__LBB8_6:                               #   in Loop: Header=BB8_1 Depth=1
	ldi	r0, SUIT_VALUE+12
	ldw	r0, r1
	ldi	r0, 1
	and r1, r0, r1
	ldi	r2, prob_fold
	stw	r2, r1
	ldi	r1, ROUND
	stw	r1, r0
	ldi	r1, BID_BOT
	ssw	r1, -20                         # 2-byte Folded Spill
	ldi	r0, 5
	stw	r1, r0
	ldi	r0, BID_PLAYER
	ssw	r0, -18                         # 2-byte Folded Spill
	ldi	r2, 10
	stw	r0, r2
	ldw	r1, r3
	ldi	r2, BALANCE_BOT
	ldw	r2, r1
	sub r1, r3, r1
	stw	r2, r1
	ldw	r0, r2
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r0
	sub r0, r2, r0
	stw	r1, r0
	jsr	display_num
	jsr	analysis
	ldi	r0, COMB1
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, stronger_probabilities
	ldw	r0, r1, r0
	ssw	r0, -10
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -16384
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 132
	stw	r1, r0
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	lsw	r0, -10
	jsr	one_round
	lsw	r2, -20                         # 2-byte Folded Reload
	lsw	r1, -18                         # 2-byte Folded Reload
	ldi	r0, 0
	stw	r2, r0
	stw	r1, r0
	br	__LBB8_7
__LBB8_7:                               #   in Loop: Header=BB8_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB8_1
__LBB8_8:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB8_10
	br	__LBB8_9
__LBB8_9:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10752
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 96
	stw	r1, r0
	br	__LBB8_13
__LBB8_10:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB8_12
	br	__LBB8_11
__LBB8_11:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10496
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 88
	stw	r1, r0
	br	__LBB8_12
__LBB8_12:
	br	__LBB8_13
__LBB8_13:
	ldi	r0, 0
	addsp	20
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
deck>                                   # @deck
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

stronger_probabilities>                 # @stronger_probabilities
	dc	5000                            # 0x1388
	dc	800                             # 0x320
	dc	330                             # 0x14a
	dc	120                             # 0x78
	dc	80                              # 0x50
	dc	60                              # 0x3c
	dc	45                              # 0x2d
	dc	43                              # 0x2b
	dc	40                              # 0x28
	dc	40                              # 0x28

### SECTION: .bss
hand1>                                  # @hand1
	ds	10

hand2>                                  # @hand2
	ds	10

card_one_round>                         # @card_one_round
	dc	0                               # 0x0

prob_raise>                             # @prob_raise
	ds	12

pointer_raise>                          # @pointer_raise
	dc	0                               # 0x0

prob_fold>                              # @prob_fold
	dc	0                               # 0x0

hand_iteration>                         # @hand_iteration
	dc	0                               # 0x0

end.
