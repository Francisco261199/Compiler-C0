{-# OPTIONS_GHC -w #-}
module ParserC0 where
import LexerC0
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,203) ([0,6,0,24576,0,0,32,0,0,0,0,0,0,0,0,0,0,2048,0,0,96,0,8192,0,0,0,1025,0,16384,0,0,96,0,0,0,0,512,0,0,0,0,0,1138,20480,0,0,0,0,512,0,0,0,0,2,0,0,40,0,36608,0,0,0,0,0,128,0,0,8,0,36608,0,8,2288,32768,0,3186,20480,0,7936,0,0,1024,0,0,0,0,128,0,0,0,0,0,0,0,2096,0,0,131,0,12288,8,0,0,514,0,32768,0,0,0,0,12288,8,0,0,0,0,0,63,0,256,4,0,7952,0,33536,0,0,2096,0,0,131,0,12288,8,0,33536,0,0,2096,0,0,131,0,0,8192,0,0,0,0,0,8095,0,256,1536,0,8,0,0,0,0,0,0,0,128,0,0,16,96,29184,4,80,2288,32768,0,143,2048,61440,8,128,33536,0,0,18208,0,5,131,0,12288,8,0,33536,0,0,2096,0,0,131,0,12288,8,0,0,0,0,0,0,0,0,0,0,0,0,0,448,0,0,28,0,61440,1,0,16400,0,0,0,0,0,32,0,0,0,0,16128,0,0,0,0,0,0,0,0,0,0,7936,0,0,496,0,0,31,0,61440,1,0,7936,0,0,496,0,0,0,0,256,4,0,16,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18208,0,5,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parserC0","Func","ReturnStm","Stm","Exp","ExpCompare","Stmts","Type","Decl","Exps","num","var","true","false","return","int","bool","'('","')'","'='","'{'","'}'","'+'","'-'","'*'","'/'","'%'","';'","','","\"==\"","\"!=\"","\"<\"","\">\"","\">=\"","\"<=\"","\"&&\"","\"||\"","'!'","if","else","while","%eof"]
        bit_start = st * 44
        bit_end = (st + 1) * 44
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..43]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (18) = happyShift action_3
action_0 (19) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (10) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_3
action_1 (19) = happyShift action_4
action_1 (10) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (14) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_37

action_4 _ = happyReduce_38

action_5 (44) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (20) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (18) = happyShift action_3
action_7 (19) = happyShift action_4
action_7 (10) = happyGoto action_8
action_7 (11) = happyGoto action_9
action_7 _ = happyReduce_39

action_8 (14) = happyShift action_12
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (21) = happyShift action_10
action_9 (31) = happyShift action_11
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_14
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (18) = happyShift action_3
action_11 (19) = happyShift action_4
action_11 (10) = happyGoto action_13
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_40

action_13 (14) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyGoto action_15
action_14 _ = happyReduce_35

action_15 (14) = happyShift action_20
action_15 (17) = happyShift action_21
action_15 (18) = happyShift action_3
action_15 (19) = happyShift action_4
action_15 (23) = happyShift action_22
action_15 (41) = happyShift action_23
action_15 (43) = happyShift action_24
action_15 (5) = happyGoto action_17
action_15 (6) = happyGoto action_18
action_15 (10) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_41

action_17 (30) = happyShift action_38
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_36

action_19 (14) = happyShift action_37
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (20) = happyShift action_35
action_20 (22) = happyShift action_36
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyShift action_30
action_21 (14) = happyShift action_31
action_21 (15) = happyShift action_32
action_21 (16) = happyShift action_33
action_21 (20) = happyShift action_34
action_21 (7) = happyGoto action_28
action_21 (12) = happyGoto action_29
action_21 _ = happyReduce_42

action_22 (9) = happyGoto action_27
action_22 _ = happyReduce_35

