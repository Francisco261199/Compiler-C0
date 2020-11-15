{-# OPTIONS_GHC -w #-}
module ParserC0 where
import LexerC0
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,386) ([0,3584,0,0,0,112,0,0,0,0,0,0,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,448,0,0,0,0,0,0,32768,0,0,0,1024,0,0,0,64,0,0,57344,0,0,0,2,0,0,0,128,2,0,0,16,0,0,0,0,0,0,1024,0,0,32768,3,0,0,0,0,0,16384,0,0,0,0,0,0,0,14480,6,2976,0,0,8,0,0,0,0,0,0,0,0,0,1,0,0,0,160,0,0,496,12289,0,0,0,0,0,0,0,0,0,0,2,0,0,4096,0,0,0,128,0,0,0,4,0,0,8192,0,0,16384,2274,32768,46,0,0,0,0,0,256,0,16384,0,0,0,1792,16,3,0,28704,512,0,49152,1031,192,1,15872,32,2054,0,57920,24,11904,0,0,31,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,49172,0,0,0,0,0,0,0,0,0,896,32776,1,0,16,0,0,32768,0,0,0,1792,16,3,0,32824,6144,2048,0,4096,16,0,0,0,0,0,112,12289,0,0,0,0,0,0,63488,1,0,0,2,0,0,8192,128,0,0,0,0,0,0,0,0,0,16384,124,0,28672,256,48,0,896,32776,1,0,0,0,0,0,0,0,0,1792,16,3,0,32824,6144,0,49152,1025,192,0,3584,32,6,0,112,12289,0,32768,2051,384,0,0,0,0,0,0,34752,31,0,8192,0,3,0,640,24,0,0,0,0,0,0,0,0,0,256,0,0,0,16,384,0,16508,3072,16,32768,0,0,0,0,64,0,0,0,0,0,0,34816,15,0,0,64,0,0,0,16,0,0,0,0,0,0,0,1,0,0,2048,0,0,4103,768,0,0,512,0,0,0,4096,192,0,7240,129,1488,61440,257,16432,0,3968,32776,513,0,16508,3072,16,57344,512,96,0,9216,142,59392,2,32824,6144,0,49152,1025,192,0,3584,32,6,0,112,12289,0,32768,2051,384,0,7168,64,12,0,0,0,0,0,0,0,0,0,0,0,0,0,3584,0,0,0,112,0,0,57344,3,0,0,0,0,0,32768,512,0,0,0,0,0,0,16384,0,0,0,1,0,0,0,0,0,0,64512,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,62,0,0,61440,1,0,0,3968,0,0,0,124,0,0,57344,3,0,0,7936,0,0,0,0,0,0,1024,16,0,0,32,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,384,0,7168,64,12,0,0,4032,0,0,0,0,0,0,0,0,0,0,0,0,0,0,252,0,0,512,0,0,0,32800,1,0,0,0,0,0,0,0,0,9216,142,59392,2,0,0,0,0,0,0,0,18432,33052,53248,5,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parserC0","Funcs","Func","ReturnStm","Stm","Exp","Op","OpStm","OpFor","ExpCompare","Stmts","Type","Decl","Exps","num","str","id","true","false","return","main","break","continue","int","bool","string","'('","')'","'='","'{'","'}'","'+'","'-'","'*'","'/'","'%'","';'","','","\"++\"","\"--\"","\"==\"","\"!=\"","\"<\"","\">\"","\">=\"","\"<=\"","\"&&\"","\"||\"","'!'","if","else","while","for","print_int","scan_int","print_str","%eof"]
        bit_start = st * 59
        bit_end = (st + 1) * 59
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..58]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (26) = happyShift action_4
action_0 (27) = happyShift action_5
action_0 (28) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_2
action_0 (14) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (26) = happyShift action_4
action_1 (27) = happyShift action_5
action_1 (28) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 (14) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (19) = happyShift action_9
action_3 (23) = happyShift action_10
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_57

action_5 _ = happyReduce_58

action_6 _ = happyReduce_59

action_7 (26) = happyShift action_4
action_7 (27) = happyShift action_5
action_7 (28) = happyShift action_6
action_7 (59) = happyAccept
action_7 (5) = happyGoto action_8
action_7 (14) = happyGoto action_3
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (29) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (29) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (30) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_4
action_12 (27) = happyShift action_5
action_12 (28) = happyShift action_6
action_12 (14) = happyGoto action_13
action_12 (15) = happyGoto action_14
action_12 _ = happyReduce_60

