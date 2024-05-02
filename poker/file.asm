### SECTION: .text
rsect _main_c_41

memset: ext
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
ROUND: ext
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
	br	__LBB0_1
__LBB0_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -64
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_2
__LBB0_2:                               #   in Loop: Header=BB0_1 Depth=1
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
	br	__LBB0_3
__LBB0_3:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -64
	add	r0, 1
	ssw	r0, -64
	br	__LBB0_1
__LBB0_4:
	ldi	r0, 0
	ssw	r0, -66
	br	__LBB0_5
__LBB0_5:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -66
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB0_20
	br	__LBB0_6
__LBB0_6:                               #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_8
	br	__LBB0_7
__LBB0_7:                               #   in Loop: Header=BB0_5 Depth=1
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
	br	__LBB0_19
__LBB0_8:                               #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB0_10
	br	__LBB0_9
__LBB0_9:                               #   in Loop: Header=BB0_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_19
__LBB0_10:                              #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB0_12
	br	__LBB0_11
__LBB0_11:                              #   in Loop: Header=BB0_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_19
__LBB0_12:                              #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB0_14
	br	__LBB0_13
__LBB0_13:                              #   in Loop: Header=BB0_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_19
__LBB0_14:                              #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB0_16
	br	__LBB0_15
__LBB0_15:                              #   in Loop: Header=BB0_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_19
__LBB0_16:                              #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB0_18
	br	__LBB0_17
__LBB0_17:                              #   in Loop: Header=BB0_5 Depth=1
	ldi	r0, -28
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_19
__LBB0_18:                              #   in Loop: Header=BB0_5 Depth=1
	br	__LBB0_19
__LBB0_19:                              #   in Loop: Header=BB0_5 Depth=1
	lsw	r0, -66
	add	r0, 1
	ssw	r0, -66
	br	__LBB0_5
__LBB0_20:
	ldi	r0, 0
	ssw	r0, -68
	br	__LBB0_21
__LBB0_21:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -68
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB0_36
	br	__LBB0_22
__LBB0_22:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_24
	br	__LBB0_23
__LBB0_23:                              #   in Loop: Header=BB0_21 Depth=1
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
	br	__LBB0_35
__LBB0_24:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB0_26
	br	__LBB0_25
__LBB0_25:                              #   in Loop: Header=BB0_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 16
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_35
__LBB0_26:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB0_28
	br	__LBB0_27
__LBB0_27:                              #   in Loop: Header=BB0_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 18
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_35
__LBB0_28:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB0_30
	br	__LBB0_29
__LBB0_29:                              #   in Loop: Header=BB0_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 20
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_35
__LBB0_30:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB0_32
	br	__LBB0_31
__LBB0_31:                              #   in Loop: Header=BB0_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 22
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_35
__LBB0_32:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB0_34
	br	__LBB0_33
__LBB0_33:                              #   in Loop: Header=BB0_21 Depth=1
	ldi	r0, -54
	add	r0, fp, r1
	ldi	r2, 24
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_35
__LBB0_34:                              #   in Loop: Header=BB0_21 Depth=1
	br	__LBB0_35
__LBB0_35:                              #   in Loop: Header=BB0_21 Depth=1
	lsw	r0, -68
	add	r0, 1
	ssw	r0, -68
	br	__LBB0_21
__LBB0_36:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_41
	br	__LBB0_37
__LBB0_37:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_41
	br	__LBB0_38
__LBB0_38:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_41
	br	__LBB0_39
__LBB0_39:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_41
	br	__LBB0_40
__LBB0_40:
	ldi	r0, 1
	ssw	r0, -62
	br	__LBB0_41
__LBB0_41:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_46
	br	__LBB0_42
__LBB0_42:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_46
	br	__LBB0_43
__LBB0_43:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_46
	br	__LBB0_44
__LBB0_44:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+8
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_46
	br	__LBB0_45
__LBB0_45:
	ldi	r0, -62
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB0_46
__LBB0_46:
	ldi	r0, 0
	ssw	r0, -70
	br	__LBB0_47
__LBB0_47:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -70
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_89
	br	__LBB0_48
__LBB0_48:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_63
	br	__LBB0_49
__LBB0_49:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB0_59
	br	__LBB0_50
__LBB0_50:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_59
	br	__LBB0_51
__LBB0_51:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_59
	br	__LBB0_52
__LBB0_52:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_59
	br	__LBB0_53
__LBB0_53:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r0, 1
	ldi	r1, -28
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_59
	br	__LBB0_54