action_23 (20) = happyShift action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (20) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (13) = happyShift action_30
action_25 (14) = happyShift action_56
action_25 (15) = happyShift action_57
action_25 (16) = happyShift action_58
action_25 (20) = happyShift action_34
action_25 (40) = happyShift action_59
action_25 (7) = happyGoto action_54
action_25 (8) = happyGoto action_60
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (13) = happyShift action_30
action_26 (14) = happyShift action_56
action_26 (15) = happyShift action_57
action_26 (16) = happyShift action_58
action_26 (20) = happyShift action_34
action_26 (40) = happyShift action_59
action_26 (7) = happyGoto action_54
action_26 (8) = happyGoto action_55
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_20
action_27 (17) = happyShift action_21
action_27 (18) = happyShift action_3
action_27 (19) = happyShift action_4
action_27 (23) = happyShift action_22
action_27 (24) = happyShift action_53
action_27 (41) = happyShift action_23
action_27 (43) = happyShift action_24
action_27 (5) = happyGoto action_52
action_27 (6) = happyGoto action_18
action_27 (10) = happyGoto action_19
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (25) = happyShift action_47
action_28 (26) = happyShift action_48
action_28 (27) = happyShift action_49
action_28 (28) = happyShift action_50
action_28 (29) = happyShift action_51
action_28 _ = happyReduce_43

action_29 (31) = happyShift action_46
action_29 _ = happyReduce_2

action_30 _ = happyReduce_14

action_31 (20) = happyShift action_45
action_31 _ = happyReduce_15

action_32 _ = happyReduce_3

action_33 _ = happyReduce_4

action_34 (13) = happyShift action_30
action_34 (14) = happyShift action_31
action_34 (20) = happyShift action_34
action_34 (7) = happyGoto action_44
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (13) = happyShift action_30
action_35 (14) = happyShift action_31
action_35 (20) = happyShift action_34
action_35 (7) = happyGoto action_28
action_35 (12) = happyGoto action_43
action_35 _ = happyReduce_42

action_36 (13) = happyShift action_30
action_36 (14) = happyShift action_31
action_36 (20) = happyShift action_34
action_36 (7) = happyGoto action_42
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_40
action_37 (30) = happyShift action_41
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (24) = happyShift action_39
action_38 _ = happyReduce_12

action_39 _ = happyReduce_1

action_40 (13) = happyShift action_30
action_40 (14) = happyShift action_31
action_40 (20) = happyShift action_34
action_40 (7) = happyGoto action_84
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_6

action_42 (25) = happyShift action_47
action_42 (26) = happyShift action_48
action_42 (27) = happyShift action_49
action_42 (28) = happyShift action_50
action_42 (29) = happyShift action_51
action_42 (30) = happyShift action_83
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (21) = happyShift action_82
action_43 (31) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (21) = happyShift action_81
action_44 (25) = happyShift action_47
action_44 (26) = happyShift action_48
action_44 (27) = happyShift action_49
action_44 (28) = happyShift action_50
action_44 (29) = happyShift action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (13) = happyShift action_30
action_45 (14) = happyShift action_31
action_45 (20) = happyShift action_34
action_45 (7) = happyGoto action_28
action_45 (12) = happyGoto action_80
action_45 _ = happyReduce_42

action_46 (13) = happyShift action_30
action_46 (14) = happyShift action_31
action_46 (20) = happyShift action_34
action_46 (7) = happyGoto action_79
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (13) = happyShift action_30
action_47 (14) = happyShift action_31
action_47 (20) = happyShift action_34
action_47 (7) = happyGoto action_78
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (13) = happyShift action_30
action_48 (14) = happyShift action_31
action_48 (20) = happyShift action_34
action_48 (7) = happyGoto action_77
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (13) = happyShift action_30
action_49 (14) = happyShift action_31
action_49 (20) = happyShift action_34
action_49 (7) = happyGoto action_76
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (13) = happyShift action_30
action_50 (14) = happyShift action_31
action_50 (20) = happyShift action_34
action_50 (7) = happyGoto action_75
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (13) = happyShift action_30
action_51 (14) = happyShift action_31
action_51 (20) = happyShift action_34
action_51 (7) = happyGoto action_74
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (30) = happyShift action_73
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_11

