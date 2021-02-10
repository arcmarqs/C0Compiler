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

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\xe0\x00\x00\x00\x00\x00\x00\x70\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x38\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x20\x80\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x80\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x3c\x06\x00\xa0\x0b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x00\x00\x00\x80\x0f\x01\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x80\x0f\x01\x00\x00\x10\x00\xc0\x87\x00\x00\x00\x08\x00\x80\x38\x00\x01\x00\x00\x00\xf0\x21\x00\x00\x08\x02\x00\xf8\x10\x00\x00\x04\x01\x00\x90\xc7\x00\x00\x74\x01\x00\x00\x80\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\x10\x00\x00\x00\x01\x00\x00\x08\x00\x00\x00\x00\x00\x3e\x04\x00\x00\x40\x00\x00\x1f\x02\x00\x00\x20\x00\x00\x00\x04\x04\x00\x00\x00\xc0\x87\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfc\x00\x00\x00\x00\x00\x00\x3e\x00\x00\x00\x00\x00\x10\x40\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\xc4\x07\x00\x00\x00\x80\x0f\x01\x00\x00\x10\x00\xc0\x87\x00\x00\x00\x08\x00\xe0\x43\x00\x00\x00\x04\x00\xf0\x21\x00\x00\x00\x02\x00\xf8\x10\x00\x00\x00\x01\x00\x7c\x08\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\xc3\x0f\x00\x00\x00\x00\x01\x00\x18\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x08\x00\x00\x82\x00\x00\x00\x08\x00\xc0\x00\x00\x00\x1f\x02\x00\x80\x20\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x7c\x00\x00\x00\x00\x00\x20\x3e\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x1f\x02\x00\x00\x20\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x02\x18\x00\x00\x80\x3c\x02\x00\xa0\x0b\x00\xf0\x21\x00\x00\x08\x02\x00\xf8\x10\x00\x00\x04\x01\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x04\x00\x00\x40\x00\x00\xe4\x11\x00\x00\x5d\x00\x80\x0f\x01\x00\x00\x10\x00\xc0\x87\x00\x00\x00\x08\x00\xe0\x43\x00\x00\x00\x04\x00\xf0\x21\x00\x00\x00\x02\x00\xf8\x10\x00\x00\x00\x01\x00\x7c\x08\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x01\x00\x00\x00\x00\x00\xe0\x00\x00\x00\x00\x00\x40\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x1f\x02\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x07\x00\x00\x00\x00\x00\xe0\x03\x00\x00\x00\x00\x00\xf0\x01\x00\x00\x00\x00\x00\xf8\x00\x00\x00\x00\x00\x00\x7c\x00\x00\x00\x00\x00\x00\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x0c\x00\x00\x00\xf0\x21\x00\x00\x00\x02\x00\x00\x00\x7e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x07\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x01\x0c\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc8\x23\x00\x00\xba\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x43\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x47\x00\x00\x74\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x03\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parserC0","Funcs","Func","Stm","Exp","Op","OpStm","OpFor","ExpCompare","Stmts","Type","Decl","Exps","num","str","id","true","false","return","int","bool","string","'('","')'","'='","'{'","'}'","'+'","'-'","'*'","'/'","'%'","';'","','","\"++\"","\"--\"","\"==\"","\"!=\"","\"<\"","\">\"","\">=\"","\"<=\"","\"&&\"","\"||\"","'!'","if","else","while","for","print_int","scan_int","print_str","%eof"]
        bit_start = st * 55
        bit_end = (st + 1) * 55
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..54]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x6a\x00\x6a\x00\x00\x00\x05\x00\x00\x00\x00\x00\x00\x00\x14\x00\x00\x00\xf7\xff\x6a\x00\x07\x00\xfe\xff\x09\x00\x6a\x00\x00\x00\x1f\x00\x00\x00\x11\x00\x00\x00\x00\x00\x00\x00\x34\x00\x86\x00\x0b\x00\x00\x00\x00\x00\x1e\x00\x4b\x00\x79\x00\x87\x00\x91\x00\x0b\x00\x0b\x00\x51\x00\x01\x00\x01\x00\x1d\x00\xbc\x00\x00\x00\x00\x00\xba\x00\x00\x00\x00\x00\x0b\x00\xbd\x00\x0b\x00\x0b\x00\x90\x00\x0b\x00\x00\x00\xc2\x00\xda\x00\x25\x00\x3b\x00\x8f\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x00\x00\x00\x00\x4e\x00\x30\x00\xbe\x00\x5d\x00\x6c\x00\x01\x00\x32\x00\x01\x00\x71\x00\xf0\x00\x00\x00\x98\x00\xa1\x00\xe4\x00\xe5\x00\x0b\x00\xf1\x00\xf3\xff\x26\x00\x01\x00\x01\x00\x00\x00\x0b\x00\x26\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x0b\x00\x00\x00\x00\x00\x00\x00\x6f\x00\x6f\x00\x2e\x00\x00\x00\xea\x00\xef\x00\x0b\x00\x00\x00\xc8\x00\x00\x00\xda\x00\x00\x00\x00\x00\x00\x00\xda\x00\xda\x00\xda\x00\xda\x00\xda\x00\xda\x00\xdd\x00\x84\x00\x00\x00\x00\x00\x00\x00\x3c\x00\x0b\x00\xce\x00\x00\x00\x00\x00\x00\x00\xd4\x00\xf5\x00\x40\x00\xfe\x00\xff\x00\x7b\x00\x26\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\xda\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x5b\x00\x9c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa5\x00\x00\x00\x00\x00\x59\x00\x00\x00\x00\x00\x00\x00\xfb\x00\x00\x00\x00\x00\xfd\x00\xb6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x01\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x01\x06\x01\x3f\x00\xeb\x00\xec\x00\xb6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x01\x00\x00\xaa\x00\x08\x01\x00\x00\x09\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xac\x00\x0a\x01\x0b\x01\x0c\x01\x0d\x01\x0e\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xed\x00\x00\x00\xee\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0f\x01\x00\x00\x00\x00\xb7\x00\xf3\x00\xf4\x00\x00\x00\xb3\x00\xb8\x00\x10\x01\x11\x01\x12\x01\x13\x01\x14\x01\x15\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x16\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x17\x01\x19\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x00\x00\x00\x00\x00\x00\x00\x1a\x01\x00\x00\x00\x00\xc1\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\xfe\xff\x00\x00\xcb\xff\xca\xff\xc9\xff\x00\x00\xfd\xff\x00\x00\xc8\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc7\xff\x00\x00\xcd\xff\x00\x00\xc6\xff\xcc\xff\xfb\xff\x00\x00\x00\x00\x00\x00\xcd\xff\xfc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf1\xff\xf0\xff\xef\xff\xe6\xff\xe5\xff\x00\x00\x00\x00\xc5\xff\x00\x00\x00\x00\x00\x00\xde\xff\x00\x00\xc4\xff\x00\x00\x00\x00\x00\x00\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf5\xff\xf6\xff\x00\x00\x00\x00\xef\xff\xcf\xff\xce\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd1\xff\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe8\xff\xe9\xff\xea\xff\xeb\xff\xec\xff\x00\x00\xed\xff\x00\x00\x00\x00\x00\x00\xdf\xff\x00\x00\xdd\xff\xc3\xff\xf4\xff\xee\xff\xe7\xff\xd7\xff\xd6\xff\xd4\xff\xd5\xff\xd8\xff\xd9\xff\xf9\xff\x00\x00\xd2\xff\xd3\xff\xf7\xff\x00\x00\x00\x00\x00\x00\xf3\xff\xf2\xff\xdb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd0\xff\x00\x00\xfa\xff\xe2\xff\xe4\xff\x00\x00\xe3\xff\xe1\xff\x00\x00\xda\xff\xf8\xff\xe0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x0a\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x14\x00\x03\x00\x0b\x00\x03\x00\x0a\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x1e\x00\x1f\x00\x15\x00\x03\x00\x0a\x00\x0d\x00\x06\x00\x07\x00\x08\x00\x09\x00\x07\x00\x08\x00\x09\x00\x0d\x00\x0e\x00\x03\x00\x20\x00\x03\x00\x06\x00\x07\x00\x08\x00\x09\x00\x26\x00\x0a\x00\x03\x00\x0d\x00\x0e\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0b\x00\x26\x00\x21\x00\x0d\x00\x23\x00\x24\x00\x25\x00\x03\x00\x27\x00\x0b\x00\x15\x00\x0b\x00\x28\x00\x0b\x00\x21\x00\x03\x00\x23\x00\x24\x00\x25\x00\x15\x00\x27\x00\x06\x00\x0b\x00\x21\x00\x09\x00\x23\x00\x24\x00\x25\x00\x0c\x00\x27\x00\x1e\x00\x1f\x00\x1e\x00\x1f\x00\x16\x00\x17\x00\x03\x00\x0a\x00\x16\x00\x17\x00\x07\x00\x08\x00\x09\x00\x00\x00\x01\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x09\x00\x0a\x00\x09\x00\x14\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x07\x00\x08\x00\x09\x00\x03\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x11\x00\x12\x00\x13\x00\x0a\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0b\x00\x0a\x00\x0a\x00\x0c\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x15\x00\x0b\x00\x0a\x00\x0c\x00\x01\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0b\x00\x14\x00\x09\x00\x01\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0b\x00\x03\x00\x09\x00\x03\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0b\x00\x03\x00\x0b\x00\x02\x00\x02\x00\x02\x00\x05\x00\x05\x00\x05\x00\x0b\x00\x09\x00\x09\x00\x09\x00\x02\x00\x02\x00\x0a\x00\x05\x00\x05\x00\x0a\x00\x0a\x00\x09\x00\x09\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x03\x00\x03\x00\x03\x00\x03\x00\x07\x00\x07\x00\x07\x00\x07\x00\x03\x00\x03\x00\x14\x00\x14\x00\x07\x00\x07\x00\x0c\x00\x0c\x00\x14\x00\x22\x00\x0b\x00\x03\x00\x03\x00\x14\x00\x09\x00\x08\x00\x03\x00\x03\x00\x08\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\x03\x00\xff\xff\x04\x00\x03\x00\x03\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x0b\x00\x28\x00\x29\x00\x43\x00\x44\x00\x45\x00\x7b\x00\x0a\x00\x0e\x00\x10\x00\x2d\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x54\x00\x55\x00\x0f\x00\x18\x00\x2d\x00\x12\x00\x19\x00\x05\x00\x06\x00\x07\x00\x05\x00\x06\x00\x07\x00\x1a\x00\x1b\x00\x18\x00\x46\x00\x14\x00\x19\x00\x05\x00\x06\x00\x07\x00\x2e\x00\x25\x00\x18\x00\x1a\x00\x40\x00\x19\x00\x05\x00\x06\x00\x07\x00\x67\x00\x2e\x00\x1c\x00\x1a\x00\x1d\x00\x1e\x00\x1f\x00\x31\x00\x20\x00\x6f\x00\x68\x00\x58\x00\xff\xff\x53\x00\x1c\x00\x83\x00\x1d\x00\x1e\x00\x1f\x00\x68\x00\x20\x00\x47\x00\x66\x00\x1c\x00\x48\x00\x1d\x00\x1e\x00\x1f\x00\x8b\x00\x20\x00\x54\x00\x55\x00\x54\x00\x55\x00\x84\x00\x85\x00\x4a\x00\x24\x00\x8c\x00\x8d\x00\x05\x00\x06\x00\x07\x00\x07\x00\x02\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x0b\x00\x0c\x00\x03\x00\x4b\x00\x59\x00\x5a\x00\x5b\x00\x5c\x00\x5d\x00\x5e\x00\xe6\xff\xe6\xff\xe6\xff\xe6\xff\xe6\xff\x05\x00\x06\x00\x07\x00\x51\x00\xe6\xff\xe6\xff\xe6\xff\xe6\xff\xe6\xff\xe6\xff\xe5\xff\xe5\xff\xe5\xff\xe5\xff\xe5\xff\x3c\x00\x3d\x00\x3e\x00\x23\x00\xe5\xff\xe5\xff\xe5\xff\xe5\xff\xe5\xff\xe5\xff\xe7\xff\xe7\xff\xe7\xff\xe7\xff\xe7\xff\x86\x00\x2f\x00\x22\x00\x30\x00\xe7\xff\xe7\xff\xe7\xff\xe7\xff\xe7\xff\xe7\xff\x68\x00\x65\x00\x21\x00\x32\x00\x02\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x4f\x00\x33\x00\x03\x00\x08\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x4e\x00\x34\x00\x03\x00\x34\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x35\x00\x34\x00\x63\x00\x14\x00\x79\x00\x75\x00\x15\x00\x15\x00\x15\x00\x76\x00\x16\x00\x16\x00\x16\x00\x87\x00\x8f\x00\x39\x00\x15\x00\x15\x00\x37\x00\x57\x00\x16\x00\x16\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x69\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x6b\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x80\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x8f\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x40\x00\x40\x00\x40\x00\x40\x00\x46\x00\x41\x00\x55\x00\x51\x00\x40\x00\x40\x00\x7f\x00\x7e\x00\x78\x00\x77\x00\x50\x00\x7c\x00\x6e\x00\x87\x00\x8e\x00\x8a\x00\x89\x00\x6d\x00\x10\x00\x12\x00\x26\x00\x4c\x00\x25\x00\x4b\x00\x37\x00\x33\x00\x69\x00\x62\x00\x61\x00\x60\x00\x5f\x00\x5e\x00\x7c\x00\x74\x00\x73\x00\x72\x00\x71\x00\x70\x00\x6f\x00\x6b\x00\x00\x00\x81\x00\x80\x00\x90\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 60) [
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
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60)
	]