action_13 (19) = happyShift action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_17
action_14 (40) = happyShift action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (32) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyGoto action_22
action_16 _ = happyReduce_55

action_17 (32) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (26) = happyShift action_4
action_18 (27) = happyShift action_5
action_18 (28) = happyShift action_6
action_18 (14) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_61

action_20 (19) = happyShift action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyGoto action_36
action_21 _ = happyReduce_55

action_22 (19) = happyShift action_27
action_22 (22) = happyShift action_28
action_22 (26) = happyShift action_4
action_22 (27) = happyShift action_5
action_22 (28) = happyShift action_6
action_22 (32) = happyShift action_29
action_22 (33) = happyShift action_30
action_22 (52) = happyShift action_31
action_22 (54) = happyShift action_32
action_22 (55) = happyShift action_33
action_22 (56) = happyShift action_34
action_22 (58) = happyShift action_35
action_22 (6) = happyGoto action_23
action_22 (7) = happyGoto action_24
action_22 (10) = happyGoto action_25
action_22 (14) = happyGoto action_26
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (39) = happyShift action_59
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_56

action_25 _ = happyReduce_8

action_26 (19) = happyShift action_58
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (29) = happyShift action_56
action_27 (31) = happyShift action_57
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_48
action_28 (18) = happyShift action_49
action_28 (19) = happyShift action_50
action_28 (20) = happyShift action_51
action_28 (21) = happyShift action_52
action_28 (29) = happyShift action_53
action_28 (41) = happyShift action_54
action_28 (42) = happyShift action_55
action_28 (8) = happyGoto action_45
action_28 (9) = happyGoto action_46
action_28 (16) = happyGoto action_47
action_28 _ = happyReduce_63

action_29 (13) = happyGoto action_44
action_29 _ = happyReduce_55

action_30 _ = happyReduce_4

action_31 (29) = happyShift action_43
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (29) = happyShift action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (29) = happyShift action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (29) = happyShift action_40
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (29) = happyShift action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (19) = happyShift action_27
action_36 (22) = happyShift action_28
action_36 (26) = happyShift action_4
action_36 (27) = happyShift action_5
action_36 (28) = happyShift action_6
action_36 (32) = happyShift action_29
action_36 (52) = happyShift action_31
action_36 (54) = happyShift action_32
action_36 (55) = happyShift action_33
action_36 (56) = happyShift action_34
action_36 (58) = happyShift action_35
action_36 (6) = happyGoto action_38
action_36 (7) = happyGoto action_24
action_36 (10) = happyGoto action_25
action_36 (14) = happyGoto action_26
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_62

action_38 (39) = happyShift action_92
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (18) = happyShift action_91
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (17) = happyShift action_48
action_40 (18) = happyShift action_49
action_40 (19) = happyShift action_50
action_40 (29) = happyShift action_53
action_40 (41) = happyShift action_54
action_40 (42) = happyShift action_55
action_40 (8) = happyGoto action_90
action_40 (9) = happyGoto action_46
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (19) = happyShift action_88
action_41 (26) = happyShift action_4
action_41 (27) = happyShift action_5
action_41 (28) = happyShift action_6
action_41 (39) = happyShift action_89
action_41 (11) = happyGoto action_86
action_41 (14) = happyGoto action_87
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_48
action_42 (18) = happyShift action_49
action_42 (19) = happyShift action_81
action_42 (20) = happyShift action_82
action_42 (21) = happyShift action_83
action_42 (29) = happyShift action_53
action_42 (41) = happyShift action_54
action_42 (42) = happyShift action_55
action_42 (51) = happyShift action_84
action_42 (8) = happyGoto action_79
action_42 (9) = happyGoto action_46
action_42 (12) = happyGoto action_85
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_48
action_43 (18) = happyShift action_49
action_43 (19) = happyShift action_81
action_43 (20) = happyShift action_82
action_43 (21) = happyShift action_83
action_43 (29) = happyShift action_53
action_43 (41) = happyShift action_54
action_43 (42) = happyShift action_55
action_43 (51) = happyShift action_84
action_43 (8) = happyGoto action_79
action_43 (9) = happyGoto action_46
action_43 (12) = happyGoto action_80
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_27
action_44 (22) = happyShift action_28
action_44 (26) = happyShift action_4
action_44 (27) = happyShift action_5
action_44 (28) = happyShift action_6
action_44 (32) = happyShift action_29
action_44 (33) = happyShift action_78
action_44 (52) = happyShift action_31
action_44 (54) = happyShift action_32
action_44 (55) = happyShift action_33
action_44 (56) = happyShift action_34
action_44 (58) = happyShift action_35
action_44 (6) = happyGoto action_23
action_44 (7) = happyGoto action_24
action_44 (10) = happyGoto action_25
action_44 (14) = happyGoto action_26
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (34) = happyShift action_73
action_45 (35) = happyShift action_74
action_45 (36) = happyShift action_75
action_45 (37) = happyShift action_76
action_45 (38) = happyShift action_77
action_45 _ = happyReduce_64

