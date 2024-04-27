### SECTION: .text
rsect _main_c_41

COMB1: ext
COMB2: ext
WHO_WIN: ext
SUIT_VALUE: ext
HAND1: ext
HAND2: ext
BID_PLAYER: ext
BID_BOT: ext
BALANCE_BOT: ext
SEQUENCE_PTR: ext
SEQUENCE_LEN: ext
RAUND: ext
FOLD: ext
RD_WR: ext
COMMAND: ext
BID_COMMAND: ext
BALANCE_PLAYER: ext
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
	br	__LBB1_1
__LBB1_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -64
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_4
	br	__LBB1_2
__LBB1_2:                               #   in Loop: Header=BB1_1 Depth=1
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
	br	__LBB1_3
__LBB1_3:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -64
	add	r0, 1
	ssw	r0, -64
	br	__LBB1_1
__LBB1_4:
	ldi	r0, 0
	ssw	r0, -66
	br	__LBB1_5
__LBB1_5:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -66
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB1_20
	br	__LBB1_6
__LBB1_6:                               #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB1_8
	br	__LBB1_7
__LBB1_7:                               #   in Loop: Header=BB1_5 Depth=1
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
	br	__LBB1_19
__LBB1_8:                               #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB1_10
	br	__LBB1_9
__LBB1_9:                               #   in Loop: Header=BB1_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_19
__LBB1_10:                              #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB1_12
	br	__LBB1_11
__LBB1_11:                              #   in Loop: Header=BB1_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_19
__LBB1_12:                              #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB1_14
	br	__LBB1_13
__LBB1_13:                              #   in Loop: Header=BB1_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_19
__LBB1_14:                              #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB1_16
	br	__LBB1_15
__LBB1_15:                              #   in Loop: Header=BB1_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_19
__LBB1_16:                              #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB1_18
	br	__LBB1_17
__LBB1_17:                              #   in Loop: Header=BB1_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_19
__LBB1_18:                              #   in Loop: Header=BB1_5 Depth=1
	br	__LBB1_19
__LBB1_19:                              #   in Loop: Header=BB1_5 Depth=1
	lsw	r0, -66
	add	r0, 1
	ssw	r0, -66
	br	__LBB1_5
__LBB1_20:
	ldi	r0, 0
	ssw	r0, -68
	br	__LBB1_21
__LBB1_21:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -68
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB1_36
	br	__LBB1_22
__LBB1_22:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB1_24
	br	__LBB1_23
__LBB1_23:                              #   in Loop: Header=BB1_21 Depth=1
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
	br	__LBB1_35
__LBB1_24:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB1_26
	br	__LBB1_25
__LBB1_25:                              #   in Loop: Header=BB1_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_35
__LBB1_26:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB1_28
	br	__LBB1_27
__LBB1_27:                              #   in Loop: Header=BB1_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_35
__LBB1_28:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB1_30
	br	__LBB1_29
__LBB1_29:                              #   in Loop: Header=BB1_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_35
__LBB1_30:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB1_32
	br	__LBB1_31
__LBB1_31:                              #   in Loop: Header=BB1_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_35
__LBB1_32:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB1_34
	br	__LBB1_33
__LBB1_33:                              #   in Loop: Header=BB1_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB1_35
__LBB1_34:                              #   in Loop: Header=BB1_21 Depth=1
	br	__LBB1_35
__LBB1_35:                              #   in Loop: Header=BB1_21 Depth=1
	lsw	r0, -68
	add	r0, 1
	ssw	r0, -68
	br	__LBB1_21
__LBB1_36:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_41
	br	__LBB1_37
__LBB1_37:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_41
	br	__LBB1_38
__LBB1_38:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_41
	br	__LBB1_39
__LBB1_39:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_41
	br	__LBB1_40
__LBB1_40:
	ldi	r0, 1
	ssw	r0, -62
	br	__LBB1_41
__LBB1_41:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_46
	br	__LBB1_42
__LBB1_42:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_46
	br	__LBB1_43
__LBB1_43:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_46
	br	__LBB1_44
__LBB1_44:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB1_46
	br	__LBB1_45