__LBB0_54:
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_58
	br	__LBB0_55
__LBB0_55:
	lsw	r0, -70
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB0_57
	br	__LBB0_56
__LBB0_56:
	ldi	r1, COMB1
	ldi	r0, 9
	stw	r1, r0
	br	__LBB0_89
__LBB0_57:
	ldi	r1, COMB1
	ldi	r0, 8
	stw	r1, r0
	br	__LBB0_89
__LBB0_58:
	ldi	r1, COMB1
	ldi	r0, 4
	stw	r1, r0
	br	__LBB0_89
__LBB0_59:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -62
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_61
	br	__LBB0_60
__LBB0_60:                              #   in Loop: Header=BB0_47 Depth=1
	ldi	r1, COMB1
	ldi	r0, 5
	stw	r1, r0
	br	__LBB0_61
__LBB0_61:                              #   in Loop: Header=BB0_47 Depth=1
	br	__LBB0_62
__LBB0_62:                              #   in Loop: Header=BB0_47 Depth=1
	br	__LBB0_63
__LBB0_63:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_65
	br	__LBB0_64
__LBB0_64:
	ldi	r1, COMB1
	ldi	r0, 7
	stw	r1, r0
	br	__LBB0_89
__LBB0_65:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_77
	br	__LBB0_66
__LBB0_66:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -72
	br	__LBB0_67
__LBB0_67:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -72
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_74
	br	__LBB0_68
__LBB0_68:                              #   in Loop: Header=BB0_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_70
	br	__LBB0_69
__LBB0_69:
	ldi	r1, COMB1
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB0_74
__LBB0_70:                              #   in Loop: Header=BB0_67 Depth=1
	lsw	r0, -72
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_72
	br	__LBB0_71
__LBB0_71:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB0_74
__LBB0_72:                              #   in Loop: Header=BB0_67 Depth=1
	br	__LBB0_73
__LBB0_73:                              #   in Loop: Header=BB0_67 Depth=1
	lsw	r0, -72
	add	r0, 1
	ssw	r0, -72
	br	__LBB0_67
__LBB0_74:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_76
	br	__LBB0_75
__LBB0_75:
	ldi	r1, COMB1
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_76
__LBB0_76:
	br	__LBB0_89
__LBB0_77:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_87
	br	__LBB0_78
__LBB0_78:
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -74
	br	__LBB0_79
__LBB0_79:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -74
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_84
	br	__LBB0_80
__LBB0_80:                              #   in Loop: Header=BB0_79 Depth=1
	lsw	r0, -74
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_82
	br	__LBB0_81
__LBB0_81:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, 1
	ssw	r0, -58
	br	__LBB0_84
__LBB0_82:                              #   in Loop: Header=BB0_79 Depth=1
	br	__LBB0_83
__LBB0_83:                              #   in Loop: Header=BB0_79 Depth=1
	lsw	r0, -74
	add	r0, 1
	ssw	r0, -74
	br	__LBB0_79
__LBB0_84:
	lsw	r0, -58
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_86
	br	__LBB0_85
__LBB0_85:
	ldi	r1, COMB1
	ldi	r0, 3
	stw	r1, r0
	br	__LBB0_86
__LBB0_86:
	br	__LBB0_89
__LBB0_87:                              #   in Loop: Header=BB0_47 Depth=1
	br	__LBB0_88
__LBB0_88:                              #   in Loop: Header=BB0_47 Depth=1
	lsw	r0, -70
	add	r0, 1
	ssw	r0, -70
	br	__LBB0_47
__LBB0_89:
	ldi	r0, 0
	ssw	r0, -76
	br	__LBB0_90
__LBB0_90:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -76
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_132
	br	__LBB0_91
__LBB0_91:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_106
	br	__LBB0_92
__LBB0_92:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB0_102
	br	__LBB0_93
__LBB0_93:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_102
	br	__LBB0_94
__LBB0_94:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_102
	br	__LBB0_95
__LBB0_95:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_102
	br	__LBB0_96
__LBB0_96:                              #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r0, 1
	ldi	r1, -54
	add	r1, fp, r1
	add r0, r1, r0
	ldi	r1, 8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_102
	br	__LBB0_97
__LBB0_97:
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_101
	br	__LBB0_98
__LBB0_98:
	lsw	r0, -76
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB0_100
	br	__LBB0_99
__LBB0_99:
	ldi	r1, COMB2
	ldi	r0, 9
	stw	r1, r0
	br	__LBB0_132