action_46 _ = happyReduce_30

action_47 (40) = happyShift action_72
action_47 _ = happyReduce_5

action_48 _ = happyReduce_20

action_49 _ = happyReduce_21

action_50 (29) = happyShift action_68
action_50 (31) = happyShift action_69
action_50 (41) = happyShift action_70
action_50 (42) = happyShift action_71
action_50 _ = happyReduce_22

action_51 _ = happyReduce_6

action_52 _ = happyReduce_7

action_53 (17) = happyShift action_48
action_53 (18) = happyShift action_49
action_53 (19) = happyShift action_50
action_53 (29) = happyShift action_53
action_53 (41) = happyShift action_54
action_53 (42) = happyShift action_55
action_53 (8) = happyGoto action_67
action_53 (9) = happyGoto action_46
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (19) = happyShift action_66
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (19) = happyShift action_65
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (17) = happyShift action_48
action_56 (18) = happyShift action_49
action_56 (19) = happyShift action_50
action_56 (29) = happyShift action_53
action_56 (41) = happyShift action_54
action_56 (42) = happyShift action_55
action_56 (8) = happyGoto action_45
action_56 (9) = happyGoto action_46
action_56 (16) = happyGoto action_64
action_56 _ = happyReduce_63

action_57 (17) = happyShift action_48
action_57 (18) = happyShift action_49
action_57 (19) = happyShift action_50
action_57 (29) = happyShift action_53
action_57 (41) = happyShift action_54
action_57 (42) = happyShift action_55
action_57 (57) = happyShift action_63
action_57 (8) = happyGoto action_62
action_57 (9) = happyGoto action_46
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (31) = happyShift action_60
action_58 (39) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_16

action_60 (17) = happyShift action_48
action_60 (18) = happyShift action_49
action_60 (19) = happyShift action_50
action_60 (29) = happyShift action_53
action_60 (41) = happyShift action_54
action_60 (42) = happyShift action_55
action_60 (8) = happyGoto action_123
action_60 (9) = happyGoto action_46
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_38

action_62 (34) = happyShift action_73
action_62 (35) = happyShift action_74
action_62 (36) = happyShift action_75
action_62 (37) = happyShift action_76
action_62 (38) = happyShift action_77
action_62 (39) = happyShift action_122
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (29) = happyShift action_121
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (30) = happyShift action_120
action_64 (40) = happyShift action_72
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_33

action_66 _ = happyReduce_31

action_67 (30) = happyShift action_119
action_67 (34) = happyShift action_73
action_67 (35) = happyShift action_74
action_67 (36) = happyShift action_75
action_67 (37) = happyShift action_76
action_67 (38) = happyShift action_77
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (17) = happyShift action_48
action_68 (18) = happyShift action_49
action_68 (19) = happyShift action_50
action_68 (29) = happyShift action_53
action_68 (41) = happyShift action_54
action_68 (42) = happyShift action_55
action_68 (8) = happyGoto action_45
action_68 (9) = happyGoto action_46
action_68 (16) = happyGoto action_118
action_68 _ = happyReduce_63

action_69 (17) = happyShift action_48
action_69 (18) = happyShift action_49
action_69 (19) = happyShift action_50
action_69 (29) = happyShift action_53
action_69 (41) = happyShift action_54
action_69 (42) = happyShift action_55
action_69 (8) = happyGoto action_117
action_69 (9) = happyGoto action_46
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_32

action_71 _ = happyReduce_34