__LBB1_45:
	ldi	r0, -62
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB1_46
__LBB1_46:
	ldi	r0, 0
	ssw	r0, -70
	br	__LBB1_47
__LBB1_47:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -70
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_89
	br	__LBB1_48
__LBB1_48:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_63
	br	__LBB1_49
__LBB1_49:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB1_59
	br	__LBB1_50
__LBB1_50:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_59
	br	__LBB1_51
__LBB1_51:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_59
	br	__LBB1_52
__LBB1_52:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_59
	br	__LBB1_53
__LBB1_53:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_59
	br	__LBB1_54
__LBB1_54:
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_58
	br	__LBB1_55
__LBB1_55:
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB1_57
	br	__LBB1_56
__LBB1_56:
	ldi	r1, COMB1
	ldi	r0, 9
	stw	r1, r0
	br	__LBB1_89
__LBB1_57:
	ldi	r1, COMB1
	ldi	r0, 8
	stw	r1, r0
	br	__LBB1_89
__LBB1_58:
	ldi	r1, COMB1
	ldi	r0, 4
	stw	r1, r0
	br	__LBB1_89
__LBB1_59:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_61
	br	__LBB1_60
__LBB1_60:                              #   in Loop: Header=BB1_47 Depth=1
	ldi	r1, COMB1
	ldi	r0, 5
	stw	r1, r0
	br	__LBB1_61
__LBB1_61:                              #   in Loop: Header=BB1_47 Depth=1
	br	__LBB1_62
__LBB1_62:                              #   in Loop: Header=BB1_47 Depth=1
	br	__LBB1_63
__LBB1_63:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB1_65
	br	__LBB1_64
__LBB1_64:
	ldi	r1, COMB1
	ldi	r0, 7
	stw	r1, r0
	br	__LBB1_89
__LBB1_65:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_77
	br	__LBB1_66
__LBB1_66:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -72
	br	__LBB1_67
__LBB1_67:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -72
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_74
	br	__LBB1_68
__LBB1_68:                              #   in Loop: Header=BB1_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_70
	br	__LBB1_69
__LBB1_69:
	ldi	r1, COMB1
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB1_74
__LBB1_70:                              #   in Loop: Header=BB1_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_72
	br	__LBB1_71
__LBB1_71:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB1_74
__LBB1_72:                              #   in Loop: Header=BB1_67 Depth=1
	br	__LBB1_73
__LBB1_73:                              #   in Loop: Header=BB1_67 Depth=1
	lsw	r0, -72
	add	r0, 1
	ssw	r0, -72
	br	__LBB1_67
__LBB1_74:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_76
	br	__LBB1_75
__LBB1_75:
	ldi	r1, COMB1
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_76
__LBB1_76:
	br	__LBB1_89
__LBB1_77:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_87
	br	__LBB1_78
__LBB1_78:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -74
	br	__LBB1_79
__LBB1_79:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -74
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_84
	br	__LBB1_80
__LBB1_80:                              #   in Loop: Header=BB1_79 Depth=1
	lsw	r0, -74
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_82
	br	__LBB1_81
__LBB1_81:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB1_84
__LBB1_82:                              #   in Loop: Header=BB1_79 Depth=1
	br	__LBB1_83
__LBB1_83:                              #   in Loop: Header=BB1_79 Depth=1
	lsw	r0, -74
	add	r0, 1
	ssw	r0, -74
	br	__LBB1_79
__LBB1_84:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_86
	br	__LBB1_85
__LBB1_85:
	ldi	r1, COMB1
	ldi	r0, 3
	stw	r1, r0
	br	__LBB1_86
__LBB1_86:
	br	__LBB1_89
__LBB1_87:                              #   in Loop: Header=BB1_47 Depth=1
	br	__LBB1_88
__LBB1_88:                              #   in Loop: Header=BB1_47 Depth=1
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -70
	br	__LBB1_47
__LBB1_89:
	ldi	r0, 0
	ssw	r0, -76
	br	__LBB1_90
__LBB1_90:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -76
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_132
	br	__LBB1_91
__LBB1_91:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_106
	br	__LBB1_92
