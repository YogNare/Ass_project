### SECTION: .text
rsect _main_c_41

COMB1: ext
COMB2: ext
WHO_WIN: ext
DARE: ext
SUIT_VALUE: ext
COMMAND: ext
BID_PLAYER: ext
BID_BOT: ext
BALANCE_BOT: ext
RAUND: ext
FOLD: ext
RD_WR: ext
BID_COMMAND: ext
BALANCE_PLAYER: ext
SEQUENCE: ext
SEQUENCE_LEN: ext


macro movens/2
push $1
pop $2
mend

analysis>                               # -- Begin function analysis
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-20
	ldi	r1, COMB1
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, COMB2
	stw	r1, r0
	ldi	r1, 50
	ssw	r1, -2
	ssw	r0, -4
	br	__LBB0_1
__LBB0_1:                               # =>This Inner Loop Header: Depth=1
	lsw	r0, -4
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB0_16
	br	__LBB0_2
__LBB0_2:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	lsw	r1, -2
	sub r0, r1, r0
	shl	r0, r1, 1
	ldi	r2, res1
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_15
__LBB0_4:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB0_6
	br	__LBB0_5
__LBB0_5:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, res1+16
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_15
__LBB0_6:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB0_8
	br	__LBB0_7
__LBB0_7:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, res1+18
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_15
__LBB0_8:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB0_10
	br	__LBB0_9
__LBB0_9:                               #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, res1+20
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_15
__LBB0_10:                              #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB0_12
	br	__LBB0_11
__LBB0_11:                              #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, res1+22
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_15
__LBB0_12:                              #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 2
	ldi	r1, hand1+2
	ldw	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB0_14
	br	__LBB0_13
__LBB0_13:                              #   in Loop: Header=BB0_1 Depth=1
	ldi	r1, res1+24
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_15
__LBB0_14:                              #   in Loop: Header=BB0_1 Depth=1
	br	__LBB0_15
__LBB0_15:                              #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB0_1
__LBB0_16:
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB0_17
__LBB0_17:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -6
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB0_32
	br	__LBB0_18
__LBB0_18:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_20
	br	__LBB0_19
__LBB0_19:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	lsw	r1, -2
	sub r0, r1, r0
	shl	r0, r1, 1
	ldi	r2, res2
	ldw	r1, r2, r0
	add	r0, 1
	stw	r1, r2, r0
	br	__LBB0_31
__LBB0_20:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 84
	cmp	r0, r1
	bne	__LBB0_22
	br	__LBB0_21
__LBB0_21:                              #   in Loop: Header=BB0_17 Depth=1
	ldi	r1, res2+16
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_31
__LBB0_22:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 74
	cmp	r0, r1
	bne	__LBB0_24
	br	__LBB0_23
__LBB0_23:                              #   in Loop: Header=BB0_17 Depth=1
	ldi	r1, res2+18
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_31
__LBB0_24:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 81
	cmp	r0, r1
	bne	__LBB0_26
	br	__LBB0_25
__LBB0_25:                              #   in Loop: Header=BB0_17 Depth=1
	ldi	r1, res2+20
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_31
__LBB0_26:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 75
	cmp	r0, r1
	bne	__LBB0_28
	br	__LBB0_27
__LBB0_27:                              #   in Loop: Header=BB0_17 Depth=1
	ldi	r1, res2+22
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_31
__LBB0_28:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	ldi	r1, 65
	cmp	r0, r1
	bne	__LBB0_30
	br	__LBB0_29
__LBB0_29:                              #   in Loop: Header=BB0_17 Depth=1
	ldi	r1, res2+24
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB0_31
__LBB0_30:                              #   in Loop: Header=BB0_17 Depth=1
	br	__LBB0_31
__LBB0_31:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB0_17
__LBB0_32:
	ldi	r0, hand1
	ldw	r0, r0
	ldi	r1, hand1+4
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_33
__LBB0_33:
	ldi	r0, hand1
	ldw	r0, r0
	ldi	r1, hand1+8
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_34
__LBB0_34:
	ldi	r0, hand1
	ldw	r0, r0
	ldi	r1, hand1+12
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_35
__LBB0_35:
	ldi	r0, hand1
	ldw	r0, r0
	ldi	r1, hand1+16
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_36
__LBB0_36:
	ldi	r1, flash
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_37
__LBB0_37:
	ldi	r0, hand2
	ldw	r0, r0
	ldi	r1, hand2+4
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_38
__LBB0_38:
	ldi	r0, hand2
	ldw	r0, r0
	ldi	r1, hand2+8
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_39
__LBB0_39:
	ldi	r0, hand2
	ldw	r0, r0
	ldi	r1, hand2+12
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_40
__LBB0_40:
	ldi	r0, hand2
	ldw	r0, r0
	ldi	r1, hand2+16
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_41
__LBB0_41:
	ldi	r1, flash+2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_42