action_54 (25) = happyShift action_47
action_54 (26) = happyShift action_48
action_54 (27) = happyShift action_49
action_54 (28) = happyShift action_50
action_54 (29) = happyShift action_51
action_54 (32) = happyShift action_67
action_54 (33) = happyShift action_68
action_54 (34) = happyShift action_69
action_54 (35) = happyShift action_70
action_54 (36) = happyShift action_71
action_54 (37) = happyShift action_72
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (21) = happyShift action_66
action_55 (38) = happyShift action_62
action_55 (39) = happyShift action_63
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (20) = happyShift action_65
action_56 _ = happyReduce_15

action_57 _ = happyReduce_32

action_58 _ = happyReduce_33

action_59 (20) = happyShift action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (21) = happyShift action_61
action_60 (38) = happyShift action_62
action_60 (39) = happyShift action_63
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_20
action_61 (17) = happyShift action_21
action_61 (18) = happyShift action_3
action_61 (19) = happyShift action_4
action_61 (23) = happyShift action_22
action_61 (41) = happyShift action_23
action_61 (43) = happyShift action_24
action_61 (5) = happyGoto action_52
action_61 (6) = happyGoto action_99
action_61 (10) = happyGoto action_19
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (13) = happyShift action_30
action_62 (14) = happyShift action_56
action_62 (15) = happyShift action_57
action_62 (16) = happyShift action_58
action_62 (20) = happyShift action_34
action_62 (40) = happyShift action_59
action_62 (7) = happyGoto action_54
action_62 (8) = happyGoto action_98
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (13) = happyShift action_30
action_63 (14) = happyShift action_56
action_63 (15) = happyShift action_57
action_63 (16) = happyShift action_58
action_63 (20) = happyShift action_34
action_63 (40) = happyShift action_59
action_63 (7) = happyGoto action_54
action_63 (8) = happyGoto action_97
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (13) = happyShift action_30
action_64 (14) = happyShift action_56
action_64 (15) = happyShift action_57
action_64 (16) = happyShift action_58
action_64 (20) = happyShift action_34
action_64 (40) = happyShift action_59
action_64 (7) = happyGoto action_54
action_64 (8) = happyGoto action_96
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (13) = happyShift action_30
action_65 (14) = happyShift action_31
action_65 (20) = happyShift action_34
action_65 (7) = happyGoto action_28
action_65 (12) = happyGoto action_95
action_65 _ = happyReduce_42

action_66 (14) = happyShift action_20
action_66 (17) = happyShift action_21
action_66 (18) = happyShift action_3
action_66 (19) = happyShift action_4
action_66 (23) = happyShift action_22
action_66 (41) = happyShift action_23
action_66 (43) = happyShift action_24
action_66 (5) = happyGoto action_52
action_66 (6) = happyGoto action_94
action_66 (10) = happyGoto action_19
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (13) = happyShift action_30
action_67 (14) = happyShift action_31
action_67 (20) = happyShift action_34
action_67 (7) = happyGoto action_93
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (13) = happyShift action_30
action_68 (14) = happyShift action_31
action_68 (20) = happyShift action_34
action_68 (7) = happyGoto action_92
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (13) = happyShift action_30
action_69 (14) = happyShift action_31
action_69 (20) = happyShift action_34
action_69 (7) = happyGoto action_91
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (13) = happyShift action_30
action_70 (14) = happyShift action_31
action_70 (20) = happyShift action_34
action_70 (7) = happyGoto action_90
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (13) = happyShift action_30
action_71 (14) = happyShift action_31
action_71 (20) = happyShift action_34
action_71 (7) = happyGoto action_89
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (13) = happyShift action_30
action_72 (14) = happyShift action_31
action_72 (20) = happyShift action_34
action_72 (7) = happyGoto action_88
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_12

action_74 _ = happyReduce_21

action_75 _ = happyReduce_20

action_76 _ = happyReduce_19

action_77 (27) = happyShift action_49
action_77 (28) = happyShift action_50
action_77 (29) = happyShift action_51
action_77 _ = happyReduce_18

