{-# OPTIONS_GHC -w #-}
module ParserC0 where
import LexerC0
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,284) ([0,112,0,0,896,0,0,0,0,0,4352,0,0,0,0,0,0,0,0,0,0,0,0,3584,0,0,0,0,0,0,4,0,0,32,0,0,512,0,0,1792,0,0,64,0,0,0,4100,0,0,128,0,0,0,0,0,8192,0,0,7168,0,0,0,0,0,2048,0,0,0,0,0,0,12754,16384,11,0,64,0,0,0,0,1024,0,0,0,160,0,49152,24839,0,0,0,0,0,0,0,0,0,2,0,0,16,0,0,128,0,0,1024,0,0,7456,1,180,0,0,0,0,8192,0,8192,0,0,32768,49667,0,0,4220,6,1,33760,48,8,41984,99,5760,0,31744,0,0,0,8,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,33799,1,0,0,4,0,0,64,0,3584,776,0,28672,6208,32768,0,2048,8,0,0,0,0,32992,48,0,0,0,0,0,64512,0,0,256,0,0,4096,64,0,64,0,0,512,0,0,0,15904,0,57344,12416,0,0,32768,0,0,0,8,0,448,97,0,3584,776,0,28672,6208,0,32768,49667,0,0,4124,6,0,32992,48,0,0,0,0,0,31744,126,0,512,3072,0,2048,0,0,0,0,0,0,0,0,0,16,0,0,256,1536,0,34816,15,0,16384,0,0,0,16,0,0,0,0,0,0,1,0,0,8,0,36496,0,90,33760,48,8,7936,388,64,63488,3104,512,49152,24833,0,0,18248,0,45,16496,24,0,896,194,0,7168,1552,0,57344,12416,0,0,33799,1,0,8248,12,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,56,0,0,496,0,0,0,0,0,0,0,0,512,8,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,256,0,0,0,0,0,0,252,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,62,0,0,496,0,0,3968,0,0,31744,0,0,57344,3,0,0,31,0,0,0,0,0,4100,0,0,32,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36496,0,90,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parserC0","Funcs","Func","ReturnStm","Stm","Exp","ExpCompare","Stmts","Type","Decl","Exps","num","str","id","true","false","return","main","int","bool","string","'('","')'","'='","'{'","'}'","'+'","'-'","'*'","'/'","'%'","';'","','","\"==\"","\"!=\"","\"<\"","\">\"","\">=\"","\"<=\"","\"&&\"","\"||\"","'!'","if","else","while","printint","scanint","printstr","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (21) = happyShift action_4
action_0 (22) = happyShift action_5
action_0 (23) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_2
action_0 (11) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_4
action_1 (22) = happyShift action_5
action_1 (23) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 (11) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (16) = happyShift action_9
action_3 (20) = happyShift action_10
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_48

action_5 _ = happyReduce_49

action_6 _ = happyReduce_50

action_7 (21) = happyShift action_4
action_7 (22) = happyShift action_5
action_7 (23) = happyShift action_6
action_7 (51) = happyAccept
action_7 (5) = happyGoto action_8
action_7 (11) = happyGoto action_3
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (24) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (24) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (25) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (21) = happyShift action_4
action_12 (22) = happyShift action_5
action_12 (23) = happyShift action_6
action_12 (11) = happyGoto action_13
action_12 (12) = happyGoto action_14
action_12 _ = happyReduce_51

action_13 (16) = happyShift action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (25) = happyShift action_17
action_14 (35) = happyShift action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (27) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (10) = happyGoto action_22
action_16 _ = happyReduce_46

action_17 (27) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (21) = happyShift action_4
action_18 (22) = happyShift action_5
action_18 (23) = happyShift action_6
action_18 (11) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_52

action_20 (16) = happyShift action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyGoto action_34
action_21 _ = happyReduce_46

action_22 (16) = happyShift action_26
action_22 (19) = happyShift action_27
action_22 (21) = happyShift action_4
action_22 (22) = happyShift action_5
action_22 (23) = happyShift action_6
action_22 (27) = happyShift action_28
action_22 (28) = happyShift action_29
action_22 (45) = happyShift action_30
action_22 (47) = happyShift action_31
action_22 (48) = happyShift action_32
action_22 (50) = happyShift action_33
action_22 (6) = happyGoto action_23
action_22 (7) = happyGoto action_24
action_22 (11) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (34) = happyShift action_55
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_47

action_25 (16) = happyShift action_54
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (24) = happyShift action_52
action_26 (26) = happyShift action_53
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_44
action_27 (15) = happyShift action_45
action_27 (16) = happyShift action_46
action_27 (17) = happyShift action_47
action_27 (18) = happyShift action_48
action_27 (24) = happyShift action_49
action_27 (29) = happyShift action_50
action_27 (30) = happyShift action_51
action_27 (8) = happyGoto action_42
action_27 (13) = happyGoto action_43
action_27 _ = happyReduce_54

action_28 (10) = happyGoto action_41
action_28 _ = happyReduce_46

action_29 _ = happyReduce_4

action_30 (24) = happyShift action_40
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_39
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (24) = happyShift action_38
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (24) = happyShift action_37
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (16) = happyShift action_26
action_34 (19) = happyShift action_27
action_34 (21) = happyShift action_4
action_34 (22) = happyShift action_5
action_34 (23) = happyShift action_6
action_34 (27) = happyShift action_28
action_34 (45) = happyShift action_30
action_34 (47) = happyShift action_31
action_34 (48) = happyShift action_32
action_34 (50) = happyShift action_33
action_34 (6) = happyGoto action_36
action_34 (7) = happyGoto action_24
action_34 (11) = happyGoto action_25
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_53

action_36 (34) = happyShift action_83
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (15) = happyShift action_82
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_44
action_38 (15) = happyShift action_45
action_38 (16) = happyShift action_46
action_38 (24) = happyShift action_49
action_38 (29) = happyShift action_50
action_38 (30) = happyShift action_51
action_38 (8) = happyGoto action_81
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_44
action_39 (15) = happyShift action_45
action_39 (16) = happyShift action_76
action_39 (17) = happyShift action_77
action_39 (18) = happyShift action_78
action_39 (24) = happyShift action_49
action_39 (29) = happyShift action_50
action_39 (30) = happyShift action_51
action_39 (44) = happyShift action_79
action_39 (8) = happyGoto action_74
action_39 (9) = happyGoto action_80
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_44
action_40 (15) = happyShift action_45
action_40 (16) = happyShift action_76
action_40 (17) = happyShift action_77
action_40 (18) = happyShift action_78
action_40 (24) = happyShift action_49
action_40 (29) = happyShift action_50
action_40 (30) = happyShift action_51
action_40 (44) = happyShift action_79
action_40 (8) = happyGoto action_74
action_40 (9) = happyGoto action_75
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_26
action_41 (19) = happyShift action_27
action_41 (21) = happyShift action_4
action_41 (22) = happyShift action_5
action_41 (23) = happyShift action_6
action_41 (27) = happyShift action_28
action_41 (28) = happyShift action_73
action_41 (45) = happyShift action_30
action_41 (47) = happyShift action_31
action_41 (48) = happyShift action_32
action_41 (50) = happyShift action_33
action_41 (6) = happyGoto action_23
action_41 (7) = happyGoto action_24
action_41 (11) = happyGoto action_25
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (29) = happyShift action_68
action_42 (30) = happyShift action_69
action_42 (31) = happyShift action_70
action_42 (32) = happyShift action_71
action_42 (33) = happyShift action_72
action_42 _ = happyReduce_55

action_43 (35) = happyShift action_67
action_43 _ = happyReduce_5

action_44 _ = happyReduce_20

action_45 _ = happyReduce_21

action_46 (24) = happyShift action_64
action_46 (29) = happyShift action_65
action_46 (30) = happyShift action_66
action_46 _ = happyReduce_22

action_47 _ = happyReduce_6

action_48 _ = happyReduce_7

action_49 (14) = happyShift action_44
action_49 (15) = happyShift action_45
action_49 (16) = happyShift action_46
action_49 (24) = happyShift action_49
action_49 (29) = happyShift action_50
action_49 (30) = happyShift action_51
action_49 (8) = happyGoto action_63
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (29) = happyShift action_62
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (30) = happyShift action_61
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_44
action_52 (15) = happyShift action_45
action_52 (16) = happyShift action_46
action_52 (24) = happyShift action_49
action_52 (29) = happyShift action_50
action_52 (30) = happyShift action_51
action_52 (8) = happyGoto action_42
action_52 (13) = happyGoto action_60
action_52 _ = happyReduce_54

action_53 (14) = happyShift action_44
action_53 (15) = happyShift action_45
action_53 (16) = happyShift action_46
action_53 (24) = happyShift action_49
action_53 (29) = happyShift action_50
action_53 (30) = happyShift action_51
action_53 (49) = happyShift action_59
action_53 (8) = happyGoto action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (26) = happyShift action_56
action_54 (34) = happyShift action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_16

action_56 (14) = happyShift action_44
action_56 (15) = happyShift action_45
action_56 (16) = happyShift action_46
action_56 (24) = happyShift action_49
action_56 (29) = happyShift action_50
action_56 (30) = happyShift action_51
action_56 (8) = happyGoto action_114
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_10

action_58 (29) = happyShift action_68
action_58 (30) = happyShift action_69
action_58 (31) = happyShift action_70
action_58 (32) = happyShift action_71
action_58 (33) = happyShift action_72
action_58 (34) = happyShift action_113
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (24) = happyShift action_112
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (25) = happyShift action_111
action_60 (35) = happyShift action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (16) = happyShift action_110
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (16) = happyShift action_109
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (25) = happyShift action_108
action_63 (29) = happyShift action_68
action_63 (30) = happyShift action_69
action_63 (31) = happyShift action_70
action_63 (32) = happyShift action_71
action_63 (33) = happyShift action_72
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (14) = happyShift action_44
action_64 (15) = happyShift action_45
action_64 (16) = happyShift action_46
action_64 (24) = happyShift action_49
action_64 (29) = happyShift action_50
action_64 (30) = happyShift action_51
action_64 (8) = happyGoto action_42
action_64 (13) = happyGoto action_107
action_64 _ = happyReduce_54

action_65 (29) = happyShift action_106
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (30) = happyShift action_105
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_44
action_67 (15) = happyShift action_45
action_67 (16) = happyShift action_46
action_67 (24) = happyShift action_49
action_67 (29) = happyShift action_50
action_67 (30) = happyShift action_51
action_67 (8) = happyGoto action_104
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (14) = happyShift action_44
action_68 (15) = happyShift action_45
action_68 (16) = happyShift action_46
action_68 (24) = happyShift action_49
action_68 (29) = happyShift action_50
action_68 (30) = happyShift action_51
action_68 (8) = happyGoto action_103
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_44
action_69 (15) = happyShift action_45
action_69 (16) = happyShift action_46
action_69 (24) = happyShift action_49
action_69 (29) = happyShift action_50
action_69 (30) = happyShift action_51
action_69 (8) = happyGoto action_102
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_44
action_70 (15) = happyShift action_45
action_70 (16) = happyShift action_46
action_70 (24) = happyShift action_49
action_70 (29) = happyShift action_50
action_70 (30) = happyShift action_51
action_70 (8) = happyGoto action_101
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (14) = happyShift action_44
action_71 (15) = happyShift action_45
action_71 (16) = happyShift action_46
action_71 (24) = happyShift action_49
action_71 (29) = happyShift action_50
action_71 (30) = happyShift action_51
action_71 (8) = happyGoto action_100
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_44
action_72 (15) = happyShift action_45
action_72 (16) = happyShift action_46
action_72 (24) = happyShift action_49
action_72 (29) = happyShift action_50
action_72 (30) = happyShift action_51
action_72 (8) = happyGoto action_99
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_15

action_74 (29) = happyShift action_68
action_74 (30) = happyShift action_69
action_74 (31) = happyShift action_70
action_74 (32) = happyShift action_71
action_74 (33) = happyShift action_72
action_74 (36) = happyShift action_93
action_74 (37) = happyShift action_94
action_74 (38) = happyShift action_95
action_74 (39) = happyShift action_96
action_74 (40) = happyShift action_97
action_74 (41) = happyShift action_98
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (25) = happyShift action_92
action_75 (42) = happyShift action_88
action_75 (43) = happyShift action_89
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (24) = happyShift action_91
action_76 (29) = happyShift action_65
action_76 (30) = happyShift action_66
action_76 _ = happyReduce_22

action_77 _ = happyReduce_43

action_78 _ = happyReduce_44

action_79 (24) = happyShift action_90
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (25) = happyShift action_87
action_80 (42) = happyShift action_88
action_80 (43) = happyShift action_89
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (25) = happyShift action_86
action_81 (29) = happyShift action_68
action_81 (30) = happyShift action_69
action_81 (31) = happyShift action_70
action_81 (32) = happyShift action_71
action_81 (33) = happyShift action_72
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (25) = happyShift action_85
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (28) = happyShift action_84
action_83 _ = happyReduce_16

action_84 _ = happyReduce_3

action_85 (34) = happyShift action_132
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (34) = happyShift action_131
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (16) = happyShift action_26
action_87 (19) = happyShift action_27
action_87 (21) = happyShift action_4
action_87 (22) = happyShift action_5
action_87 (23) = happyShift action_6
action_87 (27) = happyShift action_28
action_87 (45) = happyShift action_30
action_87 (47) = happyShift action_31
action_87 (48) = happyShift action_32
action_87 (50) = happyShift action_33
action_87 (6) = happyGoto action_23
action_87 (7) = happyGoto action_130
action_87 (11) = happyGoto action_25
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (14) = happyShift action_44
action_88 (15) = happyShift action_45
action_88 (16) = happyShift action_76
action_88 (17) = happyShift action_77
action_88 (18) = happyShift action_78
action_88 (24) = happyShift action_49
action_88 (29) = happyShift action_50
action_88 (30) = happyShift action_51
action_88 (44) = happyShift action_79
action_88 (8) = happyGoto action_74
action_88 (9) = happyGoto action_129
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (14) = happyShift action_44
action_89 (15) = happyShift action_45
action_89 (16) = happyShift action_76
action_89 (17) = happyShift action_77
action_89 (18) = happyShift action_78
action_89 (24) = happyShift action_49
action_89 (29) = happyShift action_50
action_89 (30) = happyShift action_51
action_89 (44) = happyShift action_79
action_89 (8) = happyGoto action_74
action_89 (9) = happyGoto action_128
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (14) = happyShift action_44
action_90 (15) = happyShift action_45
action_90 (16) = happyShift action_76
action_90 (17) = happyShift action_77
action_90 (18) = happyShift action_78
action_90 (24) = happyShift action_49
action_90 (29) = happyShift action_50
action_90 (30) = happyShift action_51
action_90 (44) = happyShift action_79
action_90 (8) = happyGoto action_74
action_90 (9) = happyGoto action_127
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (14) = happyShift action_44
action_91 (15) = happyShift action_45
action_91 (16) = happyShift action_46
action_91 (24) = happyShift action_49
action_91 (29) = happyShift action_50
action_91 (30) = happyShift action_51
action_91 (8) = happyGoto action_42
action_91 (13) = happyGoto action_126
action_91 _ = happyReduce_54

action_92 (16) = happyShift action_26
action_92 (19) = happyShift action_27
action_92 (21) = happyShift action_4
action_92 (22) = happyShift action_5
action_92 (23) = happyShift action_6
action_92 (27) = happyShift action_28
action_92 (45) = happyShift action_30
action_92 (47) = happyShift action_31
action_92 (48) = happyShift action_32
action_92 (50) = happyShift action_33
action_92 (6) = happyGoto action_23
action_92 (7) = happyGoto action_125
action_92 (11) = happyGoto action_25
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (14) = happyShift action_44
action_93 (15) = happyShift action_45
action_93 (16) = happyShift action_46
action_93 (24) = happyShift action_49
action_93 (29) = happyShift action_50
action_93 (30) = happyShift action_51
action_93 (8) = happyGoto action_124
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (14) = happyShift action_44
action_94 (15) = happyShift action_45
action_94 (16) = happyShift action_46
action_94 (24) = happyShift action_49
action_94 (29) = happyShift action_50
action_94 (30) = happyShift action_51
action_94 (8) = happyGoto action_123
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (14) = happyShift action_44
action_95 (15) = happyShift action_45
action_95 (16) = happyShift action_46
action_95 (24) = happyShift action_49
action_95 (29) = happyShift action_50
action_95 (30) = happyShift action_51
action_95 (8) = happyGoto action_122
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (14) = happyShift action_44
action_96 (15) = happyShift action_45
action_96 (16) = happyShift action_46
action_96 (24) = happyShift action_49
action_96 (29) = happyShift action_50
action_96 (30) = happyShift action_51
action_96 (8) = happyGoto action_121
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (14) = happyShift action_44
action_97 (15) = happyShift action_45
action_97 (16) = happyShift action_46
action_97 (24) = happyShift action_49
action_97 (29) = happyShift action_50
action_97 (30) = happyShift action_51
action_97 (8) = happyGoto action_120
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (14) = happyShift action_44
action_98 (15) = happyShift action_45
action_98 (16) = happyShift action_46
action_98 (24) = happyShift action_49
action_98 (29) = happyShift action_50
action_98 (30) = happyShift action_51
action_98 (8) = happyGoto action_119
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_28

action_100 _ = happyReduce_27

action_101 _ = happyReduce_26

action_102 (31) = happyShift action_70
action_102 (32) = happyShift action_71
action_102 (33) = happyShift action_72
action_102 _ = happyReduce_25

action_103 (31) = happyShift action_70
action_103 (32) = happyShift action_71
action_103 (33) = happyShift action_72
action_103 _ = happyReduce_24

action_104 (29) = happyShift action_68
action_104 (30) = happyShift action_69
action_104 (31) = happyShift action_70
action_104 (32) = happyShift action_71
action_104 (33) = happyShift action_72
action_104 _ = happyReduce_56

action_105 _ = happyReduce_33

action_106 _ = happyReduce_31

action_107 (25) = happyShift action_118
action_107 (35) = happyShift action_67
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_23

action_109 _ = happyReduce_30

action_110 _ = happyReduce_32

action_111 (34) = happyShift action_117
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (25) = happyShift action_116
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_8

action_114 (29) = happyShift action_68
action_114 (30) = happyShift action_69
action_114 (31) = happyShift action_70
action_114 (32) = happyShift action_71
action_114 (33) = happyShift action_72
action_114 (34) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_11

action_116 (34) = happyShift action_136
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_17

action_118 _ = happyReduce_29

action_119 (29) = happyShift action_68
action_119 (30) = happyShift action_69
action_119 (31) = happyShift action_70
action_119 (32) = happyShift action_71
action_119 (33) = happyShift action_72
action_119 _ = happyReduce_36

action_120 (29) = happyShift action_68
action_120 (30) = happyShift action_69
action_120 (31) = happyShift action_70
action_120 (32) = happyShift action_71
action_120 (33) = happyShift action_72
action_120 _ = happyReduce_37

action_121 (29) = happyShift action_68
action_121 (30) = happyShift action_69
action_121 (31) = happyShift action_70
action_121 (32) = happyShift action_71
action_121 (33) = happyShift action_72
action_121 _ = happyReduce_39

action_122 (29) = happyShift action_68
action_122 (30) = happyShift action_69
action_122 (31) = happyShift action_70
action_122 (32) = happyShift action_71
action_122 (33) = happyShift action_72
action_122 _ = happyReduce_38

action_123 (29) = happyShift action_68
action_123 (30) = happyShift action_69
action_123 (31) = happyShift action_70
action_123 (32) = happyShift action_71
action_123 (33) = happyShift action_72
action_123 _ = happyReduce_35

action_124 (29) = happyShift action_68
action_124 (30) = happyShift action_69
action_124 (31) = happyShift action_70
action_124 (32) = happyShift action_71
action_124 (33) = happyShift action_72
action_124 _ = happyReduce_34

action_125 (46) = happyShift action_135
action_125 _ = happyReduce_13

action_126 (25) = happyShift action_134
action_126 (35) = happyShift action_67
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (25) = happyShift action_133
action_127 (42) = happyShift action_88
action_127 (43) = happyShift action_89
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_41

action_129 _ = happyReduce_40

action_130 _ = happyReduce_14

action_131 _ = happyReduce_18

action_132 _ = happyReduce_19

action_133 _ = happyReduce_42

action_134 (29) = happyReduce_29
action_134 (30) = happyReduce_29
action_134 (31) = happyReduce_29
action_134 (32) = happyReduce_29
action_134 (33) = happyReduce_29
action_134 (36) = happyReduce_29
action_134 (37) = happyReduce_29
action_134 (38) = happyReduce_29
action_134 (39) = happyReduce_29
action_134 (40) = happyReduce_29
action_134 (41) = happyReduce_29
action_134 _ = happyReduce_45

action_135 (16) = happyShift action_26
action_135 (19) = happyShift action_27
action_135 (21) = happyShift action_4
action_135 (22) = happyShift action_5
action_135 (23) = happyShift action_6
action_135 (27) = happyShift action_28
action_135 (45) = happyShift action_30
action_135 (47) = happyShift action_31
action_135 (48) = happyShift action_32
action_135 (50) = happyShift action_33
action_135 (6) = happyGoto action_23
action_135 (7) = happyGoto action_137
action_135 (11) = happyGoto action_25
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_9

action_137 _ = happyReduce_12

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 10 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_8) `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Funct happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncMain happy_var_1 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_2  6 happyReduction_5
happyReduction_5 (HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (ReturnExp happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  6 happyReduction_6
happyReduction_6 _
	_
	 =  HappyAbsSyn6
		 (ReturnBool True
	)

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 _
	_
	 =  HappyAbsSyn6
		 (ReturnBool False
	)

happyReduce_8 = happyReduce 4 7 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 6 7 happyReduction_9
happyReduction_9 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ScanInt happy_var_1
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 _
	(HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn7
		 (Declr happy_var_1 happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 5 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 7 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_3 happy_var_5 Else happy_var_7
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 5 7 happyReduction_13
happyReduction_13 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_3 happy_var_5 Skip Skip
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 7 happyReduction_14
happyReduction_14 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Block happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  7 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (Return happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 5 7 happyReduction_18
happyReduction_18 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 7 happyReduction_19
happyReduction_19 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (STRING_TOK happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintStr happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (NUM_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Num happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyTerminal (STRING_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Str happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Div happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 8 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_3  8 happyReduction_30
happyReduction_30 (HappyTerminal (VAR_TOK happy_var_3))
	_
	_
	 =  HappyAbsSyn8
		 (PreIncr happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  8 happyReduction_31
happyReduction_31 _
	_
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (PostIncr happy_var_1
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  8 happyReduction_32
happyReduction_32 (HappyTerminal (VAR_TOK happy_var_3))
	_
	_
	 =  HappyAbsSyn8
		 (PreDecr happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  8 happyReduction_33
happyReduction_33 _
	_
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (PostDecr happy_var_1
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (IsEqual happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (IsNEqual happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  9 happyReduction_39
happyReduction_39 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  9 happyReduction_40
happyReduction_40 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (And happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Or happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 9 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Not happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  9 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn9
		 (Bconst True
	)

happyReduce_44 = happySpecReduce_1  9 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn9
		 (Bconst False
	)

happyReduce_45 = happyReduce 4 9 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_0  10 happyReduction_46
happyReduction_46  =  HappyAbsSyn10
		 ([]
	)

happyReduce_47 = happySpecReduce_2  10 happyReduction_47
happyReduction_47 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  11 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn11
		 (Tint
	)

happyReduce_49 = happySpecReduce_1  11 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn11
		 (Tbool
	)

happyReduce_50 = happySpecReduce_1  11 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn11
		 (Tstring
	)

happyReduce_51 = happySpecReduce_0  12 happyReduction_51
happyReduction_51  =  HappyAbsSyn12
		 ([]
	)

happyReduce_52 = happySpecReduce_2  12 happyReduction_52
happyReduction_52 (HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 ([(happy_var_1,happy_var_2)]
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happyReduce 4 12 happyReduction_53
happyReduction_53 ((HappyTerminal (VAR_TOK happy_var_4)) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_0  13 happyReduction_54
happyReduction_54  =  HappyAbsSyn13
		 ([]
	)

happyReduce_55 = happySpecReduce_1  13 happyReduction_55
happyReduction_55 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  13 happyReduction_56
happyReduction_56 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	NUM_TOK happy_dollar_dollar -> cont 14;
	STRING_TOK happy_dollar_dollar -> cont 15;
	VAR_TOK happy_dollar_dollar -> cont 16;
	TRUE_TOK happy_dollar_dollar -> cont 17;
	FALSE_TOK happy_dollar_dollar -> cont 18;
	RETURN_TOK -> cont 19;
	MAIN_TOK -> cont 20;
	INT_DEF_TOK -> cont 21;
	BOOL_DEF_TOK -> cont 22;
	STRING_DEF_TOK -> cont 23;
	LPAREN_TOK -> cont 24;
	RPAREN_TOK -> cont 25;
	ASSIGN_TOK -> cont 26;
	LBRACE_TOK -> cont 27;
	RBRACE_TOK -> cont 28;
	PLUS_TOK -> cont 29;
	MINUS_TOK -> cont 30;
	MULT_TOK -> cont 31;
	DIV_TOK -> cont 32;
	MOD_TOK -> cont 33;
	SEMICOLON_TOK -> cont 34;
	COLON_TOK -> cont 35;
	EQUAL_TOK -> cont 36;
	NEQUAL_TOK -> cont 37;
	LTHEN_TOK -> cont 38;
	GTHEN_TOK -> cont 39;
	GTOE_TOK -> cont 40;
	LTOE_TOK -> cont 41;
	AND_TOK -> cont 42;
	OR_TOK -> cont 43;
	NOT_TOK -> cont 44;
	IF_TOK -> cont 45;
	ELSE_TOK -> cont 46;
	WHILE_TOK -> cont 47;
	PRINTINT_TOK -> cont 48;
	SCANINT_TOK -> cont 49;
	PRINTSTR_TOK -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parserC0 tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


type Dcl = (Type,String)

data Type = Tint | Tbool | Tstring deriving Show

data Func = Funct Type String [Dcl] [Stm] ReturnStm
          | FuncMain Type [Stm]
          deriving Show

data ReturnStm = ReturnExp [Exp]
               | ReturnBool Bool
               deriving Show

data Stm = Assign String Exp
         | Declr Type String
         | DeclAsgn Type String Exp
         | If ExpCompare Stm Stm Stm
         | Else
         | While ExpCompare Stm
         | FuncCall String [Exp]
         | PrintInt Exp
         | ScanInt String
         | PrintStr String
        -- | For
         | Block [Stm]
         | Return ReturnStm
         | Skip
         deriving Show

data Exp = Num Int
         | Str String
         | Var String
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | FuncCallExp String [Exp]
         | PreIncr String
         | PostIncr String
         | PreDecr String
         | PostDecr String
         deriving Show

data ExpCompare = LessThan Exp Exp
                | GreaterThan Exp Exp
                | LessOrEqual Exp Exp
                | GreaterOrEqual Exp Exp
                | IsEqual Exp Exp
                | IsNEqual Exp Exp
                | Bconst Bool
                | And ExpCompare ExpCompare
                | Or ExpCompare ExpCompare
                | Not ExpCompare
                | FuncCallExpC String [Exp]
                deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
