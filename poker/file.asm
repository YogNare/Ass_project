### SECTION: .text
rsect _main_c_41

COMB1: ext
COMB2: ext
WHO_WIN: ext
SUIT_VALUE: ext
BID_PLAYER: ext
BID_BOT: ext
BALANCE_BOT: ext
RAUND: ext
FOLD: ext
RD_WR: ext
COMMAND: ext
BID_COMMAND: ext
BALANCE_PLAYER: ext


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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_4
	br	__LBB0_3
__LBB0_3:                               #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -4
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand1+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
	ldi	r1, 57
	cmp	r0, r1
	bgt	__LBB0_20
	br	__LBB0_19
__LBB0_19:                              #   in Loop: Header=BB0_17 Depth=1
	lsw	r0, -6
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	shl	r0, r0, 1
	ldi	r1, hand2+1
	ldsb	r0, r1, r0
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
	ldsb	r0, r0
	ldi	r1, hand1+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_33
__LBB0_33:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_34
__LBB0_34:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_37
	br	__LBB0_35
__LBB0_35:
	ldi	r0, hand1
	ldsb	r0, r0
	ldi	r1, hand1+8
	ldsb	r1, r1
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
	ldsb	r0, r0
	ldi	r1, hand2+2
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_38
__LBB0_38:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+4
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_39
__LBB0_39:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+6
	ldsb	r1, r1
	cmp	r0, r1
	bne	__LBB0_42
	br	__LBB0_40
__LBB0_40:
	ldi	r0, hand2
	ldsb	r0, r0
	ldi	r1, hand2+8
	ldsb	r1, r1
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
	ldi	r1, card_raund
	ldw	r1, r0
	shl	r0, r2, 1
	ldi	r3, hand1
	ldi	r0, SUIT_VALUE
	ldw	r2, r0, r0
	shl	r0, r0, 1
	ldi	r4, dare
	ldi	r5, dare+1
	ldb	r0, r5, r5
	ldi	r6, hand1+1
	stb	r2, r6, r5
	ldb	r0, r4, r0
	stb	r2, r3, r0
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB1_5
__LBB1_4:                               #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -8
	shl	r0, r1, 1
	ldi	r2, hand2
	ldi	r0, card_raund
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r3, SUIT_VALUE
	ldw	r0, r3, r0
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
bot_first>                              # -- Begin function bot_first
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
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	8
	pop	fp
	rts
                                        # -- End function
raund>                                  # -- Begin function raund
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
	bgt	__LBB3_43
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
	lsw	r0, -4
	jsr	bot_first
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
	jsr	bot_first
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
	br	__LBB3_43
__LBB3_40:                              #   in Loop: Header=BB3_1 Depth=1
	ldi	r1, RAUND
	ldw	r1, r0
	add	r0, 1
	stw	r1, r0
	br	__LBB3_41
__LBB3_41:                              #   in Loop: Header=BB3_1 Depth=1
	br	__LBB3_42
__LBB3_42:                              #   in Loop: Header=BB3_1 Depth=1
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB3_1
__LBB3_43:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	beq	__LBB3_45
	br	__LBB3_44
__LBB3_44:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	bne	__LBB3_46
	br	__LBB3_45
__LBB3_45:
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
	br	__LBB3_50
__LBB3_46:
	ldi	r0, FOLD
	ldw	r0, r0
	ldi	r1, 2
	cmp	r0, r1
	beq	__LBB3_48
	br	__LBB3_47
__LBB3_47:
	ldi	r0, WHO_WIN
	ldw	r0, r0
	ldi	r1, 1
	cmp	r0, r1
	bne	__LBB3_49
	br	__LBB3_48
__LBB3_48:
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
	br	__LBB3_49
__LBB3_49:
	br	__LBB3_50
__LBB3_50:
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	10
	pop	fp
	rts
                                        # -- End function
main>                                   # -- Begin function main
# %bb.0:
	push	fp
	ldsp	fp
	addsp	-14
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	ldi	r0, 0
	ssw	r0, -8
	ldi	r2, BALANCE_BOT
	ldi	r1, 2000
	stw	r2, r1
	ldi	r2, BALANCE_PLAYER
	stw	r2, r1
	ssw	r0, -10
	br	__LBB4_1
__LBB4_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	lsw	r0, -10
	ldi	r1, 2
	cmp	r0, r1
	bgt	__LBB4_17
	br	__LBB4_2
__LBB4_2:                               #   in Loop: Header=BB4_1 Depth=1
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
	lsw	r0, -10
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB4_4
	br	__LBB4_3