action_72 (17) = happyShift action_48
action_72 (18) = happyShift action_49
action_72 (19) = happyShift action_50
action_72 (29) = happyShift action_53
action_72 (41) = happyShift action_54
action_72 (42) = happyShift action_55
action_72 (8) = happyGoto action_116
action_72 (9) = happyGoto action_46
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (17) = happyShift action_48
action_73 (18) = happyShift action_49
action_73 (19) = happyShift action_50
action_73 (29) = happyShift action_53
action_73 (41) = happyShift action_54
action_73 (42) = happyShift action_55
action_73 (8) = happyGoto action_115
action_73 (9) = happyGoto action_46
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (17) = happyShift action_48
action_74 (18) = happyShift action_49
action_74 (19) = happyShift action_50
action_74 (29) = happyShift action_53
action_74 (41) = happyShift action_54
action_74 (42) = happyShift action_55
action_74 (8) = happyGoto action_114
action_74 (9) = happyGoto action_46
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (17) = happyShift action_48
action_75 (18) = happyShift action_49
action_75 (19) = happyShift action_50
action_75 (29) = happyShift action_53
action_75 (41) = happyShift action_54
action_75 (42) = happyShift action_55
action_75 (8) = happyGoto action_113
action_75 (9) = happyGoto action_46
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (17) = happyShift action_48
action_76 (18) = happyShift action_49
action_76 (19) = happyShift action_50
action_76 (29) = happyShift action_53
action_76 (41) = happyShift action_54
action_76 (42) = happyShift action_55
action_76 (8) = happyGoto action_112
action_76 (9) = happyGoto action_46
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (17) = happyShift action_48
action_77 (18) = happyShift action_49
action_77 (19) = happyShift action_50
action_77 (29) = happyShift action_53
action_77 (41) = happyShift action_54
action_77 (42) = happyShift action_55
action_77 (8) = happyGoto action_111
action_77 (9) = happyGoto action_46
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_15

action_79 (34) = happyShift action_73
action_79 (35) = happyShift action_74
action_79 (36) = happyShift action_75
action_79 (37) = happyShift action_76
action_79 (38) = happyShift action_77
action_79 (43) = happyShift action_105
action_79 (44) = happyShift action_106
action_79 (45) = happyShift action_107
action_79 (46) = happyShift action_108
action_79 (47) = happyShift action_109
action_79 (48) = happyShift action_110
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (30) = happyShift action_104
action_80 (49) = happyShift action_100
action_80 (50) = happyShift action_101
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (29) = happyShift action_103
action_81 (31) = happyShift action_69
action_81 (41) = happyShift action_70
action_81 (42) = happyShift action_71
action_81 _ = happyReduce_22

action_82 _ = happyReduce_52

action_83 _ = happyReduce_53

action_84 (29) = happyShift action_102
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (30) = happyShift action_99
action_85 (49) = happyShift action_100
action_85 (50) = happyShift action_101
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (17) = happyShift action_48
action_86 (18) = happyShift action_49
action_86 (19) = happyShift action_81
action_86 (20) = happyShift action_82
action_86 (21) = happyShift action_83
action_86 (29) = happyShift action_53
action_86 (41) = happyShift action_54
action_86 (42) = happyShift action_55
action_86 (51) = happyShift action_84
action_86 (8) = happyGoto action_79
action_86 (9) = happyGoto action_46
action_86 (12) = happyGoto action_98
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (19) = happyShift action_97
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (31) = happyShift action_96
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_40

action_90 (30) = happyShift action_95
action_90 (34) = happyShift action_73
action_90 (35) = happyShift action_74
action_90 (36) = happyShift action_75
action_90 (37) = happyShift action_76
action_90 (38) = happyShift action_77
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (30) = happyShift action_94
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (33) = happyShift action_93
action_92 _ = happyReduce_16

action_93 _ = happyReduce_3