__LBB0_42:
	ldi	r0, 0
	ssw	r0, -8
	br	__LBB0_43
__LBB0_43:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -8
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_85
	br	__LBB0_44
__LBB0_44:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_59
	br	__LBB0_45
__LBB0_45:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB0_55
	br	__LBB0_46
__LBB0_46:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1+2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_55
	br	__LBB0_47
__LBB0_47:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1+4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_55
	br	__LBB0_48
__LBB0_48:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1+6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_55
	br	__LBB0_49
__LBB0_49:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1+8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_55
	br	__LBB0_50
__LBB0_50:
	ldi	r0, flash
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_54
	br	__LBB0_51
__LBB0_51:
	lsw	r0, -8
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB0_53
	br	__LBB0_52
__LBB0_52:
	ldi	r1, COMB1
	ldi	r0, 9
	stw	r1, r0
	br	__LBB0_85
__LBB0_53:
	ldi	r1, COMB1
	ldi	r0, 8
	stw	r1, r0
	br	__LBB0_85
__LBB0_54:
	ldi	r1, COMB1
	ldi	r0, 4
	stw	r1, r0
	br	__LBB0_85
__LBB0_55:                              #   in Loop: Header=BB0_43 Depth=1
	ldi	r0, flash
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_57
	br	__LBB0_56
__LBB0_56:                              #   in Loop: Header=BB0_43 Depth=1
	ldi	r1, COMB1
	ldi	r0, 5
	stw	r1, r0
	br	__LBB0_57
__LBB0_57:                              #   in Loop: Header=BB0_43 Depth=1
	br	__LBB0_58
__LBB0_58:                              #   in Loop: Header=BB0_43 Depth=1
	br	__LBB0_59
__LBB0_59:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_61
	br	__LBB0_60
__LBB0_60:
	ldi	r1, COMB1
	ldi	r0, 7
	stw	r1, r0
	br	__LBB0_85
__LBB0_61:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_73
	br	__LBB0_62
__LBB0_62:
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -10
	br	__LBB0_63
__LBB0_63:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -10
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_70
	br	__LBB0_64
__LBB0_64:                              #   in Loop: Header=BB0_63 Depth=1
	lsw	r0, -10
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_66
	br	__LBB0_65
__LBB0_65:
	ldi	r1, COMB1
	ldi	r0, 2
	stw	r1, r0
	ldi	r1, flags
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_70
__LBB0_66:                              #   in Loop: Header=BB0_63 Depth=1
	lsw	r0, -10
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_68
	br	__LBB0_67
__LBB0_67:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r1, flags
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_70
__LBB0_68:                              #   in Loop: Header=BB0_63 Depth=1
	br	__LBB0_69
__LBB0_69:                              #   in Loop: Header=BB0_63 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB0_63
__LBB0_70:
	ldi	r0, flags
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_72
	br	__LBB0_71
__LBB0_71:
	ldi	r1, COMB1
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_72
__LBB0_72:
	br	__LBB0_85
__LBB0_73:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_83
	br	__LBB0_74
__LBB0_74:
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -12
	br	__LBB0_75
__LBB0_75:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -12
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_80
	br	__LBB0_76
__LBB0_76:                              #   in Loop: Header=BB0_75 Depth=1
	lsw	r0, -12
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_78
	br	__LBB0_77
__LBB0_77:
	ldi	r1, COMB1
	ldi	r0, 6
	stw	r1, r0
	ldi	r1, flags
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_80
__LBB0_78:                              #   in Loop: Header=BB0_75 Depth=1
	br	__LBB0_79
__LBB0_79:                              #   in Loop: Header=BB0_75 Depth=1
	lsw	r0, -12
	add	r0, 1
	ssw	r0, -12
	br	__LBB0_75