__LBB0_100:
	ldi	r1, COMB2
	ldi	r0, 8
	stw	r1, r0
	br	__LBB0_132
__LBB0_101:
	ldi	r1, COMB2
	ldi	r0, 4
	stw	r1, r0
	br	__LBB0_132
__LBB0_102:                             #   in Loop: Header=BB0_90 Depth=1
	ldi	r0, -62
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_104
	br	__LBB0_103
__LBB0_103:                             #   in Loop: Header=BB0_90 Depth=1
	ldi	r1, COMB2
	ldi	r0, 5
	stw	r1, r0
	br	__LBB0_104
__LBB0_104:                             #   in Loop: Header=BB0_90 Depth=1
	br	__LBB0_105
__LBB0_105:                             #   in Loop: Header=BB0_90 Depth=1
	br	__LBB0_106
__LBB0_106:                             #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_108
	br	__LBB0_107
__LBB0_107:
	ldi	r1, COMB2
	ldi	r0, 7
	stw	r1, r0
	br	__LBB0_132
__LBB0_108:                             #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_120
	br	__LBB0_109
__LBB0_109:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -78
	br	__LBB0_110
__LBB0_110:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -78
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_117
	br	__LBB0_111
__LBB0_111:                             #   in Loop: Header=BB0_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_113
	br	__LBB0_112
__LBB0_112:
	ldi	r0, COMB2
	ldi	r2, 2
	stw	r0, r2
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB0_117
__LBB0_113:                             #   in Loop: Header=BB0_110 Depth=1
	lsw	r0, -78
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_115
	br	__LBB0_114
__LBB0_114:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB0_117
__LBB0_115:                             #   in Loop: Header=BB0_110 Depth=1
	br	__LBB0_116
__LBB0_116:                             #   in Loop: Header=BB0_110 Depth=1
	lsw	r0, -78
	add	r0, 1
	ssw	r0, -78
	br	__LBB0_110
__LBB0_117:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_119
	br	__LBB0_118
__LBB0_118:
	ldi	r1, COMB2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_119
__LBB0_119:
	br	__LBB0_132
__LBB0_120:                             #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_130
	br	__LBB0_121
__LBB0_121:
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -80
	br	__LBB0_122
__LBB0_122:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -80
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_127
	br	__LBB0_123
__LBB0_123:                             #   in Loop: Header=BB0_122 Depth=1
	lsw	r0, -80
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_125
	br	__LBB0_124
__LBB0_124:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r0, -58
	add	r0, fp, r1
	ldi	r2, 2
	ldi	r0, 1
	stw	r1, r2, r0
	br	__LBB0_127
__LBB0_125:                             #   in Loop: Header=BB0_122 Depth=1
	br	__LBB0_126
__LBB0_126:                             #   in Loop: Header=BB0_122 Depth=1
	lsw	r0, -80
	add	r0, 1
	ssw	r0, -80
	br	__LBB0_122
__LBB0_127:
	ldi	r0, -58
	add	r0, fp, r0
	ldi	r1, 2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_129
	br	__LBB0_128
__LBB0_128:
	ldi	r1, COMB2
	ldi	r0, 3
	stw	r1, r0
	br	__LBB0_129
__LBB0_129:
	br	__LBB0_132
__LBB0_130:                             #   in Loop: Header=BB0_90 Depth=1
	br	__LBB0_131
__LBB0_131:                             #   in Loop: Header=BB0_90 Depth=1
	lsw	r0, -76
	add	r0, 1
	ssw	r0, -76
	br	__LBB0_90
__LBB0_132:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB0_134
	br	__LBB0_133
__LBB0_133:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_134
__LBB0_134:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB0_136
	br	__LBB0_135
__LBB0_135:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_136
__LBB0_136:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_176
	br	__LBB0_137
__LBB0_137:
	ldi	r0, 12
	ssw	r0, -82
	br	__LBB0_138
__LBB0_138:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -82
	ldi	r1, 0
	cmp	r0, r1
	blt	__LBB0_175
	br	__LBB0_139
__LBB0_139:                             #   in Loop: Header=BB0_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	beq	__LBB0_141
	br	__LBB0_140
__LBB0_140:                             #   in Loop: Header=BB0_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_148
	br	__LBB0_141
__LBB0_141:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_144
	br	__LBB0_142
__LBB0_142:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_144
	br	__LBB0_143
__LBB0_143:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_176
__LBB0_144:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_147
	br	__LBB0_145
__LBB0_145:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_147
	br	__LBB0_146