action_94 (39) = happyShift action_145
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (39) = happyShift action_144
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (17) = happyShift action_48
action_96 (18) = happyShift action_49
action_96 (19) = happyShift action_50
action_96 (29) = happyShift action_53
action_96 (41) = happyShift action_54
action_96 (42) = happyShift action_55
action_96 (8) = happyGoto action_143
action_96 (9) = happyGoto action_46
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (31) = happyShift action_142
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (39) = happyShift action_141
action_98 (49) = happyShift action_100
action_98 (50) = happyShift action_101
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (19) = happyShift action_27
action_99 (22) = happyShift action_28
action_99 (26) = happyShift action_4
action_99 (27) = happyShift action_5
action_99 (28) = happyShift action_6
action_99 (32) = happyShift action_29
action_99 (39) = happyShift action_140
action_99 (52) = happyShift action_31
action_99 (54) = happyShift action_32
action_99 (55) = happyShift action_33
action_99 (56) = happyShift action_34
action_99 (58) = happyShift action_35
action_99 (6) = happyGoto action_23
action_99 (7) = happyGoto action_139
action_99 (10) = happyGoto action_25
action_99 (14) = happyGoto action_26
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (17) = happyShift action_48
action_100 (18) = happyShift action_49
action_100 (19) = happyShift action_81
action_100 (20) = happyShift action_82
action_100 (21) = happyShift action_83
action_100 (29) = happyShift action_53
action_100 (41) = happyShift action_54
action_100 (42) = happyShift action_55
action_100 (51) = happyShift action_84
action_100 (8) = happyGoto action_79
action_100 (9) = happyGoto action_46
action_100 (12) = happyGoto action_138
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (17) = happyShift action_48
action_101 (18) = happyShift action_49
action_101 (19) = happyShift action_81
action_101 (20) = happyShift action_82
action_101 (21) = happyShift action_83
action_101 (29) = happyShift action_53
action_101 (41) = happyShift action_54
action_101 (42) = happyShift action_55
action_101 (51) = happyShift action_84
action_101 (8) = happyGoto action_79
action_101 (9) = happyGoto action_46
action_101 (12) = happyGoto action_137
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (17) = happyShift action_48
action_102 (18) = happyShift action_49
action_102 (19) = happyShift action_81
action_102 (20) = happyShift action_82
action_102 (21) = happyShift action_83
action_102 (29) = happyShift action_53
action_102 (41) = happyShift action_54
action_102 (42) = happyShift action_55
action_102 (51) = happyShift action_84
action_102 (8) = happyGoto action_79
action_102 (9) = happyGoto action_46
action_102 (12) = happyGoto action_136
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (17) = happyShift action_48
action_103 (18) = happyShift action_49
action_103 (19) = happyShift action_50
action_103 (29) = happyShift action_53
action_103 (41) = happyShift action_54
action_103 (42) = happyShift action_55
action_103 (8) = happyGoto action_45
action_103 (9) = happyGoto action_46
action_103 (16) = happyGoto action_135
action_103 _ = happyReduce_63

action_104 (19) = happyShift action_27
action_104 (22) = happyShift action_28
action_104 (26) = happyShift action_4
action_104 (27) = happyShift action_5
action_104 (28) = happyShift action_6
action_104 (32) = happyShift action_29
action_104 (52) = happyShift action_31
action_104 (54) = happyShift action_32
action_104 (55) = happyShift action_33
action_104 (56) = happyShift action_34
action_104 (58) = happyShift action_35
action_104 (6) = happyGoto action_23
action_104 (7) = happyGoto action_134
action_104 (10) = happyGoto action_25
action_104 (14) = happyGoto action_26
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (17) = happyShift action_48
action_105 (18) = happyShift action_49
action_105 (19) = happyShift action_50
action_105 (29) = happyShift action_53
action_105 (41) = happyShift action_54
action_105 (42) = happyShift action_55
action_105 (8) = happyGoto action_133
action_105 (9) = happyGoto action_46
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (17) = happyShift action_48
action_106 (18) = happyShift action_49
action_106 (19) = happyShift action_50
action_106 (29) = happyShift action_53
action_106 (41) = happyShift action_54
action_106 (42) = happyShift action_55
action_106 (8) = happyGoto action_132
action_106 (9) = happyGoto action_46
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (17) = happyShift action_48
action_107 (18) = happyShift action_49
action_107 (19) = happyShift action_50
action_107 (29) = happyShift action_53
action_107 (41) = happyShift action_54
action_107 (42) = happyShift action_55
action_107 (8) = happyGoto action_131
action_107 (9) = happyGoto action_46
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (17) = happyShift action_48
action_108 (18) = happyShift action_49
action_108 (19) = happyShift action_50
action_108 (29) = happyShift action_53
action_108 (41) = happyShift action_54
action_108 (42) = happyShift action_55
action_108 (8) = happyGoto action_130
action_108 (9) = happyGoto action_46
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (17) = happyShift action_48
action_109 (18) = happyShift action_49
action_109 (19) = happyShift action_50
action_109 (29) = happyShift action_53
action_109 (41) = happyShift action_54
action_109 (42) = happyShift action_55
action_109 (8) = happyGoto action_129
action_109 (9) = happyGoto action_46
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (17) = happyShift action_48
action_110 (18) = happyShift action_49
action_110 (19) = happyShift action_50
action_110 (29) = happyShift action_53
action_110 (41) = happyShift action_54
action_110 (42) = happyShift action_55
action_110 (8) = happyGoto action_128
action_110 (9) = happyGoto action_46
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_28