__LBB0_80:
	ldi	r0, flags
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_82
	br	__LBB0_81
__LBB0_81:
	ldi	r1, COMB1
	ldi	r0, 3
	stw	r1, r0
	br	__LBB0_82
__LBB0_82:
	br	__LBB0_85
__LBB0_83:                              #   in Loop: Header=BB0_43 Depth=1
	br	__LBB0_84
__LBB0_84:                              #   in Loop: Header=BB0_43 Depth=1
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB0_43
__LBB0_85:
	ldi	r0, 0
	ssw	r0, -14
	br	__LBB0_86
__LBB0_86:                              # =>This Inner Loop Header: Depth=1
	lsw	r0, -14
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_128
	br	__LBB0_87
__LBB0_87:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_102
	br	__LBB0_88
__LBB0_88:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	ldi	r1, 8
	cmp	r0, r1
	bgt	__LBB0_98
	br	__LBB0_89
__LBB0_89:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2+2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_98
	br	__LBB0_90
__LBB0_90:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2+4
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_98
	br	__LBB0_91
__LBB0_91:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2+6
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_98
	br	__LBB0_92
__LBB0_92:                              #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2+8
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_98
	br	__LBB0_93
__LBB0_93:
	ldi	r0, flash+2
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_97
	br	__LBB0_94
__LBB0_94:
	lsw	r0, -14
	ldi	r1, 8
	cmp	r0, r1
	bne	__LBB0_96
	br	__LBB0_95
__LBB0_95:
	ldi	r1, COMB2
	ldi	r0, 9
	stw	r1, r0
	br	__LBB0_128
__LBB0_96:
	ldi	r1, COMB2
	ldi	r0, 8
	stw	r1, r0
	br	__LBB0_128
__LBB0_97:
	ldi	r1, COMB2
	ldi	r0, 4
	stw	r1, r0
	br	__LBB0_128
__LBB0_98:                              #   in Loop: Header=BB0_86 Depth=1
	ldi	r0, flash+2
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_100
	br	__LBB0_99
__LBB0_99:                              #   in Loop: Header=BB0_86 Depth=1
	ldi	r1, COMB2
	ldi	r0, 5
	stw	r1, r0
	br	__LBB0_100
__LBB0_100:                             #   in Loop: Header=BB0_86 Depth=1
	br	__LBB0_101
__LBB0_101:                             #   in Loop: Header=BB0_86 Depth=1
	br	__LBB0_102
__LBB0_102:                             #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB0_104
	br	__LBB0_103
__LBB0_103:
	ldi	r1, COMB2
	ldi	r0, 7
	stw	r1, r0
	br	__LBB0_128
__LBB0_104:                             #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_116
	br	__LBB0_105
__LBB0_105:
	lsw	r0, -14
	add	r0, 1
	ssw	r0, -16
	br	__LBB0_106
__LBB0_106:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -16
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_113
	br	__LBB0_107
__LBB0_107:                             #   in Loop: Header=BB0_106 Depth=1
	lsw	r0, -16
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_109
	br	__LBB0_108
__LBB0_108:
	ldi	r1, COMB2
	ldi	r0, 2
	stw	r1, r0
	ldi	r1, flags+2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_113
__LBB0_109:                             #   in Loop: Header=BB0_106 Depth=1
	lsw	r0, -16
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_111
	br	__LBB0_110
__LBB0_110:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r1, flags+2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_113
__LBB0_111:                             #   in Loop: Header=BB0_106 Depth=1
	br	__LBB0_112
__LBB0_112:                             #   in Loop: Header=BB0_106 Depth=1
	lsw	r0, -16
	add	r0, 1
	ssw	r0, -16
	br	__LBB0_106
__LBB0_113:
	ldi	r0, flags+2
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_115
	br	__LBB0_114
__LBB0_114:
	ldi	r1, COMB2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_115
__LBB0_115:
	br	__LBB0_128
__LBB0_116:                             #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB0_126
	br	__LBB0_117
__LBB0_117:
	lsw	r0, -14
	add	r0, 1
	ssw	r0, -18
	br	__LBB0_118
__LBB0_118:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -18
	ldi	r1, 12
	cmp	r0, r1
	bgt	__LBB0_123
	br	__LBB0_119
__LBB0_119:                             #   in Loop: Header=BB0_118 Depth=1
	lsw	r0, -18
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB0_121
	br	__LBB0_120