__LBB1_92:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB1_102
	br	__LBB1_93
__LBB1_93:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_102
	br	__LBB1_94
__LBB1_94:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_102
	br	__LBB1_95
__LBB1_95:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_102
	br	__LBB1_96
__LBB1_96:                              #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_102
	br	__LBB1_97
__LBB1_97:
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_101
	br	__LBB1_98
__LBB1_98:
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB1_100
	br	__LBB1_99
__LBB1_99:
	ldi	r1, COMB2
	ldi	r0, 9
	stw	r1, r0
	br	__LBB1_132
__LBB1_100:
	ldi	r1, COMB2
	ldi	r0, 8
	stw	r1, r0
	br	__LBB1_132
__LBB1_101:
	ldi	r1, COMB2
	ldi	r0, 4
	stw	r1, r0
	br	__LBB1_132
__LBB1_102:                             #   in Loop: Header=BB1_90 Depth=1
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_104
	br	__LBB1_103
__LBB1_103:                             #   in Loop: Header=BB1_90 Depth=1
	ldi	r1, COMB2
	ldi	r0, 5
	stw	r1, r0
	br	__LBB1_104
__LBB1_104:                             #   in Loop: Header=BB1_90 Depth=1
	br	__LBB1_105
__LBB1_105:                             #   in Loop: Header=BB1_90 Depth=1
	br	__LBB1_106
__LBB1_106:                             #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB1_108
	br	__LBB1_107
__LBB1_107:
	ldi	r1, COMB2
	ldi	r0, 7
	stw	r1, r0
	br	__LBB1_132
__LBB1_108:                             #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_120
	br	__LBB1_109
__LBB1_109:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -78
	br	__LBB1_110
__LBB1_110:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -78
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_117
	br	__LBB1_111
__LBB1_111:                             #   in Loop: Header=BB1_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_113
	br	__LBB1_112
__LBB1_112:
	ldi	r0, COMB2
	ldi	r2, 2
	stw	r0, r2
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB1_117
__LBB1_113:                             #   in Loop: Header=BB1_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_115
	br	__LBB1_114
__LBB1_114:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB1_117
__LBB1_115:                             #   in Loop: Header=BB1_110 Depth=1
	br	__LBB1_116
__LBB1_116:                             #   in Loop: Header=BB1_110 Depth=1
	lsw	r0, -78
	add	r0, 1
	ssw	r0, -78
	br	__LBB1_110
__LBB1_117:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_119
	br	__LBB1_118
__LBB1_118:
	ldi	r1, COMB2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_119
__LBB1_119:
	br	__LBB1_132
__LBB1_120:                             #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_130
	br	__LBB1_121
__LBB1_121:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -80
	br	__LBB1_122
__LBB1_122:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -80
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB1_127
	br	__LBB1_123
__LBB1_123:                             #   in Loop: Header=BB1_122 Depth=1
	lsw	r0, -80
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_125
	br	__LBB1_124
__LBB1_124:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB1_127
__LBB1_125:                             #   in Loop: Header=BB1_122 Depth=1
	br	__LBB1_126
__LBB1_126:                             #   in Loop: Header=BB1_122 Depth=1
	lsw	r0, -80
	add	r0, 1
	ssw	r0, -80
	br	__LBB1_122
__LBB1_127:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_129
	br	__LBB1_128
__LBB1_128:
	ldi	r1, COMB2
	ldi	r0, 3
	stw	r1, r0
	br	__LBB1_129
__LBB1_129:
	br	__LBB1_132
__LBB1_130:                             #   in Loop: Header=BB1_90 Depth=1
	br	__LBB1_131
__LBB1_131:                             #   in Loop: Header=BB1_90 Depth=1
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -76
	br	__LBB1_90
__LBB1_132:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB1_134
	br	__LBB1_133
__LBB1_133:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_134
__LBB1_134:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB1_136
	br	__LBB1_135
__LBB1_135:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB1_136
__LBB1_136:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB1_176
	br	__LBB1_137
__LBB1_137:
	ldi	r0, 12
	ssw	r0, -82
	br	__LBB1_138