__LBB0_146:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_176
__LBB0_147:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_173
__LBB0_148:                             #   in Loop: Header=BB0_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_156
	br	__LBB0_149
__LBB0_149:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_152
	br	__LBB0_150
__LBB0_150:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_152
	br	__LBB0_151
__LBB0_151:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_176
__LBB0_152:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_155
	br	__LBB0_153
__LBB0_153:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_155
	br	__LBB0_154
__LBB0_154:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_176
__LBB0_155:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_172
__LBB0_156:                             #   in Loop: Header=BB0_138 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 7
	cmp	r0, r1
	bne	__LBB0_164
	br	__LBB0_157
__LBB0_157:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_160
	br	__LBB0_158
__LBB0_158:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -54
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_160
	br	__LBB0_159
__LBB0_159:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_176
__LBB0_160:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_163
	br	__LBB0_161
__LBB0_161:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r2, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r2, r0
	ldi	r1, -28
	add	r1, fp, r1
	ldw	r1, r2, r1
	cmp	r0, r1
	ble	__LBB0_163
	br	__LBB0_162
__LBB0_162:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_176
__LBB0_163:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_171
__LBB0_164:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB0_167
	br	__LBB0_165
__LBB0_165:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_167
	br	__LBB0_166
__LBB0_166:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_176
__LBB0_167:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -54
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB0_170
	br	__LBB0_168
__LBB0_168:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	shl	r0, r1, 1
	ldi	r0, -28
	add	r0, fp, r0
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_170
	br	__LBB0_169
__LBB0_169:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_176
__LBB0_170:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_171
__LBB0_171:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_172
__LBB0_172:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_173
__LBB0_173:                             #   in Loop: Header=BB0_138 Depth=1
	br	__LBB0_174
__LBB0_174:                             #   in Loop: Header=BB0_138 Depth=1
	lsw	r0, -82
	sub	r0, 1
	ssw	r0, -82
	br	__LBB0_138
__LBB0_175:
	ldi	r1, WHO_WIN
	ldi	r0, 0
	stw	r1, r0
	br	__LBB0_176
__LBB0_176:
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
	br	__LBB1_1
__LBB1_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -10
	ldi	r1, 9
	cmp	r0, r1
	bgt	__LBB1_7
	br	__LBB1_2
__LBB1_2:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -10
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB1_4
	br	__LBB1_3
__LBB1_3:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -10
	shl	r0, r3, 1
	ldi	r4, hand1
	ldi	r1, card_one_round
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
	br	__LBB1_5
__LBB1_4:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -8
	shl	r0, r3, 1
	ldi	r4, hand2
	ldi	r1, card_one_round
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
	br	__LBB1_5
__LBB1_5:                               #   in Loop: Header=BB1_1 Depth=1
	br	__LBB1_6
__LBB1_6:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB1_1
__LBB1_7:
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
	ble	__LBB2_2
	br	__LBB2_1
__LBB2_1:
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
	br	__LBB2_9
__LBB2_2:
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB2_8
	br	__LBB2_3
__LBB2_3:
	ldi	r0, pointer_raise
	ldw	r0, r0
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB2_7
	br	__LBB2_4
__LBB2_4:
	ldi	r0, pointer_raise
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, prob_raise
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB2_6
	br	__LBB2_5
__LBB2_5:
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
	br	__LBB2_6
__LBB2_6:
	ldi	r1, pointer_raise
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB2_7
__LBB2_7:
	br	__LBB2_8
__LBB2_8:
	br	__LBB2_9
__LBB2_9:
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
	addsp	-10
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r0, -4
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB3_1
__LBB3_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB3_46
	br	__LBB3_2
__LBB3_2:                               #   in Loop: Header=BB3_1 Depth=1
	ldi	r0, 0
	ssw	r0, -8
	br	__LBB3_3
__LBB3_3:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	blt	__LBB3_8
	br	__LBB3_4
__LBB3_4:                               #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 6001
	cmp	r0, r1
	blt	__LBB3_8
	br	__LBB3_5
__LBB3_5:                               #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, prob_fold
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_7
	br	__LBB3_6
__LBB3_6:                               #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 1
	stw	r1, r0
	br	__LBB3_38
__LBB3_7:                               #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_8
__LBB3_8:                               #   in Loop: Header=BB3_3 Depth=2
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
	bne	__LBB3_13
	br	__LBB3_9
__LBB3_9:                               #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB3_13
	br	__LBB3_10
__LBB3_10:                              #   in Loop: Header=BB3_3 Depth=2
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
	ble	__LBB3_12
	br	__LBB3_11
