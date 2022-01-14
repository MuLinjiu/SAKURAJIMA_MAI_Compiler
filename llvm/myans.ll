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
%my_2 = alloca i32**
%my_11 = alloca i32
%my_12 = alloca i32
%my_27 = alloca i32
%my_3 = mul nsw i64 10, 8
%my_4 = call i8* @malloc(i64 %my_3)
%my_5 = bitcast i8* %my_4 to i32**
store i32** %my_5, i32*** %my_2
%my_6 = load i32**, i32*** %my_2
%my_7 = getelementptr inbounds i32*, i32** %my_6, i32 0
%my_8 = mul nsw i64 10, 4
%my_9 = call i8* @malloc(i64 %my_8)
%my_10 = bitcast i8* %my_9 to i32*
store i32* %my_10, i32** %my_7
store i32 0, i32* %my_11
store i32 0, i32* %my_12
br label %my_13
my_13: 
%my_14 = load i32, i32* %my_12
%my_15 = icmp slt i32 %my_14, 10
br i1 %my_15, label %my_16, label %my_26

my_16: 
%my_17 = load i32**, i32*** %my_2
%my_18 = getelementptr inbounds i32*, i32** %my_17, i32 0
%my_19 = load i32*, i32** %my_18
%my_20 = load i32, i32* %my_12
%my_21 = getelementptr inbounds i32, i32* %my_19, i32 %my_20
%my_22 = load i32, i32* %my_12
store i32 %my_22, i32* %my_21
br label %my_23

my_23: 
%my_24 = load i32, i32* %my_12
%my_25 = add nsw i32 %my_24, 1
store i32 %my_25, i32* %my_12
br label %my_13

my_26: 
store i32 0, i32* %my_27
br label %my_28

my_28: 
%my_29 = load i32, i32* %my_27
%my_30 = icmp slt i32 %my_29, 10
br i1 %my_30, label %my_31, label %my_43

my_31: 
%my_32 = load i32, i32* %my_11
%my_33 = load i32**, i32*** %my_2
%my_34 = getelementptr inbounds i32*, i32** %my_33, i32 0
%my_35 = load i32*, i32** %my_34
%my_36 = load i32, i32* %my_27
%my_37 = getelementptr inbounds i32, i32* %my_35, i32 %my_36
%my_38 = load i32, i32* %my_37
%my_39 = add nsw i32 %my_32, %my_38
store i32 %my_39, i32* %my_11
br label %my_40

my_40: 
%my_41 = load i32, i32* %my_27
%my_42 = add nsw i32 %my_41, 1
store i32 %my_42, i32* %my_27
br label %my_28

my_43: 
%my_44 = load i32, i32* %my_11
call void @printlnInt(i32 %my_44)
store i32 0, i32* %my_1
%my_46 = load i32, i32* %my_1

ret i32 %my_46
}