__LBB1_138:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -82
	ldi	r1, 0
	cmp	r0, r1
	blt	__LBB1_175
	br	__LBB1_139
__LBB1_139:                             #   in Loop: Header=BB1_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	beq	__LBB1_141
	br	__LBB1_140
__LBB1_140:                             #   in Loop: Header=BB1_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_148
	br	__LBB1_141
__LBB1_141:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_144
	br	__LBB1_142
__LBB1_142:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_144
	br	__LBB1_143
__LBB1_143:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_176
__LBB1_144:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB1_147
	br	__LBB1_145
__LBB1_145:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_147
	br	__LBB1_146
__LBB1_146:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB1_176
__LBB1_147:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_173
__LBB1_148:                             #   in Loop: Header=BB1_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_156
	br	__LBB1_149
__LBB1_149:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_152
	br	__LBB1_150
__LBB1_150:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_152
	br	__LBB1_151
__LBB1_151:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_176
__LBB1_152:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB1_155
	br	__LBB1_153
__LBB1_153:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_155
	br	__LBB1_154
__LBB1_154:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB1_176
__LBB1_155:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_172
__LBB1_156:                             #   in Loop: Header=BB1_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 7
	cmp	r0, r1
	bne	__LBB1_164
	br	__LBB1_157
__LBB1_157:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB1_160
	br	__LBB1_158
__LBB1_158:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_160
	br	__LBB1_159
__LBB1_159:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_176
__LBB1_160:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB1_163
	br	__LBB1_161
__LBB1_161:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB1_163
	br	__LBB1_162
__LBB1_162:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB1_176
__LBB1_163:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_171
__LBB1_164:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB1_167
	br	__LBB1_165
__LBB1_165:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_167
	br	__LBB1_166
__LBB1_166:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB1_176
__LBB1_167:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB1_170
	br	__LBB1_168
__LBB1_168:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB1_170
	br	__LBB1_169
__LBB1_169:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB1_176
__LBB1_170:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_171
__LBB1_171:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_172
__LBB1_172:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_173
__LBB1_173:                             #   in Loop: Header=BB1_138 Depth=1
	br	__LBB1_174
__LBB1_174:                             #   in Loop: Header=BB1_138 Depth=1
	lsw	r0, -82
	sub	r0, 1
	ssw	r0, -82
	br	__LBB1_138
__LBB1_175:
	ldi	r1, WHO_WIN
	ldi	r0, 0
	stw	r1, r0
	br	__LBB1_176
__LBB1_176:
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
	br	__LBB2_1
__LBB2_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -10
	ldi	r1, 9
	cmp	r0, r1
	bgt	__LBB2_7
	br	__LBB2_2
__LBB2_2:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -10
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB2_4
	br	__LBB2_3
__LBB2_3:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -10
	shl	r0, r3, 1
	ldi	r4, hand1
	ldi	r1, card_raund
	ldw	r1, r0
	shl	r0, r0, 1
	ldi	r2, SUIT_VALUE
	ldw	r0, r2, r0
	shl	r0, r2, 1
	ldi	r5, dare
	ldi	r0, dare+1
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
	br	__LBB2_5
__LBB2_4:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -8
	shl	r0, r3, 1
	ldi	r4, hand2
	ldi	r1, card_raund
	ldw	r1, r0
	shl	r0, r0, 1
	ldi	r2, SUIT_VALUE
	ldw	r0, r2, r0
	shl	r0, r2, 1
	ldi	r5, dare
	ldi	r0, dare+1
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
	br	__LBB2_5
__LBB2_5:                               #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_6
__LBB2_6:                               #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB2_1
__LBB2_7:
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
	pop	fp
	rts
                                        # -- End function
bot_first>                              # -- Begin function bot_first
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-12
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r0, -4
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB3_2
	br	__LBB3_1
__LBB3_1:
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
	br	__LBB3_9
__LBB3_2:
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB3_8
	br	__LBB3_3
__LBB3_3:
	ldi	r0, pointer_raise
	ldw	r0, r0
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB3_7
	br	__LBB3_4
__LBB3_4:
	ldi	r0, pointer_raise
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, prob_raise
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_6
	br	__LBB3_5
