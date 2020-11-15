{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
module ParserC0 where
import LexerC0
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\xe0\x00\x00\x00\x00\x00\x00\x38\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x44\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\xe0\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x20\x80\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x8e\x01\x00\x68\x01\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x50\x00\x00\x00\x00\x00\x1f\x04\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x90\x8e\x00\x00\x68\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x1c\x10\x00\x03\x00\x00\x00\x1f\x04\xc0\x00\x01\x00\xc0\x07\x01\x30\x40\x00\x00\x40\x3a\x06\x00\xa0\x05\x00\x00\x00\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1c\x10\x00\x03\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x1c\x10\x00\x03\x80\x00\x00\x00\x10\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x1f\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x80\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe2\x03\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x01\x01\x30\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x1c\x10\x00\x03\x00\x00\x00\x07\x04\xc0\x00\x00\x00\xc0\x01\x01\x30\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x0f\x3f\x00\x00\x00\x00\x02\x00\x30\x00\x00\x00\x40\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x80\x00\x00\x0c\x00\x00\x00\x20\x3e\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\xe9\x08\x00\x80\x16\x00\xf0\x41\x00\x0c\x10\x00\x00\x7c\x10\x00\x03\x04\x00\x00\x1f\x04\xc0\x00\x01\x00\xc0\x01\x01\x30\x00\x00\x00\x40\x3a\x02\x00\xa0\x05\x00\x1c\x10\x00\x03\x00\x00\x00\x07\x04\xc0\x00\x00\x00\xc0\x01\x01\x30\x00\x00\x00\x70\x40\x00\x0c\x00\x00\x00\x1c\x10\x00\x03\x00\x00\x00\x07\x04\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x00\x00\x80\x03\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x00\x20\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x03\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x00\x00\x3e\x00\x00\x00\x00\x00\x80\x0f\x00\x00\x00\x00\x00\xe0\x03\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x20\x00\x00\x00\x00\x00\x02\x00\x30\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\x08\x00\x80\x16\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parserC0","Funcs","Func","ReturnStm","Stm","Exp","IncrDecr","ExpCompare","Stmts","Type","Decl","Exps","num","str","id","true","false","return","main","int","bool","string","'('","')'","'='","'{'","'}'","'+'","'-'","'*'","'/'","'%'","';'","','","\"++\"","\"--\"","\"==\"","\"!=\"","\"<\"","\">\"","\">=\"","\"<=\"","\"&&\"","\"||\"","'!'","if","else","while","printint","scanint","printstr","%eof"]
        bit_start = st * 54
        bit_end = (st + 1) * 54
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..53]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x57\x00\x57\x00\x00\x00\x21\x00\x00\x00\x00\x00\x00\x00\xfd\xff\x00\x00\xfe\xff\x03\x00\x1a\x00\x57\x00\x37\x00\xf5\xff\x34\x00\x00\x00\x3c\x00\x57\x00\x00\x00\x4d\x00\x00\x00\x07\x00\x48\x00\x00\x00\x66\x00\xd4\x00\x53\x00\x00\x00\x00\x00\x78\x00\x90\x00\x97\x00\xa5\x00\x27\x00\x00\x00\x83\x00\xa7\x00\x42\x00\x3b\x00\x3b\x00\x14\x00\xb8\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x09\x00\x00\x00\x00\x00\x42\x00\xdd\x00\xfd\x00\x42\x00\x01\x00\x06\x00\x00\x00\x42\x00\x00\x00\xac\x00\xf7\x00\xfc\xff\x00\x00\x00\x00\x76\x00\x42\x00\x00\x00\x00\x00\x42\x00\x42\x00\x42\x00\x42\x00\x42\x00\x42\x00\x00\x00\x54\x00\x13\x00\x61\x00\x00\x00\x00\x00\xf9\x00\x28\x00\x7f\x00\xf5\x00\xfb\x00\x00\x00\xf1\x00\xf3\x00\x27\x00\x3b\x00\x3b\x00\x3b\x00\x42\x00\x27\x00\x42\x00\x42\x00\x42\x00\x42\x00\x42\x00\x42\x00\x00\x00\x00\x00\x00\x00\xbb\x00\xbb\x00\xb8\x00\x2b\x00\x00\x00\xfc\x00\xff\x00\x00\x00\xb2\x00\x00\x00\xfe\x00\x00\x00\x00\x00\xb8\x00\xb8\x00\xb8\x00\xb8\x00\xb8\x00\xb8\x00\xe9\x00\x45\x00\x43\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x63\x00\x27\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x84\x00\x8c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x72\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x01\x01\x00\x00\x00\x00\x06\x01\x94\x00\x00\x00\x00\x00\x00\x00\x00\x00\x95\x00\x07\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9b\x00\x00\x00\x00\x00\x00\x00\xb5\x00\xcc\x00\xcf\x00\x9e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xde\x00\x00\x00\x00\x00\xa0\x00\xe0\x00\x00\x00\x00\x00\xe2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa3\x00\x00\x00\x00\x00\xe4\x00\xe6\x00\xe8\x00\xea\x00\xec\x00\xee\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\x00\xd2\x00\xd5\x00\xd8\x00\xaa\x00\xb0\x00\xf0\x00\xf2\x00\xf4\x00\xf6\x00\xf8\x00\xfa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb3\x00\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\xfe\xff\x00\x00\xce\xff\xcd\xff\xcc\xff\x00\x00\xfd\xff\x00\x00\x00\x00\x00\x00\xcb\xff\x00\x00\x00\x00\x00\x00\xd0\xff\x00\x00\x00\x00\xca\xff\x00\x00\xd0\xff\x00\x00\x00\x00\xcf\xff\x00\x00\x00\x00\xc8\xff\xd0\xff\xfb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc7\xff\xe1\xff\xfa\xff\xeb\xff\xea\xff\xe9\xff\xf9\xff\xf8\xff\x00\x00\x00\x00\x00\x00\xc8\xff\x00\x00\x00\x00\xef\xff\x00\x00\xf5\xff\x00\x00\x00\x00\x00\x00\xde\xff\xe0\xff\x00\x00\xc8\xff\xdf\xff\xdd\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\xff\x00\x00\x00\x00\xe9\xff\xd3\xff\xd2\xff\x00\x00\x00\x00\x00\x00\x00\x00\xef\xff\xfc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\xff\xe4\xff\xe5\xff\xe6\xff\xe7\xff\xc6\xff\x00\x00\xe8\xff\x00\x00\x00\x00\xf7\xff\x00\x00\xf4\xff\x00\x00\xee\xff\xe2\xff\xda\xff\xd9\xff\xd7\xff\xd8\xff\xdb\xff\xdc\xff\xf2\xff\x00\x00\x00\x00\xd5\xff\xd6\xff\xf1\xff\xed\xff\xec\xff\xd4\xff\xd1\xff\x00\x00\xf6\xff\xf3\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x0c\x00\x01\x00\x02\x00\x03\x00\x08\x00\x09\x00\x0a\x00\x0c\x00\x0b\x00\x03\x00\x16\x00\x0b\x00\x06\x00\x0b\x00\x08\x00\x09\x00\x0a\x00\x16\x00\x0d\x00\x0b\x00\x0e\x00\x0f\x00\x03\x00\x17\x00\x18\x00\x06\x00\x15\x00\x08\x00\x09\x00\x0a\x00\x0c\x00\x17\x00\x18\x00\x0e\x00\x0f\x00\x03\x00\x28\x00\x0c\x00\x26\x00\x07\x00\x22\x00\x03\x00\x24\x00\x25\x00\x06\x00\x27\x00\x08\x00\x09\x00\x0a\x00\x1f\x00\x20\x00\x0c\x00\x0e\x00\x22\x00\x0c\x00\x24\x00\x25\x00\x03\x00\x27\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x16\x00\x0e\x00\x01\x00\x02\x00\x03\x00\x0b\x00\x1f\x00\x20\x00\x22\x00\x0e\x00\x24\x00\x25\x00\x0b\x00\x27\x00\x0c\x00\x03\x00\x0c\x00\x17\x00\x18\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x17\x00\x18\x00\x16\x00\x21\x00\x15\x00\x0b\x00\x08\x00\x09\x00\x0a\x00\x1f\x00\x20\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x03\x00\x17\x00\x18\x00\x0b\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x17\x00\x18\x00\x08\x00\x09\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0c\x00\x0b\x00\x00\x00\x01\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0c\x00\x08\x00\x01\x00\x01\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x08\x00\x08\x00\x02\x00\x03\x00\x15\x00\x04\x00\x05\x00\x0b\x00\x08\x00\x02\x00\x03\x00\x0a\x00\x02\x00\x03\x00\x0b\x00\x08\x00\x04\x00\x05\x00\x08\x00\x04\x00\x05\x00\x02\x00\x0a\x00\x02\x00\x03\x00\x0a\x00\x04\x00\x05\x00\x0b\x00\x08\x00\x02\x00\x03\x00\x0a\x00\x02\x00\x03\x00\x16\x00\x08\x00\x04\x00\x05\x00\x08\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x12\x00\x13\x00\x14\x00\x04\x00\x05\x00\x06\x00\x04\x00\x05\x00\x06\x00\x04\x00\x05\x00\x06\x00\x04\x00\x05\x00\x06\x00\x04\x00\x05\x00\x06\x00\x0b\x00\x03\x00\x0d\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x04\x00\x05\x00\x03\x00\x0c\x00\x0b\x00\xff\xff\x0b\x00\xff\xff\x15\x00\x07\x00\x15\x00\x08\x00\x0f\x00\x0c\x00\x23\x00\x07\x00\x07\x00\xff\xff\xff\xff\x15\x00\xff\xff\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x12\x00\x2e\x00\x2f\x00\x30\x00\x05\x00\x06\x00\x07\x00\x6d\x00\x0d\x00\x1b\x00\x13\x00\x33\x00\x1c\x00\x0c\x00\x05\x00\x06\x00\x07\x00\x45\x00\x3a\x00\x42\x00\x1d\x00\x1e\x00\x1b\x00\x34\x00\x35\x00\x1c\x00\x3b\x00\x05\x00\x06\x00\x07\x00\x5e\x00\x43\x00\x44\x00\x1d\x00\x4b\x00\x0a\x00\xff\xff\x10\x00\x3d\x00\x0b\x00\x1f\x00\x1b\x00\x20\x00\x21\x00\x1c\x00\x22\x00\x05\x00\x06\x00\x07\x00\x5a\x00\x5b\x00\x59\x00\x1d\x00\x1f\x00\x74\x00\x20\x00\x21\x00\x14\x00\x22\x00\x2e\x00\x2f\x00\x4e\x00\x4f\x00\x50\x00\x45\x00\x11\x00\x2e\x00\x2f\x00\x30\x00\x33\x00\x5a\x00\x5b\x00\x1f\x00\x16\x00\x20\x00\x21\x00\x33\x00\x22\x00\x83\x00\x24\x00\x84\x00\x34\x00\x35\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x34\x00\x35\x00\x45\x00\x51\x00\x39\x00\x33\x00\x05\x00\x06\x00\x07\x00\x5a\x00\x5b\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x38\x00\x34\x00\x35\x00\x5d\x00\x5f\x00\x60\x00\x61\x00\x62\x00\x63\x00\x64\x00\xe2\xff\xe2\xff\xe2\xff\xe2\xff\xe2\xff\x43\x00\x44\x00\x0d\x00\x0e\x00\xe2\xff\xe2\xff\xe2\xff\xe2\xff\xe2\xff\xe2\xff\x6c\x00\x29\x00\x07\x00\x02\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x58\x00\x03\x00\x02\x00\x08\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x03\x00\x03\x00\x17\x00\x18\x00\x55\x00\x2a\x00\x2b\x00\x28\x00\x19\x00\x24\x00\x18\x00\x2c\x00\x17\x00\x18\x00\x27\x00\x19\x00\x2a\x00\x2b\x00\x19\x00\x2a\x00\x2b\x00\x54\x00\x3d\x00\x17\x00\x7f\x00\x6a\x00\x2a\x00\x2b\x00\x26\x00\x19\x00\x17\x00\x7a\x00\x7b\x00\x17\x00\x86\x00\x45\x00\x19\x00\x52\x00\x2b\x00\x19\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x6f\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x71\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x2b\x00\x51\x00\x4b\x00\x2b\x00\x4c\x00\x4b\x00\x2b\x00\x7e\x00\x4b\x00\x2b\x00\x7d\x00\x4b\x00\x2b\x00\x7c\x00\x36\x00\x40\x00\x37\x00\x40\x00\x2b\x00\x3b\x00\x2b\x00\x6f\x00\x2b\x00\x69\x00\x2b\x00\x68\x00\x2b\x00\x67\x00\x2b\x00\x66\x00\x2b\x00\x65\x00\x2b\x00\x64\x00\x2b\x00\x79\x00\x2b\x00\x78\x00\x2b\x00\x77\x00\x2b\x00\x76\x00\x2b\x00\x75\x00\x2b\x00\x74\x00\x2b\x00\x3f\x00\x57\x00\x6e\x00\x00\x00\x5c\x00\x00\x00\x82\x00\x16\x00\x81\x00\x14\x00\x56\x00\x72\x00\x85\x00\x22\x00\x29\x00\x00\x00\x00\x00\x73\x00\x00\x00\x86\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 57) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57)
	]