__LBB0_120:
	ldi	r1, COMB2
	ldi	r0, 6
	stw	r1, r0
	ldi	r1, flags+2
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_123
__LBB0_121:                             #   in Loop: Header=BB0_118 Depth=1
	br	__LBB0_122
__LBB0_122:                             #   in Loop: Header=BB0_118 Depth=1
	lsw	r0, -18
	add	r0, 1
	ssw	r0, -18
	br	__LBB0_118
__LBB0_123:
	ldi	r0, flags+2
	ldw	r0, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_125
	br	__LBB0_124
__LBB0_124:
	ldi	r1, COMB2
	ldi	r0, 3
	stw	r1, r0
	br	__LBB0_125
__LBB0_125:
	br	__LBB0_128
__LBB0_126:                             #   in Loop: Header=BB0_86 Depth=1
	br	__LBB0_127
__LBB0_127:                             #   in Loop: Header=BB0_86 Depth=1
	lsw	r0, -14
	add	r0, 1
	ssw	r0, -14
	br	__LBB0_86
__LBB0_128:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	ble	__LBB0_130
	br	__LBB0_129
__LBB0_129:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_130
__LBB0_130:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bge	__LBB0_132
	br	__LBB0_131
__LBB0_131:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_132
__LBB0_132:
	ldi	r0, COMB1
	ldw	r0, r0
	ldi	r1, COMB2
	ldw	r1, r1
	cmp	r0, r1
	bne	__LBB0_144
	br	__LBB0_133
__LBB0_133:
	ldi	r0, 12
	ssw	r0, -20
	br	__LBB0_134
__LBB0_134:                             # =>This Inner Loop Header: Depth=1
	lsw	r0, -20
	ldi	r1, 0
	cmp	r0, r1
	blt	__LBB0_143
	br	__LBB0_135
__LBB0_135:                             #   in Loop: Header=BB0_134 Depth=1
	lsw	r0, -20
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_138
	br	__LBB0_136
__LBB0_136:                             #   in Loop: Header=BB0_134 Depth=1
	lsw	r0, -20
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_138
	br	__LBB0_137
__LBB0_137:
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB0_144
__LBB0_138:                             #   in Loop: Header=BB0_134 Depth=1
	lsw	r0, -20
	shl	r0, r0, 1
	ldi	r1, res2
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB0_141
	br	__LBB0_139
__LBB0_139:                             #   in Loop: Header=BB0_134 Depth=1
	lsw	r0, -20
	shl	r0, r0, 1
	ldi	r1, res1
	ldw	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB0_141
	br	__LBB0_140
__LBB0_140:
	ldi	r1, WHO_WIN
	ldi	r0, 2
	stw	r1, r0
	br	__LBB0_144
__LBB0_141:                             #   in Loop: Header=BB0_134 Depth=1
	br	__LBB0_142
__LBB0_142:                             #   in Loop: Header=BB0_134 Depth=1
	lsw	r0, -20
	sub	r0, 1
	ssw	r0, -20
	br	__LBB0_134
__LBB0_143:
	ldi	r1, WHO_WIN
	ldi	r0, 0
	stw	r1, r0
	br	__LBB0_144
__LBB0_144:
	addsp	20
	pop	fp
	rts
                                        # -- End function
generate_cards>                         # -- Begin function generate_cards
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ldi	r0, 0
	ssw	r0, -6
	ssw	r0, -8
	br	__LBB1_1
__LBB1_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	lsw	r0, -8
	ldi	r1, 9
	cmp	r0, r1
	bgt	__LBB1_12
	br	__LBB1_2
__LBB1_2:                               #   in Loop: Header=BB1_1 Depth=1
	br	__LBB1_3
__LBB1_3:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	shl	r0, r0, 1
	ldi	r1, DARE
	ldw	r0, r1, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB1_7
	br	__LBB1_4
__LBB1_4:                               #   in Loop: Header=BB1_3 Depth=2
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	add	r0, 1
	lsw	r2, -8
	shl	r2, r2, 1
	stw	r2, r1, r0
	lsw	r0, -8
	shl	r0, r0, 1
	ldw	r0, r1, r0
	ldi	r1, 52
	cmp	r0, r1
	blt	__LBB1_6
	br	__LBB1_5
