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
happyExpList = Happy_Data_Array.listArray (0,331) ([0,3584,0,0,0,112,0,0,0,0,0,0,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,448,0,0,0,0,0,0,32768,0,0,0,1024,0,0,0,64,0,0,57344,0,0,0,2,0,0,0,128,2,0,0,16,0,0,0,0,0,0,1024,0,0,32768,3,0,0,0,0,0,16384,0,0,0,0,0,0,0,14480,6,2976,0,0,8,0,0,0,0,0,0,0,0,0,1,0,0,0,160,0,0,496,1,0,0,0,0,0,0,0,0,0,0,2,0,0,4096,0,0,0,128,0,0,0,4,0,0,8192,0,0,16384,2274,32768,46,0,0,0,0,0,256,0,16384,0,0,0,7936,16,0,0,28704,512,0,49152,1031,0,1,15872,32,2048,0,57920,24,11904,0,0,31,0,0,0,2,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,61440,257,0,0,3968,8,0,0,16508,0,1024,0,2048,8,0,0,0,0,0,33016,0,0,0,0,0,0,0,64512,0,0,0,0,0,0,0,0,0,0,64,0,0,0,4100,0,0,8192,62,0,63488,128,0,0,1984,4,0,0,8254,0,0,61440,257,0,0,3968,8,0,0,16508,0,0,57344,515,0,0,0,0,0,0,0,57840,7,0,2048,49152,0,0,32,0,0,0,1,0,0,4096,32768,1,31744,64,4096,0,128,0,0,0,16384,0,0,0,0,0,0,0,3976,0,0,16384,0,0,0,4096,0,0,0,0,0,0,0,256,0,0,0,8,0,7936,16,0,0,0,2,0,0,0,49168,0,18432,284,53248,5,496,1,64,32768,2063,0,2,31744,64,4096,0,992,2,0,0,36388,0,744,63488,128,0,0,1984,4,0,0,8254,0,0,61440,257,0,0,3968,8,0,0,16508,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,28672,0,0,0,992,0,0,4096,64,0,0,0,0,0,0,2048,0,0,8192,0,0,0,0,0,0,0,8064,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,49152,7,0,0,15872,0,0,0,496,0,0,32768,15,0,0,31744,0,0,0,992,0,0,0,0,0,0,128,2,0,0,4,96,0,0,0,0,0,0,0,0,0,0,0,0,8,1536,0,61440,257,0,0,0,16128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1008,0,0,2048,0,0,0,128,6,0,64,0,0,0,2,0,0,0,0,0,0,0,0,0,0,36388,0,744,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3968,8,0,0,0,0,0,0,0,0,0,9216,142,59392,2,0,0,0,0,0,0,0,0,31744,0,0,0
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

action_4 _ = happyReduce_54

action_5 _ = happyReduce_55

action_6 _ = happyReduce_56

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
action_12 _ = happyReduce_57

action_13 (19) = happyShift action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_17
action_14 (40) = happyShift action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (32) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyGoto action_22
action_16 _ = happyReduce_52

action_17 (32) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (26) = happyShift action_4
action_18 (27) = happyShift action_5
action_18 (28) = happyShift action_6
action_18 (14) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_58

action_20 (19) = happyShift action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyGoto action_36
action_21 _ = happyReduce_52

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

action_23 (39) = happyShift action_56
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_53

action_25 _ = happyReduce_8

action_26 (19) = happyShift action_55
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (29) = happyShift action_53
action_27 (31) = happyShift action_54
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_47
action_28 (18) = happyShift action_48
action_28 (19) = happyShift action_49
action_28 (20) = happyShift action_50
action_28 (21) = happyShift action_51
action_28 (29) = happyShift action_52
action_28 (8) = happyGoto action_45
action_28 (16) = happyGoto action_46
action_28 _ = happyReduce_60

action_29 (13) = happyGoto action_44
action_29 _ = happyReduce_52

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

action_37 _ = happyReduce_59

action_38 (39) = happyShift action_84
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (18) = happyShift action_83
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (17) = happyShift action_47
action_40 (18) = happyShift action_48
action_40 (19) = happyShift action_49
action_40 (20) = happyShift action_60
action_40 (21) = happyShift action_61
action_40 (29) = happyShift action_52
action_40 (8) = happyGoto action_82
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (19) = happyShift action_80
action_41 (26) = happyShift action_4
action_41 (27) = happyShift action_5
action_41 (28) = happyShift action_6
action_41 (39) = happyShift action_81
action_41 (11) = happyGoto action_78
action_41 (14) = happyGoto action_79
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_47
action_42 (18) = happyShift action_48
action_42 (19) = happyShift action_75
action_42 (20) = happyShift action_60
action_42 (21) = happyShift action_61
action_42 (29) = happyShift action_52
action_42 (51) = happyShift action_76
action_42 (8) = happyGoto action_73
action_42 (12) = happyGoto action_77
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_47
action_43 (18) = happyShift action_48
action_43 (19) = happyShift action_75
action_43 (20) = happyShift action_60
action_43 (21) = happyShift action_61
action_43 (29) = happyShift action_52
action_43 (51) = happyShift action_76
action_43 (8) = happyGoto action_73
action_43 (12) = happyGoto action_74
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_27
action_44 (22) = happyShift action_28
action_44 (26) = happyShift action_4
action_44 (27) = happyShift action_5
action_44 (28) = happyShift action_6
action_44 (32) = happyShift action_29
action_44 (33) = happyShift action_72
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

action_45 (34) = happyShift action_67
action_45 (35) = happyShift action_68
action_45 (36) = happyShift action_69
action_45 (37) = happyShift action_70
action_45 (38) = happyShift action_71
action_45 _ = happyReduce_61

action_46 (40) = happyShift action_66
action_46 _ = happyReduce_5

action_47 _ = happyReduce_18

action_48 _ = happyReduce_19

action_49 (29) = happyShift action_65
action_49 _ = happyReduce_20

action_50 (39) = happyReduce_28
action_50 _ = happyReduce_28

action_51 (39) = happyReduce_29
action_51 _ = happyReduce_29

action_52 (17) = happyShift action_47
action_52 (18) = happyShift action_48
action_52 (19) = happyShift action_49
action_52 (20) = happyShift action_60
action_52 (21) = happyShift action_61
action_52 (29) = happyShift action_52
action_52 (8) = happyGoto action_64
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (17) = happyShift action_47
action_53 (18) = happyShift action_48
action_53 (19) = happyShift action_49
action_53 (20) = happyShift action_60
action_53 (21) = happyShift action_61
action_53 (29) = happyShift action_52
action_53 (8) = happyGoto action_45
action_53 (16) = happyGoto action_63
action_53 _ = happyReduce_60

action_54 (17) = happyShift action_47
action_54 (18) = happyShift action_48
action_54 (19) = happyShift action_49
action_54 (20) = happyShift action_60
action_54 (21) = happyShift action_61
action_54 (29) = happyShift action_52
action_54 (57) = happyShift action_62
action_54 (8) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_57
action_55 (39) = happyShift action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_14

action_57 (17) = happyShift action_47
action_57 (18) = happyShift action_48
action_57 (19) = happyShift action_49
action_57 (20) = happyShift action_60
action_57 (21) = happyShift action_61
action_57 (29) = happyShift action_52
action_57 (8) = happyGoto action_114
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_37

action_59 (34) = happyShift action_67
action_59 (35) = happyShift action_68
action_59 (36) = happyShift action_69
action_59 (37) = happyShift action_70
action_59 (38) = happyShift action_71
action_59 (39) = happyShift action_113
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_28

action_61 _ = happyReduce_29

action_62 (29) = happyShift action_112
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (30) = happyShift action_111
action_63 (40) = happyShift action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (30) = happyShift action_110
action_64 (34) = happyShift action_67
action_64 (35) = happyShift action_68
action_64 (36) = happyShift action_69
action_64 (37) = happyShift action_70
action_64 (38) = happyShift action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (17) = happyShift action_47
action_65 (18) = happyShift action_48
action_65 (19) = happyShift action_49
action_65 (20) = happyShift action_60
action_65 (21) = happyShift action_61
action_65 (29) = happyShift action_52
action_65 (8) = happyGoto action_45
action_65 (16) = happyGoto action_109
action_65 _ = happyReduce_60

action_66 (17) = happyShift action_47
action_66 (18) = happyShift action_48
action_66 (19) = happyShift action_49
action_66 (20) = happyShift action_60
action_66 (21) = happyShift action_61
action_66 (29) = happyShift action_52
action_66 (8) = happyGoto action_108
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (17) = happyShift action_47
action_67 (18) = happyShift action_48
action_67 (19) = happyShift action_49
action_67 (20) = happyShift action_60
action_67 (21) = happyShift action_61
action_67 (29) = happyShift action_52
action_67 (8) = happyGoto action_107
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (17) = happyShift action_47
action_68 (18) = happyShift action_48
action_68 (19) = happyShift action_49
action_68 (20) = happyShift action_60
action_68 (21) = happyShift action_61
action_68 (29) = happyShift action_52
action_68 (8) = happyGoto action_106
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (17) = happyShift action_47
action_69 (18) = happyShift action_48
action_69 (19) = happyShift action_49
action_69 (20) = happyShift action_60
action_69 (21) = happyShift action_61
action_69 (29) = happyShift action_52
action_69 (8) = happyGoto action_105
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (17) = happyShift action_47
action_70 (18) = happyShift action_48
action_70 (19) = happyShift action_49
action_70 (20) = happyShift action_60
action_70 (21) = happyShift action_61
action_70 (29) = happyShift action_52
action_70 (8) = happyGoto action_104
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (17) = happyShift action_47
action_71 (18) = happyShift action_48
action_71 (19) = happyShift action_49
action_71 (20) = happyShift action_60
action_71 (21) = happyShift action_61
action_71 (29) = happyShift action_52
action_71 (8) = happyGoto action_103
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_13

action_73 (34) = happyShift action_67
action_73 (35) = happyShift action_68
action_73 (36) = happyShift action_69
action_73 (37) = happyShift action_70
action_73 (38) = happyShift action_71
action_73 (43) = happyShift action_97
action_73 (44) = happyShift action_98
action_73 (45) = happyShift action_99
action_73 (46) = happyShift action_100
action_73 (47) = happyShift action_101
action_73 (48) = happyShift action_102
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (30) = happyShift action_96
action_74 (49) = happyShift action_92
action_74 (50) = happyShift action_93
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (29) = happyShift action_95
action_75 _ = happyReduce_20

action_76 (29) = happyShift action_94
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (30) = happyShift action_91
action_77 (49) = happyShift action_92
action_77 (50) = happyShift action_93
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (17) = happyShift action_47
action_78 (18) = happyShift action_48
action_78 (19) = happyShift action_75
action_78 (20) = happyShift action_60
action_78 (21) = happyShift action_61
action_78 (29) = happyShift action_52
action_78 (51) = happyShift action_76
action_78 (8) = happyGoto action_73
action_78 (12) = happyGoto action_90
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (19) = happyShift action_89
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (31) = happyShift action_88
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_39

action_82 (30) = happyShift action_87
action_82 (34) = happyShift action_67
action_82 (35) = happyShift action_68
action_82 (36) = happyShift action_69
action_82 (37) = happyShift action_70
action_82 (38) = happyShift action_71
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (30) = happyShift action_86
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (33) = happyShift action_85
action_84 _ = happyReduce_14

action_85 _ = happyReduce_3

action_86 (39) = happyShift action_135
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (39) = happyShift action_134
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (17) = happyShift action_47
action_88 (18) = happyShift action_48
action_88 (19) = happyShift action_49
action_88 (20) = happyShift action_60
action_88 (21) = happyShift action_61
action_88 (29) = happyShift action_52
action_88 (8) = happyGoto action_133
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (31) = happyShift action_132
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (39) = happyShift action_131
action_90 (49) = happyShift action_92
action_90 (50) = happyShift action_93
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (19) = happyShift action_27
action_91 (22) = happyShift action_28
action_91 (26) = happyShift action_4
action_91 (27) = happyShift action_5
action_91 (28) = happyShift action_6
action_91 (32) = happyShift action_29
action_91 (52) = happyShift action_31
action_91 (54) = happyShift action_32
action_91 (55) = happyShift action_33
action_91 (56) = happyShift action_34
action_91 (58) = happyShift action_35
action_91 (6) = happyGoto action_23
action_91 (7) = happyGoto action_130
action_91 (10) = happyGoto action_25
action_91 (14) = happyGoto action_26
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (17) = happyShift action_47
action_92 (18) = happyShift action_48
action_92 (19) = happyShift action_75
action_92 (20) = happyShift action_60
action_92 (21) = happyShift action_61
action_92 (29) = happyShift action_52
action_92 (51) = happyShift action_76
action_92 (8) = happyGoto action_73
action_92 (12) = happyGoto action_129
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (17) = happyShift action_47
action_93 (18) = happyShift action_48
action_93 (19) = happyShift action_75
action_93 (20) = happyShift action_60
action_93 (21) = happyShift action_61
action_93 (29) = happyShift action_52
action_93 (51) = happyShift action_76
action_93 (8) = happyGoto action_73
action_93 (12) = happyGoto action_128
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (17) = happyShift action_47
action_94 (18) = happyShift action_48
action_94 (19) = happyShift action_75
action_94 (20) = happyShift action_60
action_94 (21) = happyShift action_61
action_94 (29) = happyShift action_52
action_94 (51) = happyShift action_76
action_94 (8) = happyGoto action_73
action_94 (12) = happyGoto action_127
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (17) = happyShift action_47
action_95 (18) = happyShift action_48
action_95 (19) = happyShift action_49
action_95 (20) = happyShift action_60
action_95 (21) = happyShift action_61
action_95 (29) = happyShift action_52
action_95 (8) = happyGoto action_45
action_95 (16) = happyGoto action_126
action_95 _ = happyReduce_60

action_96 (19) = happyShift action_27
action_96 (22) = happyShift action_28
action_96 (26) = happyShift action_4
action_96 (27) = happyShift action_5
action_96 (28) = happyShift action_6
action_96 (32) = happyShift action_29
action_96 (52) = happyShift action_31
action_96 (54) = happyShift action_32
action_96 (55) = happyShift action_33
action_96 (56) = happyShift action_34
action_96 (58) = happyShift action_35
action_96 (6) = happyGoto action_23
action_96 (7) = happyGoto action_125
action_96 (10) = happyGoto action_25
action_96 (14) = happyGoto action_26
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (17) = happyShift action_47
action_97 (18) = happyShift action_48
action_97 (19) = happyShift action_49
action_97 (20) = happyShift action_60
action_97 (21) = happyShift action_61
action_97 (29) = happyShift action_52
action_97 (8) = happyGoto action_124
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (17) = happyShift action_47
action_98 (18) = happyShift action_48
action_98 (19) = happyShift action_49
action_98 (20) = happyShift action_60
action_98 (21) = happyShift action_61
action_98 (29) = happyShift action_52
action_98 (8) = happyGoto action_123
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (17) = happyShift action_47
action_99 (18) = happyShift action_48
action_99 (19) = happyShift action_49
action_99 (20) = happyShift action_60
action_99 (21) = happyShift action_61
action_99 (29) = happyShift action_52
action_99 (8) = happyGoto action_122
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (17) = happyShift action_47
action_100 (18) = happyShift action_48
action_100 (19) = happyShift action_49
action_100 (20) = happyShift action_60
action_100 (21) = happyShift action_61
action_100 (29) = happyShift action_52
action_100 (8) = happyGoto action_121
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (17) = happyShift action_47
action_101 (18) = happyShift action_48
action_101 (19) = happyShift action_49
action_101 (20) = happyShift action_60
action_101 (21) = happyShift action_61
action_101 (29) = happyShift action_52
action_101 (8) = happyGoto action_120
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (17) = happyShift action_47
action_102 (18) = happyShift action_48
action_102 (19) = happyShift action_49
action_102 (20) = happyShift action_60
action_102 (21) = happyShift action_61
action_102 (29) = happyShift action_52
action_102 (8) = happyGoto action_119
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_26

action_104 _ = happyReduce_25

action_105 _ = happyReduce_24

action_106 (36) = happyShift action_69
action_106 (37) = happyShift action_70
action_106 (38) = happyShift action_71
action_106 _ = happyReduce_23

action_107 (36) = happyShift action_69
action_107 (37) = happyShift action_70
action_107 (38) = happyShift action_71
action_107 _ = happyReduce_22

action_108 (34) = happyShift action_67
action_108 (35) = happyShift action_68
action_108 (36) = happyShift action_69
action_108 (37) = happyShift action_70
action_108 (38) = happyShift action_71
action_108 _ = happyReduce_62

action_109 (30) = happyShift action_118
action_109 (40) = happyShift action_66
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_21

action_111 (39) = happyShift action_117
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (30) = happyShift action_116
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_35

action_114 (34) = happyShift action_67
action_114 (35) = happyShift action_68
action_114 (36) = happyShift action_69
action_114 (37) = happyShift action_70
action_114 (38) = happyShift action_71
action_114 (39) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_38

action_116 (39) = happyShift action_145
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_15

action_118 _ = happyReduce_27

action_119 (34) = happyShift action_67
action_119 (35) = happyShift action_68
action_119 (36) = happyShift action_69
action_119 (37) = happyShift action_70
action_119 (38) = happyShift action_71
action_119 _ = happyReduce_44

action_120 (34) = happyShift action_67
action_120 (35) = happyShift action_68
action_120 (36) = happyShift action_69
action_120 (37) = happyShift action_70
action_120 (38) = happyShift action_71
action_120 _ = happyReduce_45

action_121 (34) = happyShift action_67
action_121 (35) = happyShift action_68
action_121 (36) = happyShift action_69
action_121 (37) = happyShift action_70
action_121 (38) = happyShift action_71
action_121 _ = happyReduce_47

action_122 (34) = happyShift action_67
action_122 (35) = happyShift action_68
action_122 (36) = happyShift action_69
action_122 (37) = happyShift action_70
action_122 (38) = happyShift action_71
action_122 _ = happyReduce_46

action_123 (34) = happyShift action_67
action_123 (35) = happyShift action_68
action_123 (36) = happyShift action_69
action_123 (37) = happyShift action_70
action_123 (38) = happyShift action_71
action_123 _ = happyReduce_43

action_124 (34) = happyShift action_67
action_124 (35) = happyShift action_68
action_124 (36) = happyShift action_69
action_124 (37) = happyShift action_70
action_124 (38) = happyShift action_71
action_124 _ = happyReduce_42

action_125 (53) = happyShift action_144
action_125 _ = happyReduce_10

action_126 (30) = happyShift action_143
action_126 (40) = happyShift action_66
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (30) = happyShift action_142
action_127 (49) = happyShift action_92
action_127 (50) = happyShift action_93
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_49

action_129 _ = happyReduce_48

action_130 _ = happyReduce_12

action_131 (19) = happyShift action_139
action_131 (41) = happyShift action_140
action_131 (42) = happyShift action_141
action_131 (9) = happyGoto action_138
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (17) = happyShift action_47
action_132 (18) = happyShift action_48
action_132 (19) = happyShift action_49
action_132 (20) = happyShift action_60
action_132 (21) = happyShift action_61
action_132 (29) = happyShift action_52
action_132 (8) = happyGoto action_137
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (34) = happyShift action_67
action_133 (35) = happyShift action_68
action_133 (36) = happyShift action_69
action_133 (37) = happyShift action_70
action_133 (38) = happyShift action_71
action_133 (39) = happyShift action_136
action_133 _ = happyFail (happyExpListPerState 133)

action_134 _ = happyReduce_16

action_135 _ = happyReduce_17

action_136 _ = happyReduce_40

action_137 (34) = happyShift action_67
action_137 (35) = happyShift action_68
action_137 (36) = happyShift action_69
action_137 (37) = happyShift action_70
action_137 (38) = happyShift action_71
action_137 (39) = happyShift action_153
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (30) = happyShift action_152
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (31) = happyShift action_149
action_139 (41) = happyShift action_150
action_139 (42) = happyShift action_151
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (19) = happyShift action_148
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (19) = happyShift action_147
action_141 _ = happyFail (happyExpListPerState 141)

action_142 _ = happyReduce_50

action_143 (34) = happyReduce_27
action_143 (35) = happyReduce_27
action_143 (36) = happyReduce_27
action_143 (37) = happyReduce_27
action_143 (38) = happyReduce_27
action_143 (43) = happyReduce_27
action_143 (44) = happyReduce_27
action_143 (45) = happyReduce_27
action_143 (46) = happyReduce_27
action_143 (47) = happyReduce_27
action_143 (48) = happyReduce_27
action_143 _ = happyReduce_51

action_144 (19) = happyShift action_27
action_144 (22) = happyShift action_28
action_144 (26) = happyShift action_4
action_144 (27) = happyShift action_5
action_144 (28) = happyShift action_6
action_144 (32) = happyShift action_29
action_144 (52) = happyShift action_31
action_144 (54) = happyShift action_32
action_144 (55) = happyShift action_33
action_144 (56) = happyShift action_34
action_144 (58) = happyShift action_35
action_144 (6) = happyGoto action_23
action_144 (7) = happyGoto action_146
action_144 (10) = happyGoto action_25
action_144 (14) = happyGoto action_26
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_36

action_146 _ = happyReduce_9

action_147 _ = happyReduce_32

action_148 _ = happyReduce_30

action_149 (17) = happyShift action_47
action_149 (18) = happyShift action_48
action_149 (19) = happyShift action_49
action_149 (20) = happyShift action_60
action_149 (21) = happyShift action_61
action_149 (29) = happyShift action_52
action_149 (8) = happyGoto action_155
action_149 _ = happyFail (happyExpListPerState 149)

action_150 _ = happyReduce_31

action_151 _ = happyReduce_33

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

action_153 _ = happyReduce_41

action_154 _ = happyReduce_11

action_155 (34) = happyShift action_67
action_155 (35) = happyShift action_68
action_155 (36) = happyShift action_69
action_155 (37) = happyShift action_70
action_155 (38) = happyShift action_71
action_155 _ = happyReduce_34

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
		 (VarOp happy_var_1
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

happyReduce_12 = happyReduce 5 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (Block happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  7 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (Return happy_var_1
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 5 7 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 5 7 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 5 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (STRING_TOK happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintStr happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyTerminal (NUM_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Num happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyTerminal (STRING_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Str happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Add happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Div happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 8 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  8 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn8
		 (Bconst True
	)

happyReduce_29 = happySpecReduce_1  8 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn8
		 (Bconst False
	)

happyReduce_30 = happySpecReduce_2  9 happyReduction_30
happyReduction_30 (HappyTerminal (VAR_TOK happy_var_2))
	_
	 =  HappyAbsSyn9
		 (PreIncr happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  9 happyReduction_31
happyReduction_31 _
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (PostIncr happy_var_1
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  9 happyReduction_32
happyReduction_32 (HappyTerminal (VAR_TOK happy_var_2))
	_
	 =  HappyAbsSyn9
		 (PreDecr happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  9 happyReduction_33
happyReduction_33 _
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (PostDecr happy_var_1
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn9
		 (OpAssign happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 10 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 6 10 happyReduction_36
happyReduction_36 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ScanInt happy_var_1
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  10 happyReduction_37
happyReduction_37 _
	(HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn10
		 (Declr happy_var_1 happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 10 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_1  11 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn11
		 (Empty
	)

happyReduce_40 = happyReduce 4 11 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (ForAssign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 5 11 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (ForDeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_3  12 happyReduction_42
happyReduction_42 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (IsEqual happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (IsNEqual happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  12 happyReduction_45
happyReduction_45 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  12 happyReduction_46
happyReduction_46 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  12 happyReduction_47
happyReduction_47 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn12
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  12 happyReduction_48
happyReduction_48 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  12 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Or happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happyReduce 4 12 happyReduction_50
happyReduction_50 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Not happy_var_3
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 4 12 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_0  13 happyReduction_52
happyReduction_52  =  HappyAbsSyn13
		 ([]
	)

happyReduce_53 = happySpecReduce_2  13 happyReduction_53
happyReduction_53 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  14 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn14
		 (Tint
	)

happyReduce_55 = happySpecReduce_1  14 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn14
		 (Tbool
	)

happyReduce_56 = happySpecReduce_1  14 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn14
		 (Tstring
	)

happyReduce_57 = happySpecReduce_0  15 happyReduction_57
happyReduction_57  =  HappyAbsSyn15
		 ([]
	)

happyReduce_58 = happySpecReduce_2  15 happyReduction_58
happyReduction_58 (HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn15
		 ([(happy_var_1,happy_var_2)]
	)
happyReduction_58 _ _  = notHappyAtAll 

happyReduce_59 = happyReduce 4 15 happyReduction_59
happyReduction_59 ((HappyTerminal (VAR_TOK happy_var_4)) `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest

happyReduce_60 = happySpecReduce_0  16 happyReduction_60
happyReduction_60  =  HappyAbsSyn16
		 ([]
	)

happyReduce_61 = happySpecReduce_1  16 happyReduction_61
happyReduction_61 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  16 happyReduction_62
happyReduction_62 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_62 _ _ _  = notHappyAtAll 

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
         | VarOp OpStm
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
         | Bconst Bool
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | FuncCallExp String [Exp]
         deriving Show

data ExpCompare = LessThan Exp Exp
                | GreaterThan Exp Exp
                | LessOrEqual Exp Exp
                | GreaterOrEqual Exp Exp
                | IsEqual Exp Exp
                | IsNEqual Exp Exp
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