__LBB3_5:
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
	br	__LBB3_6
__LBB3_6:
	ldi	r1, pointer_raise
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB3_7
__LBB3_7:
	br	__LBB3_8
__LBB3_8:
	br	__LBB3_9
__LBB3_9:
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -12                         # 2-byte Folded Spill
	ldi	r0, -13312
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -10                         # 2-byte Folded Spill
	ldi	r0, 194
	stw	r1, r0
	ldi	r0, 5
	jsr	delay
	lsw	r2, -12                         # 2-byte Folded Reload
	lsw	r1, -10                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	12
	pop	fp
	rts
                                        # -- End function
raund>                                  # -- Begin function raund
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-26
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r0, -4
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB4_1
__LBB4_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB4_46
	br	__LBB4_2
__LBB4_2:                               #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, 0
	ssw	r0, -8
	br	__LBB4_3
__LBB4_3:                               #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	blt	__LBB4_8
	br	__LBB4_4
__LBB4_4:                               #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -4
	ldi	r1, 6001
	cmp	r0, r1
	blt	__LBB4_8
	br	__LBB4_5
__LBB4_5:                               #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, prob_fold
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_7
	br	__LBB4_6
__LBB4_6:                               #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 1
	stw	r1, r0
	br	__LBB4_38
__LBB4_7:                               #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_8
__LBB4_8:                               #   in Loop: Header=BB4_3 Depth=2
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
	bne	__LBB4_13
	br	__LBB4_9
__LBB4_9:                               #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB4_13
	br	__LBB4_10
__LBB4_10:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, 2
	jsr	delay
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -13824
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 200
	stw	r1, r0
	lsw	r0, -4
	jsr	bot_first
	ldi	r0, BID_BOT
	ldw	r0, r0
	ldi	r1, BID_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB4_12
	br	__LBB4_11
__LBB4_11:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_3
__LBB4_12:                              #   in Loop: Header=BB4_1 Depth=1
	br	__LBB4_38
__LBB4_13:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB4_29
	br	__LBB4_14
__LBB4_14:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, BID_COMMAND
	ldw	r0, r0
	ldi	r1, 20
	cmp	r0, r1
	bgt	__LBB4_29
	br	__LBB4_15
__LBB4_15:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB4_29
	br	__LBB4_16
__LBB4_16:                              #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -8
	ldi	r1, 6
	cmp	r0, r1
	bgt	__LBB4_28
	br	__LBB4_17
__LBB4_17:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, 2
	jsr	delay
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
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_27
	br	__LBB4_18
__LBB4_18:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB4_20
	br	__LBB4_19
__LBB4_19:                              #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -4
	ldi	r1, 300
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB4_26
__LBB4_20:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_22
	br	__LBB4_21
__LBB4_21:                              #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1150
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB4_25
__LBB4_22:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_24
	br	__LBB4_23
__LBB4_23:                              #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1000
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB4_24
__LBB4_24:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_25
__LBB4_25:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_26
__LBB4_26:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_27
__LBB4_27:                              #   in Loop: Header=BB4_3 Depth=2
	lsw	r0, -4
	jsr	bot_first
	br	__LBB4_28
__LBB4_28:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_36
__LBB4_29:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_32
	br	__LBB4_30
__LBB4_30:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB4_32
	br	__LBB4_31
__LBB4_31:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, 2
	jsr	delay
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
	lsw	r0, -4
	jsr	bot_first
	br	__LBB4_35
__LBB4_32:                              #   in Loop: Header=BB4_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_34
	br	__LBB4_33
__LBB4_33:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 2
	stw	r1, r0
	br	__LBB4_38
__LBB4_34:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_35
__LBB4_35:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_36
__LBB4_36:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_37
__LBB4_37:                              #   in Loop: Header=BB4_3 Depth=2
	br	__LBB4_3
__LBB4_38:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB4_40
	br	__LBB4_39
__LBB4_39:
	br	__LBB4_46
__LBB4_40:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_42
	br	__LBB4_41
