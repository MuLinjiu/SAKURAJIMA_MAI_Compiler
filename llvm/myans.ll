@my_.str.0 = private constant [2 x i8] c"\0A\00"

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
declare i8 @ord(i8* %my_1, i32 %my_2)
declare i1 @string_equal(i8* %my_1, i8* %my_2)
declare i1 @string_notEqual(i8* %my_1, i8* %my_2)
declare i1 @string_less(i8* %my_1, i8* %my_2)
declare i1 @string_lessEqual(i8* %my_1, i8* %my_2)
declare i1 @string_greater(i8* %my_1, i8* %my_2)
declare i1 @string_greaterEqual(i8* %my_1, i8* %my_2)
declare i8* @malloc(i64 %my_1)
define i32 @main() {
my_main: 
%my_1 = alloca i32
%my_2 = alloca i32
%my_3 = alloca i32
%my_4 = alloca i32
%my_5 = alloca i32
%my_6 = alloca i32
%my_7 = alloca i32*
%my_15 = alloca i32
store i32 10000, i32* %my_2
store i32 0, i32* %my_3
store i32 2800, i32* %my_4
store i32 0, i32* %my_5
store i32 0, i32* %my_6
%my_8 = mul nsw i64 2801, 4
%my_9 = add nsw i64 %my_8, 4
%my_10 = call i8* @malloc(i64 %my_9)
%my_11 = bitcast i8* %my_10 to i32*
store i32 2801, i32* %my_11
%my_12 = getelementptr inbounds i32, i32* %my_11, i32 1
%my_13 = bitcast i32* %my_12 to i32*
%my_14 = bitcast i32* %my_13 to i32*
store i32* %my_14, i32** %my_7
store i32 0, i32* %my_15
br label %my_16
my_16: 
%my_17 = load i32, i32* %my_3
%my_18 = load i32, i32* %my_4
%my_19 = sub nsw i32 %my_17, %my_18
%my_20 = icmp ne i32 %my_19, 0
br i1 %my_20, label %my_21, label %my_30

my_21: 
%my_22 = load i32*, i32** %my_7
%my_23 = load i32, i32* %my_3
%my_24 = getelementptr inbounds i32, i32* %my_22, i32 %my_23
%my_25 = load i32, i32* %my_2
%my_26 = sdiv i32 %my_25, 5
store i32 %my_26, i32* %my_24
br label %my_27

my_27: 
%my_28 = load i32, i32* %my_3
%my_29 = add nsw i32 %my_28, 1
store i32 %my_29, i32* %my_3
br label %my_16

my_30: 
br label %my_31

my_31: 
br label %my_32

my_32: 
store i32 0, i32* %my_5
%my_33 = load i32, i32* %my_4
%my_34 = mul nsw i32 %my_33, 2
store i32 %my_34, i32* %my_15
%my_35 = load i32, i32* %my_15
%my_36 = icmp eq i32 %my_35, 0
br i1 %my_36, label %my_37, label %my_38

my_37: 
br label %my_86

my_38: 
%my_39 = load i32, i32* %my_4
store i32 %my_39, i32* %my_3
br label %my_40

my_40: 
br label %my_41

my_41: 
%my_42 = load i32, i32* %my_5
%my_43 = load i32*, i32** %my_7
%my_44 = load i32, i32* %my_3
%my_45 = getelementptr inbounds i32, i32* %my_43, i32 %my_44
%my_46 = load i32, i32* %my_45
%my_47 = load i32, i32* %my_2
%my_48 = mul nsw i32 %my_46, %my_47
%my_49 = add nsw i32 %my_42, %my_48
store i32 %my_49, i32* %my_5
%my_50 = load i32*, i32** %my_7
%my_51 = load i32, i32* %my_3
%my_52 = getelementptr inbounds i32, i32* %my_50, i32 %my_51
%my_53 = load i32, i32* %my_5
%my_54 = load i32, i32* %my_15
%my_55 = add nsw i32 %my_54, -1
store i32 %my_55, i32* %my_15
%my_56 = srem i32 %my_53, %my_55
store i32 %my_56, i32* %my_52
%my_57 = load i32, i32* %my_5
%my_58 = load i32, i32* %my_15
%my_59 = sdiv i32 %my_57, %my_58
store i32 %my_59, i32* %my_5
%my_60 = load i32, i32* %my_15
%my_61 = add nsw i32 %my_60, -1
store i32 %my_61, i32* %my_15
%my_62 = load i32, i32* %my_3
%my_63 = add nsw i32 %my_62, -1
store i32 %my_63, i32* %my_3
%my_64 = icmp eq i32 %my_63, 0
br i1 %my_64, label %my_65, label %my_66

my_65: 
br label %my_71

my_66: 
br label %my_67

my_67: 
%my_68 = load i32, i32* %my_5
%my_69 = load i32, i32* %my_3
%my_70 = mul nsw i32 %my_68, %my_69
store i32 %my_70, i32* %my_5
br label %my_40

my_71: 
%my_72 = load i32, i32* %my_4
%my_73 = sub nsw i32 %my_72, 14
store i32 %my_73, i32* %my_4
%my_74 = load i32, i32* %my_6
%my_75 = load i32, i32* %my_5
%my_76 = load i32, i32* %my_2
%my_77 = sdiv i32 %my_75, %my_76
%my_78 = add nsw i32 %my_74, %my_77
%my_79 = call i8* @toString(i32 %my_78)
%my_80 = bitcast i8* %my_79 to i8*
call void @print(i8* %my_80)
br label %my_82

my_82: 
%my_83 = load i32, i32* %my_5
%my_84 = load i32, i32* %my_2
%my_85 = srem i32 %my_83, %my_84
store i32 %my_85, i32* %my_6
br label %my_31

my_86: 
%my_87 = bitcast [2 x i8]* @my_.str.0 to i8*
call void @print(i8* %my_87)
store i32 0, i32* %my_1
br label %my_mainreturn_block

my_mainreturn_block: 
%my_89 = load i32, i32* %my_1
ret i32 %my_89
}