happy_n_terms = 41 :: Int
happy_n_nonterms = 12 :: Int

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
happyReduce_3 = happyReduce 8# 1# happyReduction_3
happyReduction_3 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	case happyOut14 happy_x_4 of { happy_var_4 -> 
	case happyOut12 happy_x_7 of { happy_var_7 -> 
	happyIn5
		 (Funct happy_var_1 happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happySpecReduce_1  2# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn6
		 (VarOp happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happyReduce 7# 2# happyReduction_5
happyReduction_5 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	case happyOut6 happy_x_7 of { happy_var_7 -> 
	happyIn6
		 (IfElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happyReduce 5# 2# happyReduction_6
happyReduction_6 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	happyIn6
		 (If happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happyReduce 8# 2# happyReduction_7
happyReduction_7 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	case happyOut8 happy_x_6 of { happy_var_6 -> 
	case happyOut6 happy_x_8 of { happy_var_8 -> 
	happyIn6
		 (For happy_var_3 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happyReduce 5# 2# happyReduction_8
happyReduction_8 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut6 happy_x_5 of { happy_var_5 -> 
	happyIn6
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happySpecReduce_3  2# happyReduction_9
happyReduction_9 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_2 of { happy_var_2 -> 
	happyIn6
		 (Block happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happySpecReduce_3  2# happyReduction_10
happyReduction_10 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn6
		 (Return happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happyReduce 5# 2# happyReduction_11
happyReduction_11 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn6
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happyReduce 5# 2# happyReduction_12
happyReduction_12 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn6
		 (PrintInt happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happyReduce 5# 2# happyReduction_13
happyReduction_13 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn6
		 (PrintStr happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_1  3# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { (NUM_TOK happy_var_1) -> 
	happyIn7
		 (Num happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  3# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOutTok happy_x_1 of { (STRING_TOK happy_var_1) -> 
	happyIn7
		 (Str happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  3# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn7
		 (Var happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happyReduce 4# 3# happyReduction_17
happyReduction_17 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = happyIn7
		 (ScanInt
	) `HappyStk` happyRest

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_3  3# happyReduction_18
happyReduction_18 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn7
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_3  3# happyReduction_19
happyReduction_19 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Op Add happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_3  3# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Op Minus happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_3  3# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Op Times happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_3  3# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Op Div happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_3  3# happyReduction_23
happyReduction_23 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Op Mod happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happyReduce 4# 3# happyReduction_24
happyReduction_24 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (FuncCallExp happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_1  3# happyReduction_25
happyReduction_25 happy_x_1
	 =  happyIn7
		 (Bconst True
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  3# happyReduction_26
happyReduction_26 happy_x_1
	 =  happyIn7
		 (Bconst False
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_2  4# happyReduction_27
happyReduction_27 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn8
		 (PreIncr happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_2  4# happyReduction_28
happyReduction_28 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn8
		 (PostIncr happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_2  4# happyReduction_29
happyReduction_29 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn8
		 (PreDecr happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_2  4# happyReduction_30
happyReduction_30 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	happyIn8
		 (PostDecr happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happySpecReduce_3  4# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (OpAssign happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happyReduce 4# 5# happyReduction_32
happyReduction_32 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn9
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_3  5# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn9
		 (Declr happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happyReduce 5# 5# happyReduction_34
happyReduction_34 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn9
		 (DeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_1  6# happyReduction_35
happyReduction_35 happy_x_1
	 =  happyIn10
		 (Empty
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happyReduce 4# 6# happyReduction_36
happyReduction_36 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn10
		 (ForAssign happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happyReduce 5# 6# happyReduction_37
happyReduction_37 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn10
		 (ForDeclAsgn happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_3  7# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond IsEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  7# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond IsNEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  7# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond LessOrEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  7# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond GreaterOrEqual happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  7# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond LessThan happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_3  7# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Cond GreaterThan happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_3  7# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (And happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_3  7# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Or happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_2  7# happyReduction_46
happyReduction_46 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn11
		 (Not happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happyReduce 4# 7# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (VAR_TOK happy_var_1) -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (FuncCallExpC happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_1  7# happyReduction_48
happyReduction_48 happy_x_1
	 =  happyIn11
		 (CBool True
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_1  7# happyReduction_49
happyReduction_49 happy_x_1
	 =  happyIn11
		 (CBool False
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_0  8# happyReduction_50
happyReduction_50  =  happyIn12
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_2  8# happyReduction_51
happyReduction_51 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (happy_var_1 ++ [happy_var_2]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_1  9# happyReduction_52
happyReduction_52 happy_x_1
	 =  happyIn13
		 (Tint
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_1  9# happyReduction_53
happyReduction_53 happy_x_1
	 =  happyIn13
		 (Tbool
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_1  9# happyReduction_54
happyReduction_54 happy_x_1
	 =  happyIn13
		 (Tstring
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_0  10# happyReduction_55
happyReduction_55  =  happyIn14
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_2  10# happyReduction_56
happyReduction_56 happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (VAR_TOK happy_var_2) -> 
	happyIn14
		 ([(happy_var_1,happy_var_2)]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happyReduce 4# 10# happyReduction_57
happyReduction_57 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	case happyOutTok happy_x_4 of { (VAR_TOK happy_var_4) -> 
	happyIn14
		 (happy_var_1 ++ [(happy_var_3,happy_var_4)]
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_58 = happySpecReduce_0  11# happyReduction_58
happyReduction_58  =  happyIn15
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_59 = happySpecReduce_1  11# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_60 = happySpecReduce_3  11# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn15
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
	INT_DEF_TOK -> cont 7#;
	BOOL_DEF_TOK -> cont 8#;
	STRING_DEF_TOK -> cont 9#;
	LPAREN_TOK -> cont 10#;
	RPAREN_TOK -> cont 11#;
	ASSIGN_TOK -> cont 12#;
	LBRACE_TOK -> cont 13#;
	RBRACE_TOK -> cont 14#;
	PLUS_TOK -> cont 15#;
	MINUS_TOK -> cont 16#;
	MULT_TOK -> cont 17#;
	DIV_TOK -> cont 18#;
	MOD_TOK -> cont 19#;
	SEMICOLON_TOK -> cont 20#;
	COLON_TOK -> cont 21#;
	INCR_TOK -> cont 22#;
	DECR_TOK -> cont 23#;
	EQUAL_TOK -> cont 24#;
	NEQUAL_TOK -> cont 25#;
	LTHEN_TOK -> cont 26#;
	GTHEN_TOK -> cont 27#;
	GTOE_TOK -> cont 28#;
	LTOE_TOK -> cont 29#;
	AND_TOK -> cont 30#;
	OR_TOK -> cont 31#;
	NOT_TOK -> cont 32#;
	IF_TOK -> cont 33#;
	ELSE_TOK -> cont 34#;
	WHILE_TOK -> cont 35#;
	FOR_TOK -> cont 36#;
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

data Func = Funct Type String [Dcl] [Stm]
          deriving Show

data Op = PreIncr String
        | PostIncr String
        | PreDecr String
        | PostDecr String
        | OpAssign String Exp
        deriving Show

data BinOp = Add | Minus | Times | Div | Mod deriving Show

data RelOp = LessThan | GreaterThan | LessOrEqual | GreaterOrEqual | IsEqual | IsNEqual
            deriving Show


data OpStm = Assign String Exp
           | Declr Type String
           | DeclAsgn Type String Exp
           deriving Show

data OpFor = ForAssign String Exp
           | ForDeclAsgn Type String Exp
           | Empty
           deriving Show

data Stm = If ExpCompare Stm
         | IfElse ExpCompare Stm Stm
         | VarOp OpStm
         | While ExpCompare Stm
         | FuncCall String [Exp]
         | PrintInt Exp
         | PrintStr Exp
         | For OpFor ExpCompare Op Stm
         | Block [Stm]
         | Return Exp
         deriving Show

data Exp = Num Int
         | Str String
         | Var String
         | Bconst Bool
         | Op BinOp Exp Exp
         | ScanInt
         | FuncCallExp String [Exp]
         deriving Show

data ExpCompare = Cond RelOp Exp Exp
                | And ExpCompare ExpCompare
                | Or ExpCompare ExpCompare
                | Not ExpCompare
                | FuncCallExpC String [Exp]
                | CBool Bool
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