__LBB1_5:                               #   in Loop: Header=BB1_3 Depth=2
	lsw	r0, -8
	shl	r0, r1, 1
	ldi	r2, SUIT_VALUE
	ldi	r0, 0
	stw	r1, r2, r0
	br	__LBB1_6
__LBB1_6:                               #   in Loop: Header=BB1_3 Depth=2
	br	__LBB1_3
__LBB1_7:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	shl	r0, r1, 1
	ldi	r2, DARE
	ldi	r0, 1
	stw	r1, r2, r0
	lsw	r0, -8
	ldi	r1, 4
	cmp	r0, r1
	bgt	__LBB1_9
	br	__LBB1_8
__LBB1_8:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -8
	shl	r0, r1, 2
	ldi	r2, hand1
	shl	r0, r0, 1
	ldi	r3, SUIT_VALUE
	ldw	r0, r3, r0
	shl	r0, r0, 2
	ldi	r3, dare
	ldi	r4, dare+2
	ldw	r0, r4, r4
	ldi	r5, hand1+2
	stw	r1, r5, r4
	ldw	r0, r3, r0
	stw	r1, r2, r0
	br	__LBB1_10
__LBB1_9:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -6
	shl	r0, r1, 2
	ldi	r2, hand2
	lsw	r0, -8
	shl	r0, r0, 1
	ldi	r3, SUIT_VALUE
	ldw	r0, r3, r0
	shl	r0, r0, 2
	ldi	r3, dare
	ldi	r4, dare+2
	ldw	r0, r4, r4
	ldi	r5, hand2+2
	stw	r1, r5, r4
	ldw	r0, r3, r0
	stw	r1, r2, r0
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB1_10
__LBB1_10:                              #   in Loop: Header=BB1_1 Depth=1
	br	__LBB1_11
__LBB1_11:                              #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -8
	add	r0, 1
	ssw	r0, -8
	br	__LBB1_1
__LBB1_12:
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
	bne	__LBB2_3
	br	__LBB2_1
__LBB2_1:
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB2_3
	br	__LBB2_2
__LBB2_2:
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
	br	__LBB2_10
__LBB2_3:
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB2_5
	br	__LBB2_4
__LBB2_4:
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
	br	__LBB2_10
__LBB2_5:
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB2_7
	br	__LBB2_6
__LBB2_6:
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB2_10
__LBB2_7:
	br	__LBB2_8
__LBB2_8:
	br	__LBB2_9
__LBB2_9:
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB2_10
__LBB2_10:
	lsw	r0, -4
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
raund>                                  # -- Begin function raund
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-8
	ssw	r0, -4
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB3_1
__LBB3_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	lsw	r0, -6
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB3_31
	br	__LBB3_2
__LBB3_2:                               #   in Loop: Header=BB3_1 Depth=1
	ldi	r0, 0
	ssw	r0, -8
	br	__LBB3_3
__LBB3_3:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldi	r0, RAUND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	blt	__LBB3_6
	br	__LBB3_4
__LBB3_4:                               #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 5201
	cmp	r0, r1
	blt	__LBB3_6
	br	__LBB3_5
__LBB3_5:
	ldi	r1, FOLD
	ldi	r0, 2
	stw	r1, r0
	ldi	r0, RAUND
	ldw	r0, r0
	ssw	r0, -2
	br	__LBB3_32
__LBB3_6:                               #   in Loop: Header=BB3_3 Depth=2
	ldi	r1, RD_WR
	ldi	r0, 1
	stw	r1, r0
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 4
	cmp	r0, r1
	bne	__LBB3_11
	br	__LBB3_7
__LBB3_7:                               #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, BID_PLAYER
	ldw	r0, r0
	ldi	r1, BID_BOT
	ldw	r1, r1
	cmp	r0, r1
	blt	__LBB3_11
	br	__LBB3_8
__LBB3_8:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -8
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB3_10
	br	__LBB3_9
__LBB3_9:                               #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -4
	ldi	r1, -400
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_10
__LBB3_10:                              #   in Loop: Header=BB3_1 Depth=1
	jsr	bot_first
	br	__LBB3_27
__LBB3_11:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 3
	cmp	r0, r1
	bne	__LBB3_19
	br	__LBB3_12
__LBB3_12:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -8
	ldi	r1, 6
	cmp	r0, r1
	bgt	__LBB3_18
	br	__LBB3_13
