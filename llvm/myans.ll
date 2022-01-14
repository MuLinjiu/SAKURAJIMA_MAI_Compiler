@my_.str.0 = private constant [2 x i8] c" \00"
@my_.str.1 = private constant [1 x i8] c"\00"

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
define void @bubble_sort(i32* %my_1) {
my_bubble_sort: 
%my_2 = alloca i32*
store i32* %my_1, i32** %my_2
%my_3 = alloca i32
%my_4 = alloca i32
%my_5 = alloca i32
%my_36 = alloca i32
%my_6 = load i32*, i32** %my_2
%my_7 = bitcast i32* %my_6 to i32*
%my_8 = getelementptr inbounds i32, i32* %my_7, i8 -1
%my_9 = load i32, i32* %my_8
store i32 %my_9, i32* %my_5
store i32 0, i32* %my_3
br label %my_10
my_10: 
%my_11 = load i32, i32* %my_3
%my_12 = load i32, i32* %my_5
%my_13 = sub nsw i32 %my_12, 1
%my_14 = icmp slt i32 %my_11, %my_13
br i1 %my_14, label %my_15, label %my_61

my_15: 
store i32 0, i32* %my_4
br label %my_16

my_16: 
%my_17 = load i32, i32* %my_4
%my_18 = load i32, i32* %my_5
%my_19 = load i32, i32* %my_3
%my_20 = sub nsw i32 %my_18, %my_19
%my_21 = sub nsw i32 %my_20, 1
%my_22 = icmp slt i32 %my_17, %my_21
br i1 %my_22, label %my_23, label %my_57

my_23: 
%my_24 = load i32*, i32** %my_2
%my_25 = load i32, i32* %my_4
%my_26 = getelementptr inbounds i32, i32* %my_24, i32 %my_25
%my_27 = load i32, i32* %my_26
%my_28 = load i32*, i32** %my_2
%my_29 = load i32, i32* %my_4
%my_30 = add nsw i32 %my_29, 1
%my_31 = getelementptr inbounds i32, i32* %my_28, i32 %my_30
%my_32 = load i32, i32* %my_31
%my_33 = icmp slt i32 %my_27, %my_32
br i1 %my_33, label %my_34, label %my_35

my_34: 
br label %my_54

my_35: 
%my_37 = load i32*, i32** %my_2
%my_38 = load i32, i32* %my_4
%my_39 = getelementptr inbounds i32, i32* %my_37, i32 %my_38
%my_40 = load i32, i32* %my_39
store i32 %my_40, i32* %my_36
%my_41 = load i32*, i32** %my_2
%my_42 = load i32, i32* %my_4
%my_43 = getelementptr inbounds i32, i32* %my_41, i32 %my_42
%my_44 = load i32*, i32** %my_2
%my_45 = load i32, i32* %my_4
%my_46 = add nsw i32 %my_45, 1
%my_47 = getelementptr inbounds i32, i32* %my_44, i32 %my_46
%my_48 = load i32, i32* %my_47
store i32 %my_48, i32* %my_43
%my_49 = load i32*, i32** %my_2
%my_50 = load i32, i32* %my_4
%my_51 = add nsw i32 %my_50, 1
%my_52 = getelementptr inbounds i32, i32* %my_49, i32 %my_51
%my_53 = load i32, i32* %my_36
store i32 %my_53, i32* %my_52
br label %my_54

my_54: 
%my_55 = load i32, i32* %my_4
%my_56 = add nsw i32 %my_55, 1
store i32 %my_56, i32* %my_4
br label %my_16

my_57: 
br label %my_58

my_58: 
%my_59 = load i32, i32* %my_3
%my_60 = add nsw i32 %my_59, 1
store i32 %my_60, i32* %my_3
br label %my_10

my_61: 
br label %my_bubble_sortreturn_block

my_bubble_sortreturn_block: 
ret void
}
define i32 @main() {
my_main: 
%my_1 = alloca i32
%my_2 = alloca i32
%my_4 = alloca i32*
%my_14 = alloca i32
%my_3 = call i32 @getInt()
store i32 %my_3, i32* %my_2
%my_5 = load i32, i32* %my_2
%my_6 = zext i32 %my_5 to i64
%my_7 = mul nsw i64 %my_6, 4
%my_8 = add nsw i64 %my_7, 4
%my_9 = call i8* @malloc(i64 %my_8)
%my_10 = bitcast i8* %my_9 to i32*
store i32 %my_5, i32* %my_10
%my_11 = getelementptr inbounds i32, i32* %my_10, i32 1
%my_12 = bitcast i32* %my_11 to i32*
%my_13 = bitcast i32* %my_12 to i32*
store i32* %my_13, i32** %my_4
store i32 0, i32* %my_14
br label %my_15
my_15: 
%my_16 = load i32, i32* %my_14
%my_17 = load i32, i32* %my_2
%my_18 = icmp slt i32 %my_16, %my_17
br i1 %my_18, label %my_19, label %my_27

my_19: 
%my_20 = load i32*, i32** %my_4
%my_21 = load i32, i32* %my_14
%my_22 = getelementptr inbounds i32, i32* %my_20, i32 %my_21
%my_23 = call i32 @getInt()
store i32 %my_23, i32* %my_22
br label %my_24

my_24: 
%my_25 = load i32, i32* %my_14
%my_26 = add nsw i32 %my_25, 1
store i32 %my_26, i32* %my_14
br label %my_15

my_27: 
%my_28 = load i32*, i32** %my_4
%my_29 = bitcast i32* %my_28 to i32*
call void @bubble_sort(i32* %my_29)
store i32 0, i32* %my_14
br label %my_31

my_31: 
%my_32 = load i32, i32* %my_14
%my_33 = load i32, i32* %my_2
%my_34 = icmp slt i32 %my_32, %my_33
br i1 %my_34, label %my_35, label %my_49

my_35: 
%my_36 = load i32*, i32** %my_4
%my_37 = load i32, i32* %my_14
%my_38 = getelementptr inbounds i32, i32* %my_36, i32 %my_37
%my_39 = load i32, i32* %my_38
%my_40 = call i8* @toString(i32 %my_39)
%my_41 = bitcast i8* %my_40 to i8*
%my_42 = bitcast [2 x i8]* @my_.str.0 to i8*
%my_43 = call i8* @string_add(i8* %my_41,i8* %my_42)
%my_44 = bitcast i8* %my_43 to i8*
call void @print(i8* %my_44)
br label %my_46

my_46: 
%my_47 = load i32, i32* %my_14
%my_48 = add nsw i32 %my_47, 1
store i32 %my_48, i32* %my_14
br label %my_31

my_49: 
%my_50 = bitcast [1 x i8]* @my_.str.1 to i8*
call void @println(i8* %my_50)
store i32 0, i32* %my_1
br label %my_mainreturn_block

my_mainreturn_block: 
%my_52 = load i32, i32* %my_1
ret i32 %my_52
}