__LBB3_11:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_3
__LBB3_12:                              #   in Loop: Header=BB3_1 Depth=1
	br	__LBB3_38
__LBB3_13:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB3_29
	br	__LBB3_14
__LBB3_14:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, BID_COMMAND
	ldw	r0, r0
	ldi	r1, 20
	cmp	r0, r1
	bgt	__LBB3_29
	br	__LBB3_15
__LBB3_15:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB3_29
	br	__LBB3_16
__LBB3_16:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -8
	ldi	r1, 6
	cmp	r0, r1
	bgt	__LBB3_28
	br	__LBB3_17
__LBB3_17:                              #   in Loop: Header=BB3_3 Depth=2
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
	bne	__LBB3_27
	br	__LBB3_18
__LBB3_18:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB3_20
	br	__LBB3_19
__LBB3_19:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 300
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_26
__LBB3_20:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_22
	br	__LBB3_21
__LBB3_21:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1150
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_25
__LBB3_22:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_24
	br	__LBB3_23
__LBB3_23:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 1000
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_24
__LBB3_24:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_25
__LBB3_25:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_26
__LBB3_26:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_27
__LBB3_27:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	jsr	bot_logic
	br	__LBB3_28
__LBB3_28:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_36
__LBB3_29:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_32
	br	__LBB3_30
__LBB3_30:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB3_32
	br	__LBB3_31
__LBB3_31:                              #   in Loop: Header=BB3_3 Depth=2
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
	jsr	bot_logic
	br	__LBB3_35
__LBB3_32:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_34
	br	__LBB3_33
__LBB3_33:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 2
	stw	r1, r0
	br	__LBB3_38
__LBB3_34:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_35
__LBB3_35:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_36
__LBB3_36:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_37
__LBB3_37:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_3
__LBB3_38:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB3_40
	br	__LBB3_39
__LBB3_39:
	br	__LBB3_46
__LBB3_40:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_42
	br	__LBB3_41
__LBB3_41:                              #   in Loop: Header=BB3_1 Depth=1
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
	br	__LBB3_43
__LBB3_42:                              #   in Loop: Header=BB3_1 Depth=1
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
	br	__LBB3_43
__LBB3_43:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, ROUND
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB3_44
__LBB3_44:                              #   in Loop: Header=BB3_1 Depth=1
	br	__LBB3_45
__LBB3_45:                              #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB3_1
__LBB3_46:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_53
	br	__LBB3_47
__LBB3_47:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_49
	br	__LBB3_48
__LBB3_48:
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
	br	__LBB3_52
__LBB3_49:
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_51
	br	__LBB3_50
__LBB3_50:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB3_51
__LBB3_51:
	br	__LBB3_52
__LBB3_52:
	br	__LBB3_61
__LBB3_53:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_60
	br	__LBB3_54
__LBB3_54:
	ldi	r0, WHO_WIN
	ldi	r1, 1
	stw	r0, r1
	ldi	r0, ROUND
	ldw	r0, r0
	cmp	r0, r1
	bne	__LBB3_56
	br	__LBB3_55
__LBB3_55:
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
	br	__LBB3_59
__LBB3_56:
	ldi	r0, ROUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_58
	br	__LBB3_57
__LBB3_57:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -11008
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 98
	stw	r1, r0
	br	__LBB3_58
__LBB3_58:
	br	__LBB3_59
__LBB3_59:
	br	__LBB3_60
__LBB3_60:
	br	__LBB3_61
__LBB3_61:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_63
	br	__LBB3_62
__LBB3_62:
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -12544
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 184
	stw	r1, r0
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
	br	__LBB3_66
__LBB3_63:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_65
	br	__LBB3_64
__LBB3_64:
	ldi	r2, SEQUENCE_PTR
	ldi	r0, -12544
	stw	r2, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 184
	stw	r1, r0
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
	br	__LBB3_65
__LBB3_65:
	br	__LBB3_66
__LBB3_66:
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
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
	bgt	__LBB4_11
	br	__LBB4_1
__LBB4_1:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB4_3
	br	__LBB4_2
__LBB4_2:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB4_10
__LBB4_3:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB4_5
	br	__LBB4_4
__LBB4_4:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB4_9
__LBB4_5:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB4_7
	br	__LBB4_6
__LBB4_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB4_8
__LBB4_7:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, THREE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB4_8
__LBB4_8:
	br	__LBB4_9
__LBB4_9:
	br	__LBB4_10