__LBB3_13:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -8
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB3_15
	br	__LBB3_14
__LBB3_14:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, -400
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_15
__LBB3_15:                              #   in Loop: Header=BB3_3 Depth=2
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
	lsw	r0, -8
	ldi	r1, 3
	cmp	r0, r1
	blt	__LBB3_17
	br	__LBB3_16
__LBB3_16:                              #   in Loop: Header=BB3_3 Depth=2
	lsw	r0, -4
	ldi	r1, 200
	add r0, r1, r0
	ssw	r0, -4
	br	__LBB3_17
__LBB3_17:                              #   in Loop: Header=BB3_3 Depth=2
	jsr	bot_first
	br	__LBB3_18
__LBB3_18:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_25
__LBB3_19:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_21
	br	__LBB3_20
__LBB3_20:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_24
__LBB3_21:                              #   in Loop: Header=BB3_3 Depth=2
	ldi	r0, COMMAND
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_23
	br	__LBB3_22
__LBB3_22:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, FOLD
	ldi	r0, 1
	stw	r1, r0
	br	__LBB3_27
__LBB3_23:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_24
__LBB3_24:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_25
__LBB3_25:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_26
__LBB3_26:                              #   in Loop: Header=BB3_3 Depth=2
	br	__LBB3_3
__LBB3_27:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, RAUND
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_29
	br	__LBB3_28
__LBB3_28:
	ldi	r0, RAUND
	ldw	r0, r0
	ssw	r0, -2
	br	__LBB3_32
__LBB3_29:                              #   in Loop: Header=BB3_1 Depth=1
	br	__LBB3_30
__LBB3_30:                              #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB3_1
__LBB3_31:
	ldi	r0, 0
	ssw	r0, -2
	br	__LBB3_32
__LBB3_32:
	lsw	r0, -2
	addsp	8
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
	shl	r0, r0, 2
	ldi	r1, hand2
	ldw	r0, r1, r0
	ldi	r1, 72
	cmp	r0, r1
	bne	__LBB4_2
	br	__LBB4_1
__LBB4_1:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, SEQUENCE
	ldi	r0, 49
	stw	r1, r2, r0
	br	__LBB4_9
__LBB4_2:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 2
	ldi	r1, hand2
	ldw	r0, r1, r0
	ldi	r1, 68
	cmp	r0, r1
	bne	__LBB4_4
	br	__LBB4_3
__LBB4_3:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, SEQUENCE
	ldi	r0, 50
	stw	r1, r2, r0
	br	__LBB4_8
__LBB4_4:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 2
	ldi	r1, hand2
	ldw	r0, r1, r0
	ldi	r1, 83
	cmp	r0, r1
	bne	__LBB4_6
	br	__LBB4_5
__LBB4_5:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, SEQUENCE
	ldi	r0, 52
	stw	r1, r2, r0
	br	__LBB4_7
__LBB4_6:
	lsw	r0, -2
	shl	r0, r1, 1
	ldi	r2, SEQUENCE
	ldi	r0, 55
	stw	r1, r2, r0
	br	__LBB4_7
__LBB4_7:
	br	__LBB4_8
__LBB4_8:
	br	__LBB4_9