__LBB4_3:                               #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, hand1
	ldi	r0, 72
	stb	r1, r0
	ldi	r2, hand1+1
	ldi	r1, 50
	stb	r2, r1
	ldi	r3, hand1+2
	ldi	r2, 83
	stb	r3, r2
	ldi	r2, hand1+3
	ldi	r3, 51
	stb	r2, r3
	ldi	r2, hand1+4
	ldi	r4, 67
	stb	r2, r4
	ldi	r5, hand1+5
	ldi	r2, 52
	stb	r5, r2
	ldi	r5, hand1+6
	stb	r5, r0
	ldi	r6, hand1+7
	ldi	r5, 65
	stb	r6, r5
	ldi	r5, hand1+8
	stb	r5, r0
	ldi	r5, hand1+9
	ldi	r0, 55
	stb	r5, r0
	ldi	r5, hand2
	stb	r5, r4
	ldi	r4, hand2+1
	stb	r4, r1
	ldi	r4, hand2+2
	ldi	r1, 68
	stb	r4, r1
	ldi	r4, hand2+3
	stb	r4, r3
	ldi	r3, hand2+4
	stb	r3, r1
	ldi	r3, hand2+5
	stb	r3, r2
	ldi	r2, hand2+6
	stb	r2, r1
	ldi	r3, hand2+7
	ldi	r2, 75
	stb	r3, r2
	ldi	r2, hand2+8
	stb	r2, r1
	ldi	r1, hand2+9
	stb	r1, r0
	br	__LBB4_5
__LBB4_4:                               #   in Loop: Header=BB4_1 Depth=1
	jsr	generate_cards
	br	__LBB4_5
__LBB4_5:                               #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, RAUND
	ldi	r0, 1
	stw	r1, r0
	ldi	r0, 0
	ssw	r0, -12
	br	__LBB4_6
__LBB4_6:                               #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -12
	ldi	r1, 5
	cmp	r0, r1
	bgt	__LBB4_9
	br	__LBB4_7
__LBB4_7:                               #   in Loop: Header=BB4_6 Depth=2
	lsw	r0, -10
	shl	r0, r0, 1
	ldi	r1, SUIT_VALUE
	ldw	r0, r1, r0
	ldi	r1, 1
	and r0, r1, r0
	lsw	r1, -10
	shl	r1, r1, 1
	ldi	r2, prob_raise
	stw	r1, r2, r0
	br	__LBB4_8
__LBB4_8:                               #   in Loop: Header=BB4_6 Depth=2
	lsw	r0, -12
	add	r0, 1
	ssw	r0, -12
	br	__LBB4_6
__LBB4_9:                               #   in Loop: Header=BB4_1 Depth=1
	lsw	r0, -10
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB4_11
	br	__LBB4_10
__LBB4_10:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, prob_fold
	ldi	r0, 1
	stw	r1, r0
	br	__LBB4_12
__LBB4_11:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, SUIT_VALUE+12
	ldw	r0, r0
	ldi	r1, 1
	and r0, r1, r0
	ldi	r1, prob_fold
	stw	r1, r0
	br	__LBB4_12
__LBB4_12:                              #   in Loop: Header=BB4_1 Depth=1
	lsw	r0, -10
	ldi	r1, 0
	cmp	r0, r1
	bne	__LBB4_14
	br	__LBB4_13
__LBB4_13:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r1, COMB1
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, COMB2
	stw	r1, r0
	ldi	r1, WHO_WIN
	ldi	r0, 1
	stw	r1, r0
	br	__LBB4_15
__LBB4_14:                              #   in Loop: Header=BB4_1 Depth=1
	jsr	analysis
	br	__LBB4_15
__LBB4_15:                              #   in Loop: Header=BB4_1 Depth=1
	ldi	r0, COMB1
	ldw	r0, r0
	shl	r0, r0, 1
	ldi	r1, stronger_probabilities
	ldw	r0, r1, r0
	ssw	r0, -14
	lsw	r0, -14
	jsr	raund
	ldi	r1, BID_BOT
	ldi	r0, 0
	stw	r1, r0
	ldi	r1, BID_PLAYER
	stw	r1, r0
	ldi	r1, RD_WR
	ldi	r0, 1
	stw	r1, r0
	br	__LBB4_16
__LBB4_16:                              #   in Loop: Header=BB4_1 Depth=1
	lsw	r0, -10
	add	r0, 1
	ssw	r0, -10
	br	__LBB4_1
__LBB4_17:
	ldi	r0, 0
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	14
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
res1>                                   # @res1
	ds	26

res2>                                   # @res2
	ds	26

flags>                                  # @flags
	ds	4

flash>                                  # @flash
	ds	4

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

end.