action_78 (27) = happyShift action_49
action_78 (28) = happyShift action_50
action_78 (29) = happyShift action_51
action_78 _ = happyReduce_17

action_79 (25) = happyShift action_47
action_79 (26) = happyShift action_48
action_79 (27) = happyShift action_49
action_79 (28) = happyShift action_50
action_79 (29) = happyShift action_51
action_79 _ = happyReduce_44

action_80 (21) = happyShift action_87
action_80 (31) = happyShift action_46
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_16

action_82 (30) = happyShift action_86
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_5

action_84 (25) = happyShift action_47
action_84 (26) = happyShift action_48
action_84 (27) = happyShift action_49
action_84 (28) = happyShift action_50
action_84 (29) = happyShift action_51
action_84 (30) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_7

action_86 _ = happyReduce_13

action_87 _ = happyReduce_22

action_88 (25) = happyShift action_47
action_88 (26) = happyShift action_48
action_88 (27) = happyShift action_49
action_88 (28) = happyShift action_50
action_88 (29) = happyShift action_51
action_88 _ = happyReduce_25

action_89 (25) = happyShift action_47
action_89 (26) = happyShift action_48
action_89 (27) = happyShift action_49
action_89 (28) = happyShift action_50
action_89 (29) = happyShift action_51
action_89 _ = happyReduce_26

action_90 (25) = happyShift action_47
action_90 (26) = happyShift action_48
action_90 (27) = happyShift action_49
action_90 (28) = happyShift action_50
action_90 (29) = happyShift action_51
action_90 _ = happyReduce_28

action_91 (25) = happyShift action_47
action_91 (26) = happyShift action_48
action_91 (27) = happyShift action_49
action_91 (28) = happyShift action_50
action_91 (29) = happyShift action_51
action_91 _ = happyReduce_27

action_92 (25) = happyShift action_47
action_92 (26) = happyShift action_48
action_92 (27) = happyShift action_49
action_92 (28) = happyShift action_50
action_92 (29) = happyShift action_51
action_92 _ = happyReduce_24

action_93 (25) = happyShift action_47
action_93 (26) = happyShift action_48
action_93 (27) = happyShift action_49
action_93 (28) = happyShift action_50
action_93 (29) = happyShift action_51
action_93 _ = happyReduce_23

action_94 (42) = happyShift action_102
action_94 _ = happyReduce_9

action_95 (21) = happyShift action_101
action_95 (31) = happyShift action_46
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (21) = happyShift action_100
action_96 (38) = happyShift action_62
action_96 (39) = happyShift action_63
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_30

action_98 _ = happyReduce_29

action_99 _ = happyReduce_10

action_100 _ = happyReduce_31

action_101 (25) = happyReduce_22
action_101 (26) = happyReduce_22
action_101 (27) = happyReduce_22
action_101 (28) = happyReduce_22
action_101 (29) = happyReduce_22
action_101 (32) = happyReduce_22
action_101 (33) = happyReduce_22
action_101 (34) = happyReduce_22
action_101 (35) = happyReduce_22
action_101 (36) = happyReduce_22
action_101 (37) = happyReduce_22
action_101 _ = happyReduce_34

action_102 (14) = happyShift action_20
action_102 (17) = happyShift action_21
action_102 (18) = happyShift action_3
action_102 (19) = happyShift action_4
action_102 (23) = happyShift action_22
action_102 (41) = happyShift action_23
action_102 (43) = happyShift action_24
action_102 (5) = happyGoto action_52
action_102 (6) = happyGoto action_103
action_102 (10) = happyGoto action_19
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_8

happyReduce_1 = happyReduce 10 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Funct happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_2  5 happyReduction_2
happyReduction_2 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ReturnExp happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	_
	 =  HappyAbsSyn5
		 (ReturnBool True
	)

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 _
	_
	 =  HappyAbsSyn5
		 (ReturnBool False
	)