action_112 _ = happyReduce_27

action_113 _ = happyReduce_26

action_114 (36) = happyShift action_75
action_114 (37) = happyShift action_76
action_114 (38) = happyShift action_77
action_114 _ = happyReduce_25

action_115 (36) = happyShift action_75
action_115 (37) = happyShift action_76
action_115 (38) = happyShift action_77
action_115 _ = happyReduce_24

action_116 (34) = happyShift action_73
action_116 (35) = happyShift action_74
action_116 (36) = happyShift action_75
action_116 (37) = happyShift action_76
action_116 (38) = happyShift action_77
action_116 _ = happyReduce_65

action_117 (34) = happyShift action_73
action_117 (35) = happyShift action_74
action_117 (36) = happyShift action_75
action_117 (37) = happyShift action_76
action_117 (38) = happyShift action_77
action_117 _ = happyReduce_35

action_118 (30) = happyShift action_127
action_118 (40) = happyShift action_72
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_23

action_120 (39) = happyShift action_126
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (30) = happyShift action_125
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_36

action_123 (34) = happyShift action_73
action_123 (35) = happyShift action_74
action_123 (36) = happyShift action_75
action_123 (37) = happyShift action_76
action_123 (38) = happyShift action_77
action_123 (39) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_39

action_125 (39) = happyShift action_153
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_17

action_127 _ = happyReduce_29

action_128 (34) = happyShift action_73
action_128 (35) = happyShift action_74
action_128 (36) = happyShift action_75
action_128 (37) = happyShift action_76
action_128 (38) = happyShift action_77
action_128 _ = happyReduce_45

action_129 (34) = happyShift action_73
action_129 (35) = happyShift action_74
action_129 (36) = happyShift action_75
action_129 (37) = happyShift action_76
action_129 (38) = happyShift action_77
action_129 _ = happyReduce_46

action_130 (34) = happyShift action_73
action_130 (35) = happyShift action_74
action_130 (36) = happyShift action_75
action_130 (37) = happyShift action_76
action_130 (38) = happyShift action_77
action_130 _ = happyReduce_48

action_131 (34) = happyShift action_73
action_131 (35) = happyShift action_74
action_131 (36) = happyShift action_75
action_131 (37) = happyShift action_76
action_131 (38) = happyShift action_77
action_131 _ = happyReduce_47

action_132 (34) = happyShift action_73
action_132 (35) = happyShift action_74
action_132 (36) = happyShift action_75
action_132 (37) = happyShift action_76
action_132 (38) = happyShift action_77
action_132 _ = happyReduce_44

action_133 (34) = happyShift action_73
action_133 (35) = happyShift action_74
action_133 (36) = happyShift action_75
action_133 (37) = happyShift action_76
action_133 (38) = happyShift action_77
action_133 _ = happyReduce_43

action_134 (53) = happyShift action_152
action_134 _ = happyReduce_10

action_135 (30) = happyShift action_151
action_135 (40) = happyShift action_72
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (30) = happyShift action_150
action_136 (49) = happyShift action_100
action_136 (50) = happyShift action_101
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_50

action_138 _ = happyReduce_49

action_139 _ = happyReduce_13

action_140 _ = happyReduce_14

action_141 (19) = happyShift action_149
action_141 (41) = happyShift action_54
action_141 (42) = happyShift action_55
action_141 (9) = happyGoto action_148
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (17) = happyShift action_48
action_142 (18) = happyShift action_49
action_142 (19) = happyShift action_50
action_142 (29) = happyShift action_53
action_142 (41) = happyShift action_54
action_142 (42) = happyShift action_55
action_142 (8) = happyGoto action_147
action_142 (9) = happyGoto action_46
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (34) = happyShift action_73
action_143 (35) = happyShift action_74
action_143 (36) = happyShift action_75
action_143 (37) = happyShift action_76
action_143 (38) = happyShift action_77
action_143 (39) = happyShift action_146
action_143 _ = happyFail (happyExpListPerState 143)

action_144 _ = happyReduce_18

action_145 _ = happyReduce_19

action_146 _ = happyReduce_41