happy_n_terms = 41 :: Int
happy_n_nonterms = 11 :: Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn4
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_2  0# happyReduction_2
happyReduction_2 happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_2 of { happy_var_2 -> 
	happyIn4
		 (happy_var_1 ++ [happy_var_2]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happyReduce 10# 1# happyReduction_3
happyReduction_3 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	case happyOut13 happy_x_4 of { happy_var_4 -> 
	case happyOut11 happy_x_7 of { happy_var_7 -> 
	case happyOut6 happy_x_8 of { happy_var_8 -> 
	happyIn5
		 (Funct happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest}}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happyReduce 7# 1# happyReduction_4
happyReduction_4 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_6 of { happy_var_6 -> 
	happyIn5
		 (FuncMain happy_var_1 happy_var_6
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happySpecReduce_2  2# happyReduction_5
happyReduction_5 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn6
		 (ReturnExp happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happySpecReduce_2  2# happyReduction_6
happyReduction_6 happy_x_2
	happy_x_1
	 =  happyIn6
		 (ReturnBool True
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happySpecReduce_2  2# happyReduction_7
happyReduction_7 happy_x_2
	happy_x_1
	 =  happyIn6
		 (ReturnBool False
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happyReduce 4# 3# happyReduction_8
happyReduction_8 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happyReduce 6# 3# happyReduction_9
happyReduction_9 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn7
		 (ScanInt happy_var_1
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happySpecReduce_3  3# happyReduction_10
happyReduction_10 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn7
		 (Declr happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happyReduce 5# 3# happyReduction_11
happyReduction_11 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	case happyOut8 happy_x_4 of { happy_var_4 -> 
	happyIn7
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happyReduce 7# 3# happyReduction_12
happyReduction_12 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	case happyOut7 happy_x_7 of { happy_var_7 -> 
	happyIn7
		 (If happy_var_3 happy_var_5 Else happy_var_7
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happyReduce 5# 3# happyReduction_13
happyReduction_13 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn7
		 (If happy_var_3 happy_var_5 Skip Skip
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happyReduce 5# 3# happyReduction_14
happyReduction_14 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn7
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_3  3# happyReduction_15
happyReduction_15 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (Block happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_2  3# happyReduction_16
happyReduction_16 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (Return happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happyReduce 5# 3# happyReduction_17
happyReduction_17 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happyReduce 5# 3# happyReduction_18
happyReduction_18 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (PrintInt happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happyReduce 5# 3# happyReduction_19
happyReduction_19 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_3 of { (STRING_TOK happy_var_3) -> 
	happyIn7
		 (PrintStr happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_1  4# happyReduction_20
happyReduction_20 happy_x_1
	 =  case happyOutTok happy_x_1 of { (NUM_TOK happy_var_1) -> 
	happyIn8
		 (Num happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  4# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOutTok happy_x_1 of { (STRING_TOK happy_var_1) -> 
	happyIn8
		 (Str happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_1  4# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn8
		 (Var happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_3  4# happyReduction_23
happyReduction_23 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	happyIn8
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_3  4# happyReduction_24
happyReduction_24 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Add happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_3  4# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Sub happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_3  4# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Mult happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_3  4# happyReduction_27
happyReduction_27 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Div happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_3  4# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Mod happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happyReduce 4# 4# happyReduction_29
happyReduction_29 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_1  4# happyReduction_30
happyReduction_30 happy_x_1
	 =  happyIn8
		 (IncrDecr
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happySpecReduce_2  5# happyReduction_31
happyReduction_31 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn9
		 (PreIncr happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happySpecReduce_2  5# happyReduction_32
happyReduction_32 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn9
		 (PostIncr happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_2  5# happyReduction_33
happyReduction_33 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn9
		 (PreDecr happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_2  5# happyReduction_34
happyReduction_34 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn9
		 (PostDecr happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_3  6# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (IsEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happySpecReduce_3  6# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (IsNEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happySpecReduce_3  6# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (LessOrEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_3  6# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (GreaterOrEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  6# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (LessThan happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  6# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (GreaterThan happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  6# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (And happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  6# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (Or happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happyReduce 4# 6# happyReduction_43
happyReduction_43 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (Not happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_1  6# happyReduction_44
happyReduction_44 happy_x_1
	 =  happyIn10
		 (Bconst True
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_1  6# happyReduction_45
happyReduction_45 happy_x_1
	 =  happyIn10
		 (Bconst False
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happyReduce 4# 6# happyReduction_46
happyReduction_46 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut14 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happySpecReduce_0  7# happyReduction_47
happyReduction_47  =  happyIn11
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_2  7# happyReduction_48
happyReduction_48 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn11
		 (happy_var_1 ++ [happy_var_2]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_1  8# happyReduction_49
happyReduction_49 happy_x_1
	 =  happyIn12
		 (Tint
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_1  8# happyReduction_50
happyReduction_50 happy_x_1
	 =  happyIn12
		 (Tbool
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_1  8# happyReduction_51
happyReduction_51 happy_x_1
	 =  happyIn12
		 (Tstring
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_0  9# happyReduction_52
happyReduction_52  =  happyIn13
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_2  9# happyReduction_53
happyReduction_53 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn13
		 ([(happy_var_1,happy_var_2)]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happyReduce 4# 9# happyReduction_54
happyReduction_54 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	case happyOutTok happy_x_4 of { (VAR_TOK happy_var_4) -> 
	happyIn13
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_0  10# happyReduction_55
happyReduction_55  =  happyIn14
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_1  10# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn14
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happySpecReduce_3  10# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (happy_var_1 ++ [happy_var_3]
	)}}

happyNewToken action sts stk [] =
	happyDoAction 40# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	NUM_TOK happy_dollar_dollar -> cont 1#;
	STRING_TOK happy_dollar_dollar -> cont 2#;
	VAR_TOK happy_dollar_dollar -> cont 3#;
	TRUE_TOK happy_dollar_dollar -> cont 4#;
	FALSE_TOK happy_dollar_dollar -> cont 5#;
	RETURN_TOK -> cont 6#;
	MAIN_TOK -> cont 7#;
	INT_DEF_TOK -> cont 8#;
	BOOL_DEF_TOK -> cont 9#;
	STRING_DEF_TOK -> cont 10#;
	LPAREN_TOK -> cont 11#;
	RPAREN_TOK -> cont 12#;
	ASSIGN_TOK -> cont 13#;
	LBRACE_TOK -> cont 14#;
	RBRACE_TOK -> cont 15#;
	PLUS_TOK -> cont 16#;
	MINUS_TOK -> cont 17#;
	MULT_TOK -> cont 18#;
	DIV_TOK -> cont 19#;
	MOD_TOK -> cont 20#;
	SEMICOLON_TOK -> cont 21#;
	COLON_TOK -> cont 22#;
	INCR_TOK -> cont 23#;
	DECR_TOK -> cont 24#;
	EQUAL_TOK -> cont 25#;
	NEQUAL_TOK -> cont 26#;
	LTHEN_TOK -> cont 27#;
	GTHEN_TOK -> cont 28#;
	GTOE_TOK -> cont 29#;
	LTOE_TOK -> cont 30#;
	AND_TOK -> cont 31#;
	OR_TOK -> cont 32#;
	NOT_TOK -> cont 33#;
	IF_TOK -> cont 34#;
	ELSE_TOK -> cont 35#;
	WHILE_TOK -> cont 36#;
	PRINTINT_TOK -> cont 37#;
	SCANINT_TOK -> cont 38#;
	PRINTSTR_TOK -> cont 39#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40# tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {x' = happyOut4 x} in x'))

happySeq = happyDontSeq


type Dcl = (Type,String)

data Type = Tint | Tbool | Tstring deriving Show

data Func = Funct Type String [Dcl] [Stm] ReturnStm
          | FuncMain Type [Stm]
          deriving Show

data ReturnStm = ReturnExp [Exp]
               | ReturnBool Bool
               deriving Show

data IncrDecr = PreIncr String
              | PostIncr String
              | PreDecr String
              | PostDecr String
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
         | IncrDecr
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
{-# LINE 10 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 10 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 10 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8371_0/ghc_2.h" #-}
































































































































































































{-# LINE 10 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList







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

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+#  i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 180 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+#  nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+#  nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


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


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

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