__LBB4_9:
	ldi	r0, hand_iteration
	ldw	r0, r0
	shl	r0, r0, 2
	ldi	r1, hand2+2
	ldw	r0, r1, r0
	lsw	r1, -4
	shl	r1, r1, 1
	ldi	r2, SEQUENCE
	stw	r1, r2, r0
	addsp	4
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-10
	ldi	r0, 0
	ssw	r0, -8                          # 2-byte Folded Spill
	ssw	r0, -2
	ssw	r0, -4
	jsr	generate_cards
	ldi	r0, 16
	ldi	r1, 25
	jsr	insert_seq_player
	ldi	r1, hand_iteration
	ssw	r1, -10                         # 2-byte Folded Spill
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 39
	ldi	r1, 48
	jsr	insert_seq_player
	lsw	r1, -10                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 62
	ldi	r1, 71
	jsr	insert_seq_player
	lsw	r1, -10                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 85
	ldi	r1, 94
	jsr	insert_seq_player
	lsw	r1, -10                         # 2-byte Folded Reload
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	ldi	r0, 108
	ldi	r1, 117
	jsr	insert_seq_player
	jsr	analysis
	ldi	r1, RD_WR
	ldi	r0, 1
	stw	r1, r0
	ldi	r2, SEQUENCE_LEN
	ldi	r1, 63
	stw	r2, r1
	ldi	r1, RAUND
	stw	r1, r0
	ldi	r0, COMB1
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, stronger_probabilities
	ldw	r0, r1, r0
	ssw	r0, -6
	lsw	r0, -6
	jsr	raund
                                        # kill: def $r1 killed $r0
	lsw	r0, -8                          # 2-byte Folded Reload
	addsp	10
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
dare>                                   # @dare
	dc	48                              # 0x30
	dc	50                              # 0x32
	dc	48                              # 0x30
	dc	51                              # 0x33
	dc	48                              # 0x30
	dc	52                              # 0x34
	dc	48                              # 0x30
	dc	53                              # 0x35
	dc	48                              # 0x30
	dc	54                              # 0x36
	dc	48                              # 0x30
	dc	55                              # 0x37
	dc	48                              # 0x30
	dc	56                              # 0x38
	dc	48                              # 0x30
	dc	57                              # 0x39
	dc	48                              # 0x30
	dc	84                              # 0x54
	dc	48                              # 0x30
	dc	74                              # 0x4a
	dc	48                              # 0x30
	dc	81                              # 0x51
	dc	48                              # 0x30
	dc	75                              # 0x4b
	dc	48                              # 0x30
	dc	65                              # 0x41
	dc	68                              # 0x44
	dc	50                              # 0x32
	dc	68                              # 0x44
	dc	51                              # 0x33
	dc	68                              # 0x44
	dc	52                              # 0x34
	dc	68                              # 0x44
	dc	53                              # 0x35
	dc	68                              # 0x44
	dc	54                              # 0x36
	dc	68                              # 0x44
	dc	55                              # 0x37
	dc	68                              # 0x44
	dc	56                              # 0x38
	dc	68                              # 0x44
	dc	57                              # 0x39
	dc	68                              # 0x44
	dc	84                              # 0x54
	dc	68                              # 0x44
	dc	74                              # 0x4a
	dc	68                              # 0x44
	dc	81                              # 0x51
	dc	68                              # 0x44
	dc	75                              # 0x4b
	dc	68                              # 0x44
	dc	65                              # 0x41
	dc	83                              # 0x53
	dc	50                              # 0x32
	dc	83                              # 0x53
	dc	51                              # 0x33
	dc	83                              # 0x53
	dc	52                              # 0x34
	dc	83                              # 0x53
	dc	53                              # 0x35
	dc	83                              # 0x53
	dc	54                              # 0x36
	dc	83                              # 0x53
	dc	55                              # 0x37
	dc	83                              # 0x53
	dc	56                              # 0x38
	dc	83                              # 0x53
	dc	57                              # 0x39
	dc	83                              # 0x53
	dc	84                              # 0x54
	dc	83                              # 0x53
	dc	74                              # 0x4a
	dc	83                              # 0x53
	dc	81                              # 0x51
	dc	83                              # 0x53
	dc	75                              # 0x4b
	dc	83                              # 0x53
	dc	65                              # 0x41
	dc	67                              # 0x43
	dc	50                              # 0x32
	dc	67                              # 0x43
	dc	51                              # 0x33
	dc	67                              # 0x43
	dc	52                              # 0x34
	dc	67                              # 0x43
	dc	53                              # 0x35
	dc	67                              # 0x43
	dc	54                              # 0x36
	dc	67                              # 0x43
	dc	55                              # 0x37
	dc	67                              # 0x43
	dc	56                              # 0x38
	dc	67                              # 0x43
	dc	57                              # 0x39
	dc	67                              # 0x43
	dc	84                              # 0x54
	dc	67                              # 0x43
	dc	74                              # 0x4a
	dc	67                              # 0x43
	dc	81                              # 0x51
	dc	67                              # 0x43
	dc	75                              # 0x4b
	dc	67                              # 0x43
	dc	65                              # 0x41

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
res1>                                   # @res1
	ds	26

res2>                                   # @res2
	ds	26

flags>                                  # @flags
	ds	4

flash>                                  # @flash
	ds	4

hand1>                                  # @hand1
	ds	20

hand2>                                  # @hand2
	ds	20

hand_iteration>                         # @hand_iteration
	dc	0                               # 0x0

end.