action_147 (34) = happyShift action_73
action_147 (35) = happyShift action_74
action_147 (36) = happyShift action_75
action_147 (37) = happyShift action_76
action_147 (38) = happyShift action_77
action_147 (39) = happyShift action_156
action_147 _ = happyFail (happyExpListPerState 147)

action_148 (30) = happyShift action_155
action_148 _ = happyFail (happyExpListPerState 148)

action_149 (31) = happyShift action_69
action_149 (41) = happyShift action_70
action_149 (42) = happyShift action_71
action_149 _ = happyFail (happyExpListPerState 149)

action_150 _ = happyReduce_51

action_151 (34) = happyReduce_29
action_151 (35) = happyReduce_29
action_151 (36) = happyReduce_29
action_151 (37) = happyReduce_29
action_151 (38) = happyReduce_29
action_151 (43) = happyReduce_29
action_151 (44) = happyReduce_29
action_151 (45) = happyReduce_29
action_151 (46) = happyReduce_29
action_151 (47) = happyReduce_29
action_151 (48) = happyReduce_29
action_151 _ = happyReduce_54

action_152 (19) = happyShift action_27
action_152 (22) = happyShift action_28
action_152 (26) = happyShift action_4
action_152 (27) = happyShift action_5
action_152 (28) = happyShift action_6
action_152 (32) = happyShift action_29
action_152 (52) = happyShift action_31
action_152 (54) = happyShift action_32
action_152 (55) = happyShift action_33
action_152 (56) = happyShift action_34
action_152 (58) = happyShift action_35
action_152 (6) = happyGoto action_23
action_152 (7) = happyGoto action_154
action_152 (10) = happyGoto action_25
action_152 (14) = happyGoto action_26
action_152 _ = happyFail (happyExpListPerState 152)

action_153 _ = happyReduce_37

action_154 _ = happyReduce_9

action_155 (19) = happyShift action_27
action_155 (22) = happyShift action_28
action_155 (26) = happyShift action_4
action_155 (27) = happyShift action_5
action_155 (28) = happyShift action_6
action_155 (32) = happyShift action_29
action_155 (39) = happyShift action_158
action_155 (52) = happyShift action_31
action_155 (54) = happyShift action_32
action_155 (55) = happyShift action_33
action_155 (56) = happyShift action_34
action_155 (58) = happyShift action_35
action_155 (6) = happyGoto action_23
action_155 (7) = happyGoto action_157
action_155 (10) = happyGoto action_25
action_155 (14) = happyGoto action_26
action_155 _ = happyFail (happyExpListPerState 155)

action_156 _ = happyReduce_42

action_157 _ = happyReduce_11