happyReduce_5 = happyReduce 4 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	(HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Declr happy_var_1 happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 5 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_2)) `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 7 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 6 happyReduction_9
happyReduction_9 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_3 happy_var_5 Skip
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 5 6 happyReduction_10
happyReduction_10 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Block happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (Return happy_var_1
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 5 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyTerminal (NUM_TOK happy_var_1))
	 =  HappyAbsSyn7
		 (Num happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 (HappyTerminal (VAR_TOK happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Add happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Div happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  7 happyReduction_21
happyReduction_21 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 7 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (IsEqual happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (IsNEqual happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (LessOrEqual happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  8 happyReduction_29
happyReduction_29 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (And happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  8 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Or happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 8 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Not happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  8 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn8
		 (Bconst True
	)

happyReduce_33 = happySpecReduce_1  8 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn8
		 (Bconst False
	)

happyReduce_34 = happyReduce 4 8 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR_TOK happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_0  9 happyReduction_35
happyReduction_35  =  HappyAbsSyn9
		 ([]
	)

happyReduce_36 = happySpecReduce_2  9 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  10 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn10
		 (Tint
	)

happyReduce_38 = happySpecReduce_1  10 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn10
		 (Tbool
	)

happyReduce_39 = happySpecReduce_0  11 happyReduction_39
happyReduction_39  =  HappyAbsSyn11
		 ([]
	)

happyReduce_40 = happySpecReduce_2  11 happyReduction_40
happyReduction_40 (HappyTerminal (VAR_TOK happy_var_2))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ([(happy_var_1,happy_var_2)]
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happyReduce 4 11 happyReduction_41
happyReduction_41 ((HappyTerminal (VAR_TOK happy_var_4)) `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_0  12 happyReduction_42
happyReduction_42  =  HappyAbsSyn12
		 ([]
	)

happyReduce_43 = happySpecReduce_1  12 happyReduction_43
happyReduction_43 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	NUM_TOK happy_dollar_dollar -> cont 13;
	VAR_TOK happy_dollar_dollar -> cont 14;
	TRUE_TOK happy_dollar_dollar -> cont 15;
	FALSE_TOK happy_dollar_dollar -> cont 16;
	RETURN_TOK -> cont 17;
	INT_DEF_TOK -> cont 18;
	BOOL_DEF_TOK -> cont 19;
	LPAREN_TOK -> cont 20;
	RPAREN_TOK -> cont 21;
	ASSIGN_TOK -> cont 22;
	LBRACE_TOK -> cont 23;
	RBRACE_TOK -> cont 24;
	PLUS_TOK -> cont 25;
	MINUS_TOK -> cont 26;
	MULT_TOK -> cont 27;
	DIV_TOK -> cont 28;
	MOD_TOK -> cont 29;
	SEMICOLON_TOK -> cont 30;
	COLON_TOK -> cont 31;
	EQUAL_TOK -> cont 32;
	NEQUAL_TOK -> cont 33;
	LTHEN_TOK -> cont 34;
	GTHEN_TOK -> cont 35;
	GTOE_TOK -> cont 36;
	LTOE_TOK -> cont 37;
	AND_TOK -> cont 38;
	OR_TOK -> cont 39;
	NOT_TOK -> cont 40;
	IF_TOK -> cont 41;
	ELSE_TOK -> cont 42;
	WHILE_TOK -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
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

data Type = Tint | Tbool deriving Show

data Stmts = Stm
           deriving Show

data Decl = Dcl
          deriving Show

data Func = Funct Type String [Dcl] [Stm] ReturnStm
          deriving Show

data Exps = Exp
          deriving Show

data ReturnStm = ReturnExp [Exp]
               | ReturnBool Bool
               deriving Show

 -- data PrintStm = PFuncCall String [Decl]
    --          deriving Show

data Stm = Assign String Exp
         | Declr Type String
         | DeclAsgn Type String Exp
         | If ExpCompare Stm Stm
         | Else Stm
         | While ExpCompare Stm
         | FuncCall String [Exp]
         -- | PrintInt String
        -- | For Assign
         | Block [Stm]
         | Return ReturnStm
         | Skip
         deriving Show

data Exp = Num Int
         | Var String
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | FuncCallExp String [Exp]
        -- | ScanInt
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