__LBB4_10:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, THREE_CARD_PL
	stw	r1, r2, r0
	br	__LBB4_35
__LBB4_11:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB4_22
	br	__LBB4_12
__LBB4_12:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB4_14
	br	__LBB4_13
__LBB4_13:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB4_21
__LBB4_14:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB4_16
	br	__LBB4_15
__LBB4_15:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB4_20
__LBB4_16:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB4_18
	br	__LBB4_17
__LBB4_17:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB4_19
__LBB4_18:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB4_19
__LBB4_19:
	br	__LBB4_20
__LBB4_20:
	br	__LBB4_21
__LBB4_21:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FOUR_CARD_PL
	stw	r1, r2, r0
	br	__LBB4_34
__LBB4_22:
	ldi	r0, hand_iteration
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB4_33
	br	__LBB4_23
__LBB4_23:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB4_25
	br	__LBB4_24
__LBB4_24:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB4_32
__LBB4_25:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB4_27
	br	__LBB4_26
__LBB4_26:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB4_31
__LBB4_27:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB4_29
	br	__LBB4_28
__LBB4_28:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB4_30
__LBB4_29:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB4_30
__LBB4_30:
	br	__LBB4_31
__LBB4_31:
	br	__LBB4_32
__LBB4_32:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, PRINT_FIVE_CARD_PL
	stw	r1, r2, r0
	br	__LBB4_33
__LBB4_33:
	br	__LBB4_34
__LBB4_34:
	br	__LBB4_35
__LBB4_35:
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
	bne	__LBB5_2
	br	__LBB5_1
__LBB5_1:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 165
	stw	r1, r2, r0
	br	__LBB5_9
__LBB5_2:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB5_4
	br	__LBB5_3
__LBB5_3:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 166
	stw	r1, r2, r0
	br	__LBB5_8
__LBB5_4:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, hand1
	ldsb	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB5_6
	br	__LBB5_5
__LBB5_5:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 160
	stw	r1, r2, r0
	br	__LBB5_7
__LBB5_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, PRINT_BOT_CARD
	ldi	r0, 163
	stw	r1, r2, r0
	br	__LBB5_7
__LBB5_7:
	br	__LBB5_8
__LBB5_8:
	br	__LBB5_9
__LBB5_9:
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
	addsp	-16
	ldi	r0, 0
	ssw	r0, -2
	ldi	r2, BALANCE_BOT
	ldi	r1, 2000
	stw	r2, r1
	ldi	r2, BALANCE_PLAYER
	stw	r2, r1
	ssw	r0, -4
	ssw	r0, -6
	br	__LBB6_1
__LBB6_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB6_8
	br	__LBB6_2
__LBB6_2:                               #   in Loop: Header=BB6_1 Depth=1
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
	br	__LBB6_3
__LBB6_3:                               #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -8
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB6_6
	br	__LBB6_4
__LBB6_4:                               #   in Loop: Header=BB6_3 Depth=2
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
	br	__LBB6_5
__LBB6_5:                               #   in Loop: Header=BB6_3 Depth=2
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB6_3
__LBB6_6:                               #   in Loop: Header=BB6_1 Depth=1
	ldi	r0, SUIT_VALUE+12
	ldw	r0, r1
	ldi	r0, 1
	and r1, r0, r1
	ldi	r2, prob_fold
	stw	r2, r1
	ldi	r1, COMB1
	ldw	r1, r1
	shl	r1, r1, 1
	ldi	r2, stronger_probabilities
	ldw	r1, r2, r1
	ssw	r1, -10
	ldi	r1, ROUND
	stw	r1, r0
	jsr	analysis
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
	ldi	r1, BID_BOT
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, BID_PLAYER
	stw	r1, r0
	br	__LBB6_7
__LBB6_7:                               #   in Loop: Header=BB6_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB6_1
__LBB6_8:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB6_10
	br	__LBB6_9
__LBB6_9:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10752
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 96
	stw	r1, r0
	br	__LBB6_13
__LBB6_10:
	ldi	r0, BALANCE_BOT
	ldw	r0, r0
	ldi	r1, BALANCE_PLAYER
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB6_12
	br	__LBB6_11
__LBB6_11:
	ldi	r1, SEQUENCE_PTR
	ldi	r0, -10496
	stw	r1, r0
	ldi	r1, SEQUENCE_LEN
	ldi	r0, 88
	stw	r1, r0
	br	__LBB6_12
__LBB6_12:
	br	__LBB6_13
__LBB6_13:
	ldi	r0, 0
	addsp	16
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