action_158 _ = happyReduce_12

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
	(HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Funct happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 7 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncMain happy_var_1 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_2  6 happyReduction_5
happyReduction_5 (HappyAbsSyn16  happy_var_2)
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

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (VarOp1 happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happyReduce 7 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_3 happy_var_5 Else happy_var_7
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 5 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_3 happy_var_5 Skip Skip
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 8 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (For happy_var_3 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 8 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (For happy_var_3 happy_var_4 happy_var_6 NoStm
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 5 7 happyReduction_13
happyReduction_13 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 7 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 NoStm
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn13  happy_var_2)
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
	(HappyAbsSyn16  happy_var_3) `HappyStk`
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
		 (InsideBracket happy_var_2
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
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_1  8 happyReduction_30
happyReduction_30 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (VarOp happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  9 happyReduction_31
happyReduction_31 (HappyTerminal (VAR_TOK happy_var_2))
	_
	 =  HappyAbsSyn9
		 (PreIncr happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  9 happyReduction_32
happyReduction_32 _
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (PostIncr happy_var_1
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  9 happyReduction_33
happyReduction_33 (HappyTerminal (VAR_TOK happy_var_2))
	_
	 =  HappyAbsSyn9
		 (PreDecr happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  9 happyReduction_34
happyReduction_34 _
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (PostDecr happy_var_1
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (OpAssign happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 10 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 6 10 happyReduction_37
happyReduction_37 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ScanInt happy_var_1
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_3  10 happyReduction_38
happyReduction_38 _
	(HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn10
		 (Declr happy_var_1 happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happyReduce 5 10 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_1  11 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn11
		 (Empty
	)

happyReduce_41 = happyReduce 4 11 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (ForAssign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 11 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (ForDeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (IsEqual happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (IsNEqual happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  12 happyReduction_45
happyReduction_45 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  12 happyReduction_46
happyReduction_46 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  12 happyReduction_47
happyReduction_47 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  12 happyReduction_48
happyReduction_48 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  12 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  12 happyReduction_50
happyReduction_50 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Or happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happyReduce 4 12 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Not happy_var_3
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_1  12 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn12
		 (Bconst True
	)

happyReduce_53 = happySpecReduce_1  12 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn12
		 (Bconst False
	)

happyReduce_54 = happyReduce 4 12 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_55 = happySpecReduce_0  13 happyReduction_55
happyReduction_55  =  HappyAbsSyn13
		 ([]
	)

happyReduce_56 = happySpecReduce_2  13 happyReduction_56
happyReduction_56 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_56 _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  14 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn14
		 (Tint
	)

happyReduce_58 = happySpecReduce_1  14 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn14
		 (Tbool
	)

happyReduce_59 = happySpecReduce_1  14 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn14
		 (Tstring
	)

happyReduce_60 = happySpecReduce_0  15 happyReduction_60
happyReduction_60  =  HappyAbsSyn15
		 ([]
	)

happyReduce_61 = happySpecReduce_2  15 happyReduction_61
happyReduction_61 (HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 ([(happy_var_1,happy_var_2)]
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happyReduce 4 15 happyReduction_62
happyReduction_62 ((HappyTerminal (VAR_TOK happy_var_4)) `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest

happyReduce_63 = happySpecReduce_0  16 happyReduction_63
happyReduction_63  =  HappyAbsSyn16
		 ([]
	)

happyReduce_64 = happySpecReduce_1  16 happyReduction_64
happyReduction_64 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  16 happyReduction_65
happyReduction_65 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 59 59 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	NUM_TOK happy_dollar_dollar -> cont 17;
	STRING_TOK happy_dollar_dollar -> cont 18;
	VAR_TOK happy_dollar_dollar -> cont 19;
	TRUE_TOK happy_dollar_dollar -> cont 20;
	FALSE_TOK happy_dollar_dollar -> cont 21;
	RETURN_TOK -> cont 22;
	MAIN_TOK -> cont 23;
	BREAK_TOK -> cont 24;
	CONTINUE_TOK -> cont 25;
	INT_DEF_TOK -> cont 26;
	BOOL_DEF_TOK -> cont 27;
	STRING_DEF_TOK -> cont 28;
	LPAREN_TOK -> cont 29;
	RPAREN_TOK -> cont 30;
	ASSIGN_TOK -> cont 31;
	LBRACE_TOK -> cont 32;
	RBRACE_TOK -> cont 33;
	PLUS_TOK -> cont 34;
	MINUS_TOK -> cont 35;
	MULT_TOK -> cont 36;
	DIV_TOK -> cont 37;
	MOD_TOK -> cont 38;
	SEMICOLON_TOK -> cont 39;
	COLON_TOK -> cont 40;
	INCR_TOK -> cont 41;
	DECR_TOK -> cont 42;
	EQUAL_TOK -> cont 43;
	NEQUAL_TOK -> cont 44;
	LTHEN_TOK -> cont 45;
	GTHEN_TOK -> cont 46;
	GTOE_TOK -> cont 47;
	LTOE_TOK -> cont 48;
	AND_TOK -> cont 49;
	OR_TOK -> cont 50;
	NOT_TOK -> cont 51;
	IF_TOK -> cont 52;
	ELSE_TOK -> cont 53;
	WHILE_TOK -> cont 54;
	FOR_TOK -> cont 55;
	PRINTINT_TOK -> cont 56;
	SCANINT_TOK -> cont 57;
	PRINTSTR_TOK -> cont 58;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 59 tk tks = happyError' (tks, explist)
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

data Op = PreIncr String
        | PostIncr String
        | PreDecr String
        | PostDecr String
        | OpAssign String Exp
        deriving Show

data OpStm = Assign String Exp
           | Declr Type String
           | DeclAsgn Type String Exp
           | ScanInt String
           deriving Show

data OpFor = ForAssign String Exp
           | ForDeclAsgn Type String Exp
           | Empty
           deriving Show

data Stm = If ExpCompare Stm Stm Stm
         | Else
         | VarOp1 OpStm
         | While ExpCompare Stm
         | FuncCall String [Exp]
         | PrintInt Exp
         | PrintStr String
         | For OpFor ExpCompare Op Stm
         | Block [Stm]
         | Return ReturnStm
         | Skip
         | NoStm
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
         | VarOp Op
         | InsideBracket Exp
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