__LBB4_41:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -14                         # 2-byte Folded Spill
	ldi	r0, -13056
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -12                         # 2-byte Folded Spill
	ldi	r0, 82
	stw	r1, r0
	ldi	r0, 5
	jsr	delay
	lsw	r2, -14                         # 2-byte Folded Reload
	lsw	r1, -12                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	br	__LBB4_43
__LBB4_42:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -18                         # 2-byte Folded Spill
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -16                         # 2-byte Folded Spill
	ldi	r0, 98
	stw	r1, r0
	ldi	r0, 5
	jsr	delay
	lsw	r2, -18                         # 2-byte Folded Reload
	lsw	r1, -16                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	br	__LBB4_43
__LBB4_43:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, RAUND
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB4_44
__LBB4_44:                              #   in Loop: Header=BB4_1 Depth=1
	br	__LBB4_45
__LBB4_45:                              #   in Loop: Header=BB4_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB4_1
__LBB4_46:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_53
	br	__LBB4_47
__LBB4_47:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_49
	br	__LBB4_48
__LBB4_48:
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
	br	__LBB4_52
__LBB4_49:
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_51
	br	__LBB4_50
__LBB4_50:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB4_51
__LBB4_51:
	br	__LBB4_52
__LBB4_52:
	br	__LBB4_61
__LBB4_53:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_60
	br	__LBB4_54
__LBB4_54:
	ldi	r0, WHO_WIN
	ldi	r1, 1
	stw	r0, r1
	ldi	r0, RAUND
	ldw	r0, r0
	cmp	r0, r1
	bne	__LBB4_56
	br	__LBB4_55
__LBB4_55:
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
	br	__LBB4_59
__LBB4_56:
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_58
	br	__LBB4_57
__LBB4_57:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB4_58
__LBB4_58:
	br	__LBB4_59
__LBB4_59:
	br	__LBB4_60
__LBB4_60:
	br	__LBB4_61
__LBB4_61:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB4_63
	br	__LBB4_62
__LBB4_62:
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -22                         # 2-byte Folded Spill
	ldi	r0, -12544
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -20                         # 2-byte Folded Spill
	ldi	r0, 184
	stw	r1, r0
	ldi	r0, 5
	jsr	delay
	lsw	r2, -22                         # 2-byte Folded Reload
	lsw	r1, -20                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, BID_BOT
	ldw	r0, r4
	ldi	r3, BALANCE_PLAYER
	ldw	r3, r0
	add r0, r4, r0
	stw	r3, r0
	ldi	r0, BID_PLAYER
	ldw	r0, r4
	ldw	r3, r0
	add r0, r4, r0
	stw	r3, r0
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
	br	__LBB4_66
__LBB4_63:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB4_65
	br	__LBB4_64
__LBB4_64:
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -26                         # 2-byte Folded Spill
	ldi	r0, -12544
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -24                         # 2-byte Folded Spill
	ldi	r0, 184
	stw	r1, r0
	ldi	r0, 5
	jsr	delay
	lsw	r2, -26                         # 2-byte Folded Reload
	lsw	r1, -24                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, BID_BOT
	ldw	r0, r4
	ldi	r3, BALANCE_BOT
	ldw	r3, r0
	add r0, r4, r0
	stw	r3, r0
	ldi	r0, BID_PLAYER
	ldw	r0, r4
	ldw	r3, r0
	add r0, r4, r0
	stw	r3, r0
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
	br	__LBB4_65
__LBB4_65:
	br	__LBB4_66
__LBB4_66:
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	26
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
	bgt	__LBB5_11
	br	__LBB5_1
__LBB5_1:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB5_3
	br	__LBB5_2
__LBB5_2:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB5_10
__LBB5_3:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB5_5
	br	__LBB5_4
__LBB5_4:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB5_9
__LBB5_5:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB5_7
	br	__LBB5_6
__LBB5_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB5_8
__LBB5_7:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB5_8
__LBB5_8:
	br	__LBB5_9
__LBB5_9:
	br	__LBB5_10
__LBB5_10:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, THREE_CARD_PL
	stw	r1, r2, r0
	br	__LBB5_35
__LBB5_11:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB5_22
	br	__LBB5_12
