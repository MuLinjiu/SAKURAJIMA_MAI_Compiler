@my_.str.0 = private constant [96 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\00"
@my_asciiTable = global i8* null
@my_.str.1 = private constant [1 x i8] c"\00"
@my_.str.2 = private constant [1 x i8] c"\00"
@my_MAXCHUNK = global i32 100
@my_MAXLENGTH = global i32 0
@my_chunks = global i32** null
@my_inputBuffer = global i32* null
@my_outputBuffer = global i32* null
@my_.str.3 = private constant [19 x i8] c"nChunk > MAXCHUNK!\00"
@my_.str.4 = private constant [1 x i8] c"\00"
@my_.str.5 = private constant [14 x i8] c"Invalid input\00"
@my_.str.6 = private constant [1 x i8] c"\00"
@my_.str.7 = private constant [11 x i8] c"Not Found!\00"

declare void @print(i8* %my_1)
declare void @println(i8* %my_1)
declare void @printInt(i32 %my_1)
declare void @printlnInt(i32 %my_1)
declare i8* @getString()
declare i32 @getInt()
declare i8* @toString(i32 %my_1)
declare i32 @size(i8* %my_1)
declare i32 @length(i8* %my_1)
declare i8* @substring(i8* %my_1, i32 %my_2, i32 %my_3)
declare i8 @parseInt(i8* %my_1)
declare i8* @string_add(i8* %my_1, i8* %my_2)
declare i32 @ord(i8* %my_1, i32 %my_2)
declare i1 @string_equal(i8* %my_1, i8* %my_2)
declare i1 @string_notEqual(i8* %my_1, i8* %my_2)
declare i1 @string_less(i8* %my_1, i8* %my_2)
declare i1 @string_lessEqual(i8* %my_1, i8* %my_2)
declare i1 @string_greater(i8* %my_1, i8* %my_2)
declare i1 @string_greaterEqual(i8* %my_1, i8* %my_2)
declare i8* @malloc(i64 %my_1)
define i32 @hex2int(i8* %my_2) {
my_hex2int: 
%my_1 = alloca i32
%my_3 = alloca i8*
store i8* %my_2, i8** %my_3
%my_4 = alloca i32
%my_5 = alloca i32
%my_12 = alloca i32
store i32 0, i32* %my_5
store i32 0, i32* %my_4
br label %my_hex2int_6
my_hex2int_6: 
%my_7 = load i32, i32* %my_4
%my_8 = load i8*, i8** %my_3
%my_9 = call i32 @length(i8* %my_8)
%my_10 = icmp slt i32 %my_7, %my_9
br i1 %my_10, label %my_hex2int_11, label %my_hex2int_60

my_hex2int_11: 
%my_13 = load i8*, i8** %my_3
%my_14 = load i32, i32* %my_4
%my_15 = call i32 @ord(i8* %my_13,i32 %my_14)
store i32 %my_15, i32* %my_12
%my_16 = load i32, i32* %my_12
%my_17 = icmp sge i32 %my_16, 48
br i1 %my_17, label %my_hex2int_17AND_AND_TRUE, label %my_hex2int_17AND_AND_OUT

my_hex2int_17AND_AND_TRUE: 
%my_18 = load i32, i32* %my_12
%my_19 = icmp sle i32 %my_18, 57
br label %my_hex2int_17AND_AND_OUT

my_hex2int_17AND_AND_OUT: 
%my_20 = phi i1 [ false, %my_hex2int_11 ], [ %my_19, %my_hex2int_17AND_AND_TRUE ]
br i1 %my_20, label %my_hex2int_21, label %my_hex2int_27

my_hex2int_21: 
%my_22 = load i32, i32* %my_5
%my_23 = mul nsw i32 %my_22, 16
%my_24 = load i32, i32* %my_12
%my_25 = add nsw i32 %my_23, %my_24
%my_26 = sub nsw i32 %my_25, 48
store i32 %my_26, i32* %my_5
br label %my_hex2int_56

my_hex2int_27: 
%my_28 = load i32, i32* %my_12
%my_29 = icmp sge i32 %my_28, 65
br i1 %my_29, label %my_hex2int_29AND_AND_TRUE, label %my_hex2int_29AND_AND_OUT

my_hex2int_29AND_AND_TRUE: 
%my_30 = load i32, i32* %my_12
%my_31 = icmp sle i32 %my_30, 70
br label %my_hex2int_29AND_AND_OUT

my_hex2int_29AND_AND_OUT: 
%my_32 = phi i1 [ false, %my_hex2int_27 ], [ %my_31, %my_hex2int_29AND_AND_TRUE ]
br i1 %my_32, label %my_hex2int_33, label %my_hex2int_40

my_hex2int_33: 
%my_34 = load i32, i32* %my_5
%my_35 = mul nsw i32 %my_34, 16
%my_36 = load i32, i32* %my_12
%my_37 = add nsw i32 %my_35, %my_36
%my_38 = sub nsw i32 %my_37, 65
%my_39 = add nsw i32 %my_38, 10
store i32 %my_39, i32* %my_5
br label %my_hex2int_55

my_hex2int_40: 
%my_41 = load i32, i32* %my_12
%my_42 = icmp sge i32 %my_41, 97
br i1 %my_42, label %my_hex2int_42AND_AND_TRUE, label %my_hex2int_42AND_AND_OUT

my_hex2int_42AND_AND_TRUE: 
%my_43 = load i32, i32* %my_12
%my_44 = icmp sle i32 %my_43, 102
br label %my_hex2int_42AND_AND_OUT

my_hex2int_42AND_AND_OUT: 
%my_45 = phi i1 [ false, %my_hex2int_40 ], [ %my_44, %my_hex2int_42AND_AND_TRUE ]
br i1 %my_45, label %my_hex2int_46, label %my_hex2int_53

my_hex2int_46: 
%my_47 = load i32, i32* %my_5
%my_48 = mul nsw i32 %my_47, 16
%my_49 = load i32, i32* %my_12
%my_50 = add nsw i32 %my_48, %my_49
%my_51 = sub nsw i32 %my_50, 97
%my_52 = add nsw i32 %my_51, 10
store i32 %my_52, i32* %my_5
br label %my_hex2int_54

my_hex2int_53: 
store i32 0, i32* %my_1
br label %my_hex2intreturn_block

my_hex2int_54: 
br label %my_hex2int_55

my_hex2int_55: 
br label %my_hex2int_56

my_hex2int_56: 
br label %my_hex2int_57

my_hex2int_57: 
%my_58 = load i32, i32* %my_4
%my_59 = add nsw i32 %my_58, 1
store i32 %my_59, i32* %my_4
br label %my_hex2int_6

my_hex2int_60: 
%my_61 = load i32, i32* %my_5
store i32 %my_61, i32* %my_1
br label %my_hex2intreturn_block

my_hex2intreturn_block: 
%my_62 = load i32, i32* %my_1
ret i32 %my_62
}
define i32 @main() {
my_main: 
%my_45 = alloca i32
%my_46 = alloca i8*
%my_1 = bitcast [96 x i8]* @my_.str.0 to i8*
store i8* %my_1, i8** @my_asciiTable
%my_2 = load i32, i32* @my_MAXCHUNK
%my_3 = sub nsw i32 %my_2, 1
%my_4 = mul nsw i32 %my_3, 64
%my_5 = sub nsw i32 %my_4, 16
store i32 %my_5, i32* @my_MAXLENGTH
%my_6 = load i32, i32* @my_MAXCHUNK
%my_7 = zext i32 %my_6 to i64
%my_8 = mul nsw i64 %my_7, 8
%my_9 = add nsw i64 %my_8, 4
%my_10 = call i8* @malloc(i64 %my_9)
%my_11 = bitcast i8* %my_10 to i32*
store i32 %my_6, i32* %my_11
%my_12 = getelementptr inbounds i32, i32* %my_11, i32 1
%my_13 = bitcast i32* %my_12 to i32**
%my_14 = alloca i32
store i32 0, i32* %my_14
br label %my_main_my_14_for_condition
my_main_my_14_for_condition: 
%my_15 = load i32, i32* %my_14
%my_16 = icmp slt i32 %my_15, %my_6
br i1 %my_16, label %my_main_my_14_for_suite, label %my_main_my_14_for_out

my_main_my_14_for_suite: 
%my_17 = load i32, i32* %my_14
%my_18 = getelementptr inbounds i32*, i32** %my_13, i32 %my_17
%my_19 = mul nsw i64 80, 4
%my_20 = add nsw i64 %my_19, 4
%my_21 = call i8* @malloc(i64 %my_20)
%my_22 = bitcast i8* %my_21 to i32*
store i32 80, i32* %my_22
%my_23 = getelementptr inbounds i32, i32* %my_22, i32 1
%my_24 = bitcast i32* %my_23 to i32*
store i32* %my_24, i32** %my_18
br label %my_main_my_14_for_finish

my_main_my_14_for_finish: 
%my_25 = load i32, i32* %my_14
%my_26 = add nsw i32 %my_25, 1
store i32 %my_26, i32* %my_14
br label %my_main_my_14_for_condition

my_main_my_14_for_out: 
%my_44 = alloca i32
store i32 0, i32* %my_44
%my_27 = bitcast i32** %my_13 to i32**
store i32** %my_27, i32*** @my_chunks
%my_28 = load i32, i32* @my_MAXLENGTH
%my_29 = zext i32 %my_28 to i64
%my_30 = mul nsw i64 %my_29, 4
%my_31 = add nsw i64 %my_30, 4
%my_32 = call i8* @malloc(i64 %my_31)
%my_33 = bitcast i8* %my_32 to i32*
store i32 %my_28, i32* %my_33
%my_34 = getelementptr inbounds i32, i32* %my_33, i32 1
%my_35 = bitcast i32* %my_34 to i32*
%my_36 = bitcast i32* %my_35 to i32*
store i32* %my_36, i32** @my_inputBuffer
%my_37 = mul nsw i64 5, 4
%my_38 = add nsw i64 %my_37, 4
%my_39 = call i8* @malloc(i64 %my_38)
%my_40 = bitcast i8* %my_39 to i32*
store i32 5, i32* %my_40
%my_41 = getelementptr inbounds i32, i32* %my_40, i32 1
%my_42 = bitcast i32* %my_41 to i32*
%my_43 = bitcast i32* %my_42 to i32*
store i32* %my_43, i32** @my_outputBuffer
br label %my_main_47

my_main_47: 
br i1 1, label %my_main_48, label %my_main_73

my_main_48: 
%my_49 = call i32 @getInt()
store i32 %my_49, i32* %my_45
%my_50 = load i32, i32* %my_45
%my_51 = icmp eq i32 %my_50, 0
br i1 %my_51, label %my_main_52, label %my_main_53

my_main_52: 
br label %my_main_73

my_main_53: 
%my_54 = load i32, i32* %my_45
%my_55 = icmp eq i32 %my_54, 1
br i1 %my_55, label %my_main_56, label %my_main_62

my_main_56: 
%my_57 = call i8* @getString()
%my_58 = bitcast i8* %my_57 to i8*
store i8* %my_58, i8** %my_46
%my_59 = load i8*, i8** %my_46
%my_60 = bitcast i8* %my_59 to i8*
call void @computeSHA1(i8* %my_60)
br label %my_main_72

my_main_62: 
%my_63 = load i32, i32* %my_45
%my_64 = icmp eq i32 %my_63, 2
br i1 %my_64, label %my_main_65, label %my_main_71

my_main_65: 
%my_66 = call i8* @getString()
%my_67 = bitcast i8* %my_66 to i8*
store i8* %my_67, i8** %my_46
%my_68 = load i8*, i8** %my_46
%my_69 = bitcast i8* %my_68 to i8*
call void @crackSHA1(i8* %my_69)
br label %my_main_71

my_main_71: 
br label %my_main_72

my_main_72: 
br label %my_main_47

my_main_73: 
store i32 0, i32* %my_44
br label %my_mainreturn_block

my_mainreturn_block: 
%my_74 = load i32, i32* %my_44
ret i32 %my_74
}
define i8* @int2chr(i32 %my_2) {
my_int2chr: 
%my_1 = alloca i8*
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = load i32, i32* %my_3
%my_5 = icmp sge i32 %my_4, 32
br i1 %my_5, label %my_int2chr_5AND_AND_TRUE, label %my_int2chr_5AND_AND_OUT
my_int2chr_5AND_AND_TRUE: 
%my_6 = load i32, i32* %my_3
%my_7 = icmp sle i32 %my_6, 126
br label %my_int2chr_5AND_AND_OUT

my_int2chr_5AND_AND_OUT: 
%my_8 = phi i1 [ false, %my_int2chr ], [ %my_7, %my_int2chr_5AND_AND_TRUE ]
br i1 %my_8, label %my_int2chr_9, label %my_int2chr_17

my_int2chr_9: 
%my_10 = load i8*, i8** @my_asciiTable
%my_11 = load i32, i32* %my_3
%my_12 = sub nsw i32 %my_11, 32
%my_13 = load i32, i32* %my_3
%my_14 = sub nsw i32 %my_13, 31
%my_15 = call i8* @substring(i8* %my_10,i32 %my_12,i32 %my_14)
%my_16 = bitcast i8* %my_15 to i8*
store i8* %my_16, i8** %my_1
br label %my_int2chrreturn_block

my_int2chr_17: 
%my_18 = bitcast [1 x i8]* @my_.str.1 to i8*
store i8* %my_18, i8** %my_1
br label %my_int2chrreturn_block

my_int2chrreturn_block: 
%my_19 = load i8*, i8** %my_1
ret i8* %my_19
}
define i8* @toStringHex(i32 %my_2) {
my_toStringHex: 
%my_1 = alloca i8*
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = alloca i8*
%my_6 = alloca i32
%my_11 = alloca i32
%my_5 = bitcast [1 x i8]* @my_.str.2 to i8*
store i8* %my_5, i8** %my_4
store i32 28, i32* %my_6
br label %my_toStringHex_7
my_toStringHex_7: 
%my_8 = load i32, i32* %my_6
%my_9 = icmp sge i32 %my_8, 0
br i1 %my_9, label %my_toStringHex_10, label %my_toStringHex_41

my_toStringHex_10: 
%my_12 = load i32, i32* %my_3
%my_13 = load i32, i32* %my_6
%my_14 = ashr i32 %my_12, %my_13
%my_15 = and i32 %my_14, 15
store i32 %my_15, i32* %my_11
%my_16 = load i32, i32* %my_11
%my_17 = icmp slt i32 %my_16, 10
br i1 %my_17, label %my_toStringHex_18, label %my_toStringHex_27

my_toStringHex_18: 
%my_19 = load i8*, i8** %my_4
%my_20 = load i32, i32* %my_11
%my_21 = add nsw i32 48, %my_20
%my_22 = call i8* @int2chr(i32 %my_21)
%my_23 = bitcast i8* %my_19 to i8*
%my_24 = bitcast i8* %my_22 to i8*
%my_25 = call i8* @string_add(i8* %my_23,i8* %my_24)
%my_26 = bitcast i8* %my_25 to i8*
store i8* %my_26, i8** %my_4
br label %my_toStringHex_37

my_toStringHex_27: 
%my_28 = load i8*, i8** %my_4
%my_29 = load i32, i32* %my_11
%my_30 = add nsw i32 65, %my_29
%my_31 = sub nsw i32 %my_30, 10
%my_32 = call i8* @int2chr(i32 %my_31)
%my_33 = bitcast i8* %my_28 to i8*
%my_34 = bitcast i8* %my_32 to i8*
%my_35 = call i8* @string_add(i8* %my_33,i8* %my_34)
%my_36 = bitcast i8* %my_35 to i8*
store i8* %my_36, i8** %my_4
br label %my_toStringHex_37

my_toStringHex_37: 
br label %my_toStringHex_38

my_toStringHex_38: 
%my_39 = load i32, i32* %my_6
%my_40 = sub nsw i32 %my_39, 4
store i32 %my_40, i32* %my_6
br label %my_toStringHex_7

my_toStringHex_41: 
%my_42 = load i8*, i8** %my_4
%my_43 = bitcast i8* %my_42 to i8*
store i8* %my_43, i8** %my_1
br label %my_toStringHexreturn_block

my_toStringHexreturn_block: 
%my_44 = load i8*, i8** %my_1
ret i8* %my_44
}
define i32 @rotate_left(i32 %my_2, i32 %my_3) {
my_rotate_left: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_5
%my_7 = icmp eq i32 %my_6, 1
br i1 %my_7, label %my_rotate_left_8, label %my_rotate_left_16
my_rotate_left_8: 
%my_9 = load i32, i32* %my_4
%my_10 = and i32 %my_9, 2147483647
%my_11 = shl i32 %my_10, 1
%my_12 = load i32, i32* %my_4
%my_13 = ashr i32 %my_12, 31
%my_14 = and i32 %my_13, 1
%my_15 = or i32 %my_11, %my_14
store i32 %my_15, i32* %my_1
br label %my_rotate_leftreturn_block

my_rotate_left_16: 
%my_17 = load i32, i32* %my_5
%my_18 = icmp eq i32 %my_17, 31
br i1 %my_18, label %my_rotate_left_19, label %my_rotate_left_27

my_rotate_left_19: 
%my_20 = load i32, i32* %my_4
%my_21 = and i32 %my_20, 1
%my_22 = shl i32 %my_21, 31
%my_23 = load i32, i32* %my_4
%my_24 = ashr i32 %my_23, 1
%my_25 = and i32 %my_24, 2147483647
%my_26 = or i32 %my_22, %my_25
store i32 %my_26, i32* %my_1
br label %my_rotate_leftreturn_block

my_rotate_left_27: 
%my_28 = load i32, i32* %my_4
%my_29 = load i32, i32* %my_5
%my_30 = sub nsw i32 32, %my_29
%my_31 = shl i32 1, %my_30
%my_32 = sub nsw i32 %my_31, 1
%my_33 = and i32 %my_28, %my_32
%my_34 = load i32, i32* %my_5
%my_35 = shl i32 %my_33, %my_34
%my_36 = load i32, i32* %my_4
%my_37 = load i32, i32* %my_5
%my_38 = sub nsw i32 32, %my_37
%my_39 = ashr i32 %my_36, %my_38
%my_40 = load i32, i32* %my_5
%my_41 = shl i32 1, %my_40
%my_42 = sub nsw i32 %my_41, 1
%my_43 = and i32 %my_39, %my_42
%my_44 = or i32 %my_35, %my_43
store i32 %my_44, i32* %my_1
br label %my_rotate_leftreturn_block

my_rotate_leftreturn_block: 
%my_45 = load i32, i32* %my_1
ret i32 %my_45
}
define i32 @add(i32 %my_2, i32 %my_3) {
my_add: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = alloca i32
%my_12 = alloca i32
%my_7 = load i32, i32* %my_4
%my_8 = and i32 %my_7, 65535
%my_9 = load i32, i32* %my_5
%my_10 = and i32 %my_9, 65535
%my_11 = add nsw i32 %my_8, %my_10
store i32 %my_11, i32* %my_6
%my_13 = load i32, i32* %my_4
%my_14 = ashr i32 %my_13, 16
%my_15 = and i32 %my_14, 65535
%my_16 = load i32, i32* %my_5
%my_17 = ashr i32 %my_16, 16
%my_18 = and i32 %my_17, 65535
%my_19 = add nsw i32 %my_15, %my_18
%my_20 = load i32, i32* %my_6
%my_21 = ashr i32 %my_20, 16
%my_22 = add nsw i32 %my_19, %my_21
%my_23 = and i32 %my_22, 65535
store i32 %my_23, i32* %my_12
%my_24 = load i32, i32* %my_12
%my_25 = shl i32 %my_24, 16
%my_26 = load i32, i32* %my_6
%my_27 = and i32 %my_26, 65535
%my_28 = or i32 %my_25, %my_27
store i32 %my_28, i32* %my_1
br label %my_addreturn_block
my_addreturn_block: 
%my_29 = load i32, i32* %my_1
ret i32 %my_29
}
define i32 @lohi(i32 %my_2, i32 %my_3) {
my_lohi: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_4
%my_7 = load i32, i32* %my_5
%my_8 = shl i32 %my_7, 16
%my_9 = or i32 %my_6, %my_8
store i32 %my_9, i32* %my_1
br label %my_lohireturn_block
my_lohireturn_block: 
%my_10 = load i32, i32* %my_1
ret i32 %my_10
}
define i32* @sha1(i32* %my_2, i32 %my_3) {
my_sha1: 
%my_1 = alloca i32*
%my_4 = alloca i32*
store i32* %my_2, i32** %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = alloca i32
%my_19 = alloca i32
%my_20 = alloca i32
%my_124 = alloca i32
%my_125 = alloca i32
%my_127 = alloca i32
%my_129 = alloca i32
%my_130 = alloca i32
%my_187 = alloca i32
%my_189 = alloca i32
%my_191 = alloca i32
%my_193 = alloca i32
%my_195 = alloca i32
%my_201 = alloca i32
%my_202 = alloca i32
%my_249 = alloca i32
%my_7 = load i32, i32* %my_5
%my_8 = add nsw i32 %my_7, 64
%my_9 = sub nsw i32 %my_8, 56
%my_10 = sdiv i32 %my_9, 64
%my_11 = add nsw i32 %my_10, 1
store i32 %my_11, i32* %my_6
%my_12 = load i32, i32* %my_6
%my_13 = load i32, i32* @my_MAXCHUNK
%my_14 = icmp sgt i32 %my_12, %my_13
br i1 %my_14, label %my_sha1_15, label %my_sha1_18
my_sha1_15: 
%my_16 = bitcast [19 x i8]* @my_.str.3 to i8*
call void @println(i8* %my_16)
store i32* null, i32** %my_1
br label %my_sha1return_block

my_sha1_18: 
store i32 0, i32* %my_19
br label %my_sha1_21

my_sha1_21: 
%my_22 = load i32, i32* %my_19
%my_23 = load i32, i32* %my_6
%my_24 = icmp slt i32 %my_22, %my_23
br i1 %my_24, label %my_sha1_25, label %my_sha1_43

my_sha1_25: 
store i32 0, i32* %my_20
br label %my_sha1_26

my_sha1_26: 
%my_27 = load i32, i32* %my_20
%my_28 = icmp slt i32 %my_27, 80
br i1 %my_28, label %my_sha1_29, label %my_sha1_39

my_sha1_29: 
%my_30 = load i32**, i32*** @my_chunks
%my_31 = load i32, i32* %my_19
%my_32 = getelementptr inbounds i32*, i32** %my_30, i32 %my_31
%my_33 = load i32*, i32** %my_32
%my_34 = load i32, i32* %my_20
%my_35 = getelementptr inbounds i32, i32* %my_33, i32 %my_34
store i32 0, i32* %my_35
br label %my_sha1_36

my_sha1_36: 
%my_37 = load i32, i32* %my_20
%my_38 = add nsw i32 %my_37, 1
store i32 %my_38, i32* %my_20
br label %my_sha1_26

my_sha1_39: 
br label %my_sha1_40

my_sha1_40: 
%my_41 = load i32, i32* %my_19
%my_42 = add nsw i32 %my_41, 1
store i32 %my_42, i32* %my_19
br label %my_sha1_21

my_sha1_43: 
store i32 0, i32* %my_19
br label %my_sha1_44

my_sha1_44: 
%my_45 = load i32, i32* %my_19
%my_46 = load i32, i32* %my_5
%my_47 = icmp slt i32 %my_45, %my_46
br i1 %my_47, label %my_sha1_48, label %my_sha1_81

my_sha1_48: 
%my_49 = load i32**, i32*** @my_chunks
%my_50 = load i32, i32* %my_19
%my_51 = sdiv i32 %my_50, 64
%my_52 = getelementptr inbounds i32*, i32** %my_49, i32 %my_51
%my_53 = load i32*, i32** %my_52
%my_54 = load i32, i32* %my_19
%my_55 = srem i32 %my_54, 64
%my_56 = sdiv i32 %my_55, 4
%my_57 = getelementptr inbounds i32, i32* %my_53, i32 %my_56
%my_58 = load i32**, i32*** @my_chunks
%my_59 = load i32, i32* %my_19
%my_60 = sdiv i32 %my_59, 64
%my_61 = getelementptr inbounds i32*, i32** %my_58, i32 %my_60
%my_62 = load i32*, i32** %my_61
%my_63 = load i32, i32* %my_19
%my_64 = srem i32 %my_63, 64
%my_65 = sdiv i32 %my_64, 4
%my_66 = getelementptr inbounds i32, i32* %my_62, i32 %my_65
%my_67 = load i32, i32* %my_66
%my_68 = load i32*, i32** %my_4
%my_69 = load i32, i32* %my_19
%my_70 = getelementptr inbounds i32, i32* %my_68, i32 %my_69
%my_71 = load i32, i32* %my_70
%my_72 = load i32, i32* %my_19
%my_73 = srem i32 %my_72, 4
%my_74 = sub nsw i32 3, %my_73
%my_75 = mul nsw i32 %my_74, 8
%my_76 = shl i32 %my_71, %my_75
%my_77 = or i32 %my_67, %my_76
store i32 %my_77, i32* %my_57
br label %my_sha1_78

my_sha1_78: 
%my_79 = load i32, i32* %my_19
%my_80 = add nsw i32 %my_79, 1
store i32 %my_80, i32* %my_19
br label %my_sha1_44

my_sha1_81: 
%my_82 = load i32**, i32*** @my_chunks
%my_83 = load i32, i32* %my_19
%my_84 = sdiv i32 %my_83, 64
%my_85 = getelementptr inbounds i32*, i32** %my_82, i32 %my_84
%my_86 = load i32*, i32** %my_85
%my_87 = load i32, i32* %my_19
%my_88 = srem i32 %my_87, 64
%my_89 = sdiv i32 %my_88, 4
%my_90 = getelementptr inbounds i32, i32* %my_86, i32 %my_89
%my_91 = load i32**, i32*** @my_chunks
%my_92 = load i32, i32* %my_19
%my_93 = sdiv i32 %my_92, 64
%my_94 = getelementptr inbounds i32*, i32** %my_91, i32 %my_93
%my_95 = load i32*, i32** %my_94
%my_96 = load i32, i32* %my_19
%my_97 = srem i32 %my_96, 64
%my_98 = sdiv i32 %my_97, 4
%my_99 = getelementptr inbounds i32, i32* %my_95, i32 %my_98
%my_100 = load i32, i32* %my_99
%my_101 = load i32, i32* %my_19
%my_102 = srem i32 %my_101, 4
%my_103 = sub nsw i32 3, %my_102
%my_104 = mul nsw i32 %my_103, 8
%my_105 = shl i32 128, %my_104
%my_106 = or i32 %my_100, %my_105
store i32 %my_106, i32* %my_90
%my_107 = load i32**, i32*** @my_chunks
%my_108 = load i32, i32* %my_6
%my_109 = sub nsw i32 %my_108, 1
%my_110 = getelementptr inbounds i32*, i32** %my_107, i32 %my_109
%my_111 = load i32*, i32** %my_110
%my_112 = getelementptr inbounds i32, i32* %my_111, i32 15
%my_113 = load i32, i32* %my_5
%my_114 = shl i32 %my_113, 3
store i32 %my_114, i32* %my_112
%my_115 = load i32**, i32*** @my_chunks
%my_116 = load i32, i32* %my_6
%my_117 = sub nsw i32 %my_116, 1
%my_118 = getelementptr inbounds i32*, i32** %my_115, i32 %my_117
%my_119 = load i32*, i32** %my_118
%my_120 = getelementptr inbounds i32, i32* %my_119, i32 14
%my_121 = load i32, i32* %my_5
%my_122 = ashr i32 %my_121, 29
%my_123 = and i32 %my_122, 7
store i32 %my_123, i32* %my_120
store i32 1732584193, i32* %my_124
%my_126 = call i32 @lohi(i32 43913,i32 61389)
store i32 %my_126, i32* %my_125
%my_128 = call i32 @lohi(i32 56574,i32 39098)
store i32 %my_128, i32* %my_127
store i32 271733878, i32* %my_129
%my_131 = call i32 @lohi(i32 57840,i32 50130)
store i32 %my_131, i32* %my_130
store i32 0, i32* %my_19
br label %my_sha1_132

my_sha1_132: 
%my_133 = load i32, i32* %my_19
%my_134 = load i32, i32* %my_6
%my_135 = icmp slt i32 %my_133, %my_134
br i1 %my_135, label %my_sha1_136, label %my_sha1_294

my_sha1_136: 
store i32 16, i32* %my_20
br label %my_sha1_137

my_sha1_137: 
%my_138 = load i32, i32* %my_20
%my_139 = icmp slt i32 %my_138, 80
br i1 %my_139, label %my_sha1_140, label %my_sha1_186

my_sha1_140: 
%my_141 = load i32**, i32*** @my_chunks
%my_142 = load i32, i32* %my_19
%my_143 = getelementptr inbounds i32*, i32** %my_141, i32 %my_142
%my_144 = load i32*, i32** %my_143
%my_145 = load i32, i32* %my_20
%my_146 = getelementptr inbounds i32, i32* %my_144, i32 %my_145
%my_147 = load i32**, i32*** @my_chunks
%my_148 = load i32, i32* %my_19
%my_149 = getelementptr inbounds i32*, i32** %my_147, i32 %my_148
%my_150 = load i32*, i32** %my_149
%my_151 = load i32, i32* %my_20
%my_152 = sub nsw i32 %my_151, 3
%my_153 = getelementptr inbounds i32, i32* %my_150, i32 %my_152
%my_154 = load i32, i32* %my_153
%my_155 = load i32**, i32*** @my_chunks
%my_156 = load i32, i32* %my_19
%my_157 = getelementptr inbounds i32*, i32** %my_155, i32 %my_156
%my_158 = load i32*, i32** %my_157
%my_159 = load i32, i32* %my_20
%my_160 = sub nsw i32 %my_159, 8
%my_161 = getelementptr inbounds i32, i32* %my_158, i32 %my_160
%my_162 = load i32, i32* %my_161
%my_163 = xor i32 %my_154, %my_162
%my_164 = load i32**, i32*** @my_chunks
%my_165 = load i32, i32* %my_19
%my_166 = getelementptr inbounds i32*, i32** %my_164, i32 %my_165
%my_167 = load i32*, i32** %my_166
%my_168 = load i32, i32* %my_20
%my_169 = sub nsw i32 %my_168, 14
%my_170 = getelementptr inbounds i32, i32* %my_167, i32 %my_169
%my_171 = load i32, i32* %my_170
%my_172 = xor i32 %my_163, %my_171
%my_173 = load i32**, i32*** @my_chunks
%my_174 = load i32, i32* %my_19
%my_175 = getelementptr inbounds i32*, i32** %my_173, i32 %my_174
%my_176 = load i32*, i32** %my_175
%my_177 = load i32, i32* %my_20
%my_178 = sub nsw i32 %my_177, 16
%my_179 = getelementptr inbounds i32, i32* %my_176, i32 %my_178
%my_180 = load i32, i32* %my_179
%my_181 = xor i32 %my_172, %my_180
%my_182 = call i32 @rotate_left(i32 %my_181,i32 1)
store i32 %my_182, i32* %my_146
br label %my_sha1_183

my_sha1_183: 
%my_184 = load i32, i32* %my_20
%my_185 = add nsw i32 %my_184, 1
store i32 %my_185, i32* %my_20
br label %my_sha1_137

my_sha1_186: 
%my_188 = load i32, i32* %my_124
store i32 %my_188, i32* %my_187
%my_190 = load i32, i32* %my_125
store i32 %my_190, i32* %my_189
%my_192 = load i32, i32* %my_127
store i32 %my_192, i32* %my_191
%my_194 = load i32, i32* %my_129
store i32 %my_194, i32* %my_193
%my_196 = load i32, i32* %my_130
store i32 %my_196, i32* %my_195
store i32 0, i32* %my_20
br label %my_sha1_197

my_sha1_197: 
%my_198 = load i32, i32* %my_20
%my_199 = icmp slt i32 %my_198, 80
br i1 %my_199, label %my_sha1_200, label %my_sha1_275

my_sha1_200: 
%my_203 = load i32, i32* %my_20
%my_204 = icmp slt i32 %my_203, 20
br i1 %my_204, label %my_sha1_205, label %my_sha1_214

my_sha1_205: 
%my_206 = load i32, i32* %my_189
%my_207 = load i32, i32* %my_191
%my_208 = and i32 %my_206, %my_207
%my_209 = load i32, i32* %my_189
%my_210 = xor i32 -1, %my_209
%my_211 = load i32, i32* %my_193
%my_212 = and i32 %my_210, %my_211
%my_213 = or i32 %my_208, %my_212
store i32 %my_213, i32* %my_201
store i32 1518500249, i32* %my_202
br label %my_sha1_248

my_sha1_214: 
%my_215 = load i32, i32* %my_20
%my_216 = icmp slt i32 %my_215, 40
br i1 %my_216, label %my_sha1_217, label %my_sha1_223

my_sha1_217: 
%my_218 = load i32, i32* %my_189
%my_219 = load i32, i32* %my_191
%my_220 = xor i32 %my_218, %my_219
%my_221 = load i32, i32* %my_193
%my_222 = xor i32 %my_220, %my_221
store i32 %my_222, i32* %my_201
store i32 1859775393, i32* %my_202
br label %my_sha1_247

my_sha1_223: 
%my_224 = load i32, i32* %my_20
%my_225 = icmp slt i32 %my_224, 60
br i1 %my_225, label %my_sha1_226, label %my_sha1_239

my_sha1_226: 
%my_227 = load i32, i32* %my_189
%my_228 = load i32, i32* %my_191
%my_229 = and i32 %my_227, %my_228
%my_230 = load i32, i32* %my_189
%my_231 = load i32, i32* %my_193
%my_232 = and i32 %my_230, %my_231
%my_233 = or i32 %my_229, %my_232
%my_234 = load i32, i32* %my_191
%my_235 = load i32, i32* %my_193
%my_236 = and i32 %my_234, %my_235
%my_237 = or i32 %my_233, %my_236
store i32 %my_237, i32* %my_201
%my_238 = call i32 @lohi(i32 48348,i32 36635)
store i32 %my_238, i32* %my_202
br label %my_sha1_246

my_sha1_239: 
%my_240 = load i32, i32* %my_189
%my_241 = load i32, i32* %my_191
%my_242 = xor i32 %my_240, %my_241
%my_243 = load i32, i32* %my_193
%my_244 = xor i32 %my_242, %my_243
store i32 %my_244, i32* %my_201
%my_245 = call i32 @lohi(i32 49622,i32 51810)
store i32 %my_245, i32* %my_202
br label %my_sha1_246

my_sha1_246: 
br label %my_sha1_247

my_sha1_247: 
br label %my_sha1_248

my_sha1_248: 
%my_250 = load i32, i32* %my_187
%my_251 = call i32 @rotate_left(i32 %my_250,i32 5)
%my_252 = load i32, i32* %my_195
%my_253 = call i32 @add(i32 %my_251,i32 %my_252)
%my_254 = load i32, i32* %my_201
%my_255 = load i32, i32* %my_202
%my_256 = call i32 @add(i32 %my_254,i32 %my_255)
%my_257 = call i32 @add(i32 %my_253,i32 %my_256)
%my_258 = load i32**, i32*** @my_chunks
%my_259 = load i32, i32* %my_19
%my_260 = getelementptr inbounds i32*, i32** %my_258, i32 %my_259
%my_261 = load i32*, i32** %my_260
%my_262 = load i32, i32* %my_20
%my_263 = getelementptr inbounds i32, i32* %my_261, i32 %my_262
%my_264 = load i32, i32* %my_263
%my_265 = call i32 @add(i32 %my_257,i32 %my_264)
store i32 %my_265, i32* %my_249
%my_266 = load i32, i32* %my_193
store i32 %my_266, i32* %my_195
%my_267 = load i32, i32* %my_191
store i32 %my_267, i32* %my_193
%my_268 = load i32, i32* %my_189
%my_269 = call i32 @rotate_left(i32 %my_268,i32 30)
store i32 %my_269, i32* %my_191
%my_270 = load i32, i32* %my_187
store i32 %my_270, i32* %my_189
%my_271 = load i32, i32* %my_249
store i32 %my_271, i32* %my_187
br label %my_sha1_272

my_sha1_272: 
%my_273 = load i32, i32* %my_20
%my_274 = add nsw i32 %my_273, 1
store i32 %my_274, i32* %my_20
br label %my_sha1_197

my_sha1_275: 
%my_276 = load i32, i32* %my_124
%my_277 = load i32, i32* %my_187
%my_278 = call i32 @add(i32 %my_276,i32 %my_277)
store i32 %my_278, i32* %my_124
%my_279 = load i32, i32* %my_125
%my_280 = load i32, i32* %my_189
%my_281 = call i32 @add(i32 %my_279,i32 %my_280)
store i32 %my_281, i32* %my_125
%my_282 = load i32, i32* %my_127
%my_283 = load i32, i32* %my_191
%my_284 = call i32 @add(i32 %my_282,i32 %my_283)
store i32 %my_284, i32* %my_127
%my_285 = load i32, i32* %my_129
%my_286 = load i32, i32* %my_193
%my_287 = call i32 @add(i32 %my_285,i32 %my_286)
store i32 %my_287, i32* %my_129
%my_288 = load i32, i32* %my_130
%my_289 = load i32, i32* %my_195
%my_290 = call i32 @add(i32 %my_288,i32 %my_289)
store i32 %my_290, i32* %my_130
br label %my_sha1_291

my_sha1_291: 
%my_292 = load i32, i32* %my_19
%my_293 = add nsw i32 %my_292, 1
store i32 %my_293, i32* %my_19
br label %my_sha1_132

my_sha1_294: 
%my_295 = load i32*, i32** @my_outputBuffer
%my_296 = getelementptr inbounds i32, i32* %my_295, i32 0
%my_297 = load i32, i32* %my_124
store i32 %my_297, i32* %my_296
%my_298 = load i32*, i32** @my_outputBuffer
%my_299 = getelementptr inbounds i32, i32* %my_298, i32 1
%my_300 = load i32, i32* %my_125
store i32 %my_300, i32* %my_299
%my_301 = load i32*, i32** @my_outputBuffer
%my_302 = getelementptr inbounds i32, i32* %my_301, i32 2
%my_303 = load i32, i32* %my_127
store i32 %my_303, i32* %my_302
%my_304 = load i32*, i32** @my_outputBuffer
%my_305 = getelementptr inbounds i32, i32* %my_304, i32 3
%my_306 = load i32, i32* %my_129
store i32 %my_306, i32* %my_305
%my_307 = load i32*, i32** @my_outputBuffer
%my_308 = getelementptr inbounds i32, i32* %my_307, i32 4
%my_309 = load i32, i32* %my_130
store i32 %my_309, i32* %my_308
%my_310 = load i32*, i32** @my_outputBuffer
%my_311 = bitcast i32* %my_310 to i32*
store i32* %my_311, i32** %my_1
br label %my_sha1return_block

my_sha1return_block: 
%my_312 = load i32*, i32** %my_1
ret i32* %my_312
}
define void @computeSHA1(i8* %my_1) {
my_computeSHA1: 
%my_2 = alloca i8*
store i8* %my_1, i8** %my_2
%my_3 = alloca i32
%my_20 = alloca i32*
store i32 0, i32* %my_3
br label %my_computeSHA1_4
my_computeSHA1_4: 
%my_5 = load i32, i32* %my_3
%my_6 = load i8*, i8** %my_2
%my_7 = call i32 @length(i8* %my_6)
%my_8 = icmp slt i32 %my_5, %my_7
br i1 %my_8, label %my_computeSHA1_9, label %my_computeSHA1_19

my_computeSHA1_9: 
%my_10 = load i32*, i32** @my_inputBuffer
%my_11 = load i32, i32* %my_3
%my_12 = getelementptr inbounds i32, i32* %my_10, i32 %my_11
%my_13 = load i8*, i8** %my_2
%my_14 = load i32, i32* %my_3
%my_15 = call i32 @ord(i8* %my_13,i32 %my_14)
store i32 %my_15, i32* %my_12
br label %my_computeSHA1_16

my_computeSHA1_16: 
%my_17 = load i32, i32* %my_3
%my_18 = add nsw i32 %my_17, 1
store i32 %my_18, i32* %my_3
br label %my_computeSHA1_4

my_computeSHA1_19: 
%my_21 = load i32*, i32** @my_inputBuffer
%my_22 = bitcast i32* %my_21 to i32*
%my_23 = load i8*, i8** %my_2
%my_24 = call i32 @length(i8* %my_23)
%my_25 = call i32* @sha1(i32* %my_22,i32 %my_24)
%my_26 = bitcast i32* %my_25 to i32*
store i32* %my_26, i32** %my_20
store i32 0, i32* %my_3
br label %my_computeSHA1_27

my_computeSHA1_27: 
%my_28 = load i32, i32* %my_3
%my_29 = load i32*, i32** %my_20
%my_30 = bitcast i32* %my_29 to i32*
%my_31 = getelementptr inbounds i32, i32* %my_30, i8 -1
%my_32 = load i32, i32* %my_31
%my_33 = icmp slt i32 %my_28, %my_32
br i1 %my_33, label %my_computeSHA1_34, label %my_computeSHA1_45

my_computeSHA1_34: 
%my_35 = load i32*, i32** %my_20
%my_36 = load i32, i32* %my_3
%my_37 = getelementptr inbounds i32, i32* %my_35, i32 %my_36
%my_38 = load i32, i32* %my_37
%my_39 = call i8* @toStringHex(i32 %my_38)
%my_40 = bitcast i8* %my_39 to i8*
call void @print(i8* %my_40)
br label %my_computeSHA1_42

my_computeSHA1_42: 
%my_43 = load i32, i32* %my_3
%my_44 = add nsw i32 %my_43, 1
store i32 %my_44, i32* %my_3
br label %my_computeSHA1_27

my_computeSHA1_45: 
%my_46 = bitcast [1 x i8]* @my_.str.4 to i8*
call void @println(i8* %my_46)
br label %my_computeSHA1return_block

my_computeSHA1return_block: 
ret void
}
define i32 @nextLetter(i32 %my_2) {
my_nextLetter: 
%my_1 = alloca i32
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = load i32, i32* %my_3
%my_5 = icmp eq i32 %my_4, 122
br i1 %my_5, label %my_nextLetter_6, label %my_nextLetter_8
my_nextLetter_6: 
%my_7 = sub nsw i32 0, 1
store i32 %my_7, i32* %my_1
br label %my_nextLetterreturn_block

my_nextLetter_8: 
%my_9 = load i32, i32* %my_3
%my_10 = icmp eq i32 %my_9, 90
br i1 %my_10, label %my_nextLetter_11, label %my_nextLetter_12

my_nextLetter_11: 
store i32 97, i32* %my_1
br label %my_nextLetterreturn_block

my_nextLetter_12: 
%my_13 = load i32, i32* %my_3
%my_14 = icmp eq i32 %my_13, 57
br i1 %my_14, label %my_nextLetter_15, label %my_nextLetter_16

my_nextLetter_15: 
store i32 65, i32* %my_1
br label %my_nextLetterreturn_block

my_nextLetter_16: 
%my_17 = load i32, i32* %my_3
%my_18 = add nsw i32 %my_17, 1
store i32 %my_18, i32* %my_1
br label %my_nextLetterreturn_block

my_nextLetterreturn_block: 
%my_19 = load i32, i32* %my_1
ret i32 %my_19
}
define i8 @nextText(i32* %my_2, i32 %my_3) {
my_nextText: 
%my_1 = alloca i8
%my_4 = alloca i32*
store i32* %my_2, i32** %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = alloca i32
%my_7 = load i32, i32* %my_5
%my_8 = sub nsw i32 %my_7, 1
store i32 %my_8, i32* %my_6
br label %my_nextText_9
my_nextText_9: 
%my_10 = load i32, i32* %my_6
%my_11 = icmp sge i32 %my_10, 0
br i1 %my_11, label %my_nextText_12, label %my_nextText_36

my_nextText_12: 
%my_13 = load i32*, i32** %my_4
%my_14 = load i32, i32* %my_6
%my_15 = getelementptr inbounds i32, i32* %my_13, i32 %my_14
%my_16 = load i32*, i32** %my_4
%my_17 = load i32, i32* %my_6
%my_18 = getelementptr inbounds i32, i32* %my_16, i32 %my_17
%my_19 = load i32, i32* %my_18
%my_20 = call i32 @nextLetter(i32 %my_19)
store i32 %my_20, i32* %my_15
%my_21 = load i32*, i32** %my_4
%my_22 = load i32, i32* %my_6
%my_23 = getelementptr inbounds i32, i32* %my_21, i32 %my_22
%my_24 = load i32, i32* %my_23
%my_25 = sub nsw i32 0, 1
%my_26 = icmp eq i32 %my_24, %my_25
br i1 %my_26, label %my_nextText_27, label %my_nextText_31

my_nextText_27: 
%my_28 = load i32*, i32** %my_4
%my_29 = load i32, i32* %my_6
%my_30 = getelementptr inbounds i32, i32* %my_28, i32 %my_29
store i32 48, i32* %my_30
br label %my_nextText_32

my_nextText_31: 
store i8 1, i8* %my_1
br label %my_nextTextreturn_block

my_nextText_32: 
br label %my_nextText_33

my_nextText_33: 
%my_34 = load i32, i32* %my_6
%my_35 = add nsw i32 %my_34, -1
store i32 %my_35, i32* %my_6
br label %my_nextText_9

my_nextText_36: 
store i8 0, i8* %my_1
br label %my_nextTextreturn_block

my_nextTextreturn_block: 
%my_37 = load i8, i8* %my_1
ret i8 %my_37
}
define i8 @array_equal(i32* %my_2, i32* %my_3) {
my_array_equal: 
%my_1 = alloca i8
%my_4 = alloca i32*
store i32* %my_2, i32** %my_4
%my_5 = alloca i32*
store i32* %my_3, i32** %my_5
%my_17 = alloca i32
%my_6 = load i32*, i32** %my_4
%my_7 = bitcast i32* %my_6 to i32*
%my_8 = getelementptr inbounds i32, i32* %my_7, i8 -1
%my_9 = load i32, i32* %my_8
%my_10 = load i32*, i32** %my_5
%my_11 = bitcast i32* %my_10 to i32*
%my_12 = getelementptr inbounds i32, i32* %my_11, i8 -1
%my_13 = load i32, i32* %my_12
%my_14 = icmp ne i32 %my_9, %my_13
br i1 %my_14, label %my_array_equal_15, label %my_array_equal_16
my_array_equal_15: 
store i8 0, i8* %my_1
br label %my_array_equalreturn_block

my_array_equal_16: 
store i32 0, i32* %my_17
br label %my_array_equal_18

my_array_equal_18: 
%my_19 = load i32, i32* %my_17
%my_20 = load i32*, i32** %my_4
%my_21 = bitcast i32* %my_20 to i32*
%my_22 = getelementptr inbounds i32, i32* %my_21, i8 -1
%my_23 = load i32, i32* %my_22
%my_24 = icmp slt i32 %my_19, %my_23
br i1 %my_24, label %my_array_equal_25, label %my_array_equal_40

my_array_equal_25: 
%my_26 = load i32*, i32** %my_4
%my_27 = load i32, i32* %my_17
%my_28 = getelementptr inbounds i32, i32* %my_26, i32 %my_27
%my_29 = load i32, i32* %my_28
%my_30 = load i32*, i32** %my_5
%my_31 = load i32, i32* %my_17
%my_32 = getelementptr inbounds i32, i32* %my_30, i32 %my_31
%my_33 = load i32, i32* %my_32
%my_34 = icmp ne i32 %my_29, %my_33
br i1 %my_34, label %my_array_equal_35, label %my_array_equal_36

my_array_equal_35: 
store i8 0, i8* %my_1
br label %my_array_equalreturn_block

my_array_equal_36: 
br label %my_array_equal_37

my_array_equal_37: 
%my_38 = load i32, i32* %my_17
%my_39 = add nsw i32 %my_38, 1
store i32 %my_39, i32* %my_17
br label %my_array_equal_18

my_array_equal_40: 
store i8 1, i8* %my_1
br label %my_array_equalreturn_block

my_array_equalreturn_block: 
%my_41 = load i8, i8* %my_1
ret i8 %my_41
}
define void @crackSHA1(i8* %my_1) {
my_crackSHA1: 
%my_2 = alloca i8*
store i8* %my_1, i8** %my_2
%my_3 = alloca i32*
%my_18 = alloca i32
%my_61 = alloca i32
%my_62 = alloca i32
%my_82 = alloca i32*
%my_4 = mul nsw i64 5, 4
%my_5 = add nsw i64 %my_4, 4
%my_6 = call i8* @malloc(i64 %my_5)
%my_7 = bitcast i8* %my_6 to i32*
store i32 5, i32* %my_7
%my_8 = getelementptr inbounds i32, i32* %my_7, i32 1
%my_9 = bitcast i32* %my_8 to i32*
%my_10 = bitcast i32* %my_9 to i32*
store i32* %my_10, i32** %my_3
%my_11 = load i8*, i8** %my_2
%my_12 = call i32 @length(i8* %my_11)
%my_13 = icmp ne i32 %my_12, 40
br i1 %my_13, label %my_crackSHA1_14, label %my_crackSHA1_17
my_crackSHA1_14: 
%my_15 = bitcast [14 x i8]* @my_.str.5 to i8*
call void @println(i8* %my_15)
br label %my_crackSHA1return_block

my_crackSHA1_17: 
store i32 0, i32* %my_18
br label %my_crackSHA1_19

my_crackSHA1_19: 
%my_20 = load i32, i32* %my_18
%my_21 = icmp slt i32 %my_20, 5
br i1 %my_21, label %my_crackSHA1_22, label %my_crackSHA1_29

my_crackSHA1_22: 
%my_23 = load i32*, i32** %my_3
%my_24 = load i32, i32* %my_18
%my_25 = getelementptr inbounds i32, i32* %my_23, i32 %my_24
store i32 0, i32* %my_25
br label %my_crackSHA1_26

my_crackSHA1_26: 
%my_27 = load i32, i32* %my_18
%my_28 = add nsw i32 %my_27, 1
store i32 %my_28, i32* %my_18
br label %my_crackSHA1_19

my_crackSHA1_29: 
store i32 0, i32* %my_18
br label %my_crackSHA1_30

my_crackSHA1_30: 
%my_31 = load i32, i32* %my_18
%my_32 = icmp slt i32 %my_31, 40
br i1 %my_32, label %my_crackSHA1_33, label %my_crackSHA1_60

my_crackSHA1_33: 
%my_34 = load i32*, i32** %my_3
%my_35 = load i32, i32* %my_18
%my_36 = sdiv i32 %my_35, 8
%my_37 = getelementptr inbounds i32, i32* %my_34, i32 %my_36
%my_38 = load i32*, i32** %my_3
%my_39 = load i32, i32* %my_18
%my_40 = sdiv i32 %my_39, 8
%my_41 = getelementptr inbounds i32, i32* %my_38, i32 %my_40
%my_42 = load i32, i32* %my_41
%my_43 = load i8*, i8** %my_2
%my_44 = load i32, i32* %my_18
%my_45 = load i32, i32* %my_18
%my_46 = add nsw i32 %my_45, 4
%my_47 = call i8* @substring(i8* %my_43,i32 %my_44,i32 %my_46)
%my_48 = bitcast i8* %my_47 to i8*
%my_49 = call i32 @hex2int(i8* %my_48)
%my_50 = load i32, i32* %my_18
%my_51 = sdiv i32 %my_50, 4
%my_52 = srem i32 %my_51, 2
%my_53 = sub nsw i32 1, %my_52
%my_54 = mul nsw i32 %my_53, 16
%my_55 = shl i32 %my_49, %my_54
%my_56 = or i32 %my_42, %my_55
store i32 %my_56, i32* %my_37
br label %my_crackSHA1_57

my_crackSHA1_57: 
%my_58 = load i32, i32* %my_18
%my_59 = add nsw i32 %my_58, 4
store i32 %my_59, i32* %my_18
br label %my_crackSHA1_30

my_crackSHA1_60: 
store i32 4, i32* %my_61
store i32 1, i32* %my_62
br label %my_crackSHA1_63

my_crackSHA1_63: 
%my_64 = load i32, i32* %my_62
%my_65 = load i32, i32* %my_61
%my_66 = icmp sle i32 %my_64, %my_65
br i1 %my_66, label %my_crackSHA1_67, label %my_crackSHA1_127

my_crackSHA1_67: 
store i32 0, i32* %my_18
br label %my_crackSHA1_68

my_crackSHA1_68: 
%my_69 = load i32, i32* %my_18
%my_70 = load i32, i32* %my_62
%my_71 = icmp slt i32 %my_69, %my_70
br i1 %my_71, label %my_crackSHA1_72, label %my_crackSHA1_79

my_crackSHA1_72: 
%my_73 = load i32*, i32** @my_inputBuffer
%my_74 = load i32, i32* %my_18
%my_75 = getelementptr inbounds i32, i32* %my_73, i32 %my_74
store i32 48, i32* %my_75
br label %my_crackSHA1_76

my_crackSHA1_76: 
%my_77 = load i32, i32* %my_18
%my_78 = add nsw i32 %my_77, 1
store i32 %my_78, i32* %my_18
br label %my_crackSHA1_68

my_crackSHA1_79: 
br label %my_crackSHA1_80

my_crackSHA1_80: 
br i1 1, label %my_crackSHA1_81, label %my_crackSHA1_123

my_crackSHA1_81: 
%my_83 = load i32*, i32** @my_inputBuffer
%my_84 = bitcast i32* %my_83 to i32*
%my_85 = load i32, i32* %my_62
%my_86 = call i32* @sha1(i32* %my_84,i32 %my_85)
%my_87 = bitcast i32* %my_86 to i32*
store i32* %my_87, i32** %my_82
%my_88 = load i32*, i32** %my_82
%my_89 = bitcast i32* %my_88 to i32*
%my_90 = load i32*, i32** %my_3
%my_91 = bitcast i32* %my_90 to i32*
%my_92 = call i8 @array_equal(i32* %my_89,i32* %my_91)
%my_93 = trunc i8 %my_92 to i1
br i1 %my_93, label %my_crackSHA1_94, label %my_crackSHA1_113

my_crackSHA1_94: 
store i32 0, i32* %my_18
br label %my_crackSHA1_95

my_crackSHA1_95: 
%my_96 = load i32, i32* %my_18
%my_97 = load i32, i32* %my_62
%my_98 = icmp slt i32 %my_96, %my_97
br i1 %my_98, label %my_crackSHA1_99, label %my_crackSHA1_110

my_crackSHA1_99: 
%my_100 = load i32*, i32** @my_inputBuffer
%my_101 = load i32, i32* %my_18
%my_102 = getelementptr inbounds i32, i32* %my_100, i32 %my_101
%my_103 = load i32, i32* %my_102
%my_104 = call i8* @int2chr(i32 %my_103)
%my_105 = bitcast i8* %my_104 to i8*
call void @print(i8* %my_105)
br label %my_crackSHA1_107

my_crackSHA1_107: 
%my_108 = load i32, i32* %my_18
%my_109 = add nsw i32 %my_108, 1
store i32 %my_109, i32* %my_18
br label %my_crackSHA1_95

my_crackSHA1_110: 
%my_111 = bitcast [1 x i8]* @my_.str.6 to i8*
call void @println(i8* %my_111)
br label %my_crackSHA1return_block

my_crackSHA1_113: 
%my_114 = load i32*, i32** @my_inputBuffer
%my_115 = bitcast i32* %my_114 to i32*
%my_116 = load i32, i32* %my_62
%my_117 = call i8 @nextText(i32* %my_115,i32 %my_116)
%my_119 = trunc i8 %my_117 to i1
%my_120 = xor i1 true, %my_119
br i1 %my_120, label %my_crackSHA1_121, label %my_crackSHA1_122

my_crackSHA1_121: 
br label %my_crackSHA1_123

my_crackSHA1_122: 
br label %my_crackSHA1_80

my_crackSHA1_123: 
br label %my_crackSHA1_124

my_crackSHA1_124: 
%my_125 = load i32, i32* %my_62
%my_126 = add nsw i32 %my_125, 1
store i32 %my_126, i32* %my_62
br label %my_crackSHA1_63

my_crackSHA1_127: 
%my_128 = bitcast [11 x i8]* @my_.str.7 to i8*
call void @println(i8* %my_128)
br label %my_crackSHA1return_block

my_crackSHA1return_block: 
ret void
}