__LBB5_12:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB5_14
	br	__LBB5_13
__LBB5_13:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB5_21
__LBB5_14:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB5_16
	br	__LBB5_15
__LBB5_15:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB5_20
__LBB5_16:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB5_18
	br	__LBB5_17
__LBB5_17:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB5_19
__LBB5_18:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB5_19
__LBB5_19:
	br	__LBB5_20
__LBB5_20:
	br	__LBB5_21
__LBB5_21:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	stw	r1, r2, r0
	br	__LBB5_34
__LBB5_22:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB5_33
	br	__LBB5_23
__LBB5_23:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB5_25
	br	__LBB5_24
__LBB5_24:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB5_32
__LBB5_25:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB5_27
	br	__LBB5_26
__LBB5_26:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB5_31
__LBB5_27:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB5_29
	br	__LBB5_28
__LBB5_28:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB5_30
__LBB5_29:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB5_30
__LBB5_30:
	br	__LBB5_31
__LBB5_31:
	br	__LBB5_32
__LBB5_32:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	stw	r1, r2, r0
	br	__LBB5_33
__LBB5_33:
	br	__LBB5_34
__LBB5_34:
	br	__LBB5_35
__LBB5_35:
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
	bne	__LBB6_2
	br	__LBB6_1
__LBB6_1:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB6_9
__LBB6_2:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB6_4
	br	__LBB6_3
__LBB6_3:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB6_8
__LBB6_4:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB6_6
	br	__LBB6_5
__LBB6_5:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB6_7
__LBB6_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB6_7
__LBB6_7:
	br	__LBB6_8
__LBB6_8:
	br	__LBB6_9
__LBB6_9:
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
	br	__LBB7_1
__LBB7_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB7_8
	br	__LBB7_2
__LBB7_2:                               #   in Loop: Header=BB7_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 0
	ssw	r0, -12                         # 2-byte Folded Spill
	stw	r1, r0
	ldi	r1, BID_BOT
	ldi	r0, 5
	stw	r1, r0
	ldi	r0, BID_PLAYER
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
	br	__LBB7_3
__LBB7_3:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -8
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB7_6
	br	__LBB7_4
__LBB7_4:                               #   in Loop: Header=BB7_3 Depth=2
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
	br	__LBB7_5
__LBB7_5:                               #   in Loop: Header=BB7_3 Depth=2
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB7_3
__LBB7_6:                               #   in Loop: Header=BB7_1 Depth=1
	ldi	r0, SUIT_VALUE+12
	ldw	r0, r1
	ldi	r0, 1
	and r1, r0, r1
	ldi	r2, prob_fold
	stw	r2, r1
	ldi	r1, RAUND
	stw	r1, r0
	jsr	analysis
	ldi	r1, SEQUENCE_PTR
	ssw	r1, -20                         # 2-byte Folded Spill
	ldi	r0, -16384
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ssw	r1, -18                         # 2-byte Folded Spill
	ldi	r0, 132
	stw	r1, r0
	ldi	r0, 10
	jsr	delay
	lsw	r2, -20                         # 2-byte Folded Reload
	lsw	r1, -18                         # 2-byte Folded Reload
	ldi	r0, -16192
	stw	r2, r0
	ldi	r0, 114
	stw	r1, r0
	ldi	r0, COMB1
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, stronger_probabilities
	ldw	r0, r1, r0
	ssw	r0, -10
	lsw	r0, -10
	jsr	raund
	ldi	r1, BID_BOT
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, BID_PLAYER
	stw	r1, r0
	br	__LBB7_7
__LBB7_7:                               #   in Loop: Header=BB7_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB7_1
__LBB7_8:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB7_10
	br	__LBB7_9
__LBB7_9:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10752
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 96
	stw	r1, r0
	br	__LBB7_13
__LBB7_10:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB7_12
	br	__LBB7_11
__LBB7_11:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10496
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 88
	stw	r1, r0
	br	__LBB7_12
__LBB7_12:
	br	__LBB7_13
__LBB7_13:
	ldi	r0, 0
	addsp	20
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

card_raund>                             # @card_raund
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
