@my_storage = global i32* null
@my_beg = global i32 0
@my_end = global i32 0
@my_.str.0 = private constant [40 x i8] c"Warning: Slice_int::slice: out of range\00"
@my_.str.1 = private constant [46 x i8] c"Warning: Slice_int::copy: size() < arr.size()\00"
%class.Slice_int = type { i32*, i32, i32, %class.Slice_int*, i32, i32*, i32 }
@my_.str.2 = private constant [2 x i8] c" \00"
@my_.str.3 = private constant [1 x i8] c"\00"

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
define i32 @main() {
my_main: 
%my_1 = alloca i32
store i32 0, i32* %my_1
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
br label %my_main_15
my_main_15: 
%my_16 = load i32, i32* %my_14
%my_17 = load i32, i32* %my_2
%my_18 = icmp slt i32 %my_16, %my_17
br i1 %my_18, label %my_main_19, label %my_main_27

my_main_19: 
%my_20 = load i32*, i32** %my_4
%my_21 = load i32, i32* %my_14
%my_22 = getelementptr inbounds i32, i32* %my_20, i32 %my_21
%my_23 = call i32 @getInt()
store i32 %my_23, i32* %my_22
br label %my_main_24

my_main_24: 
%my_25 = load i32, i32* %my_14
%my_26 = add nsw i32 %my_25, 1
store i32 %my_26, i32* %my_14
br label %my_main_15

my_main_27: 
%my_28 = load i32*, i32** %my_4
%my_29 = bitcast i32* %my_28 to i32*
call void @mergeSortInf(i32* %my_29)
store i32 0, i32* %my_14
br label %my_main_31

my_main_31: 
%my_32 = load i32, i32* %my_14
%my_33 = load i32, i32* %my_2
%my_34 = icmp slt i32 %my_32, %my_33
br i1 %my_34, label %my_main_35, label %my_main_49

my_main_35: 
%my_36 = load i32*, i32** %my_4
%my_37 = load i32, i32* %my_14
%my_38 = getelementptr inbounds i32, i32* %my_36, i32 %my_37
%my_39 = load i32, i32* %my_38
%my_40 = call i8* @toString(i32 %my_39)
%my_41 = bitcast i8* %my_40 to i8*
%my_42 = bitcast [2 x i8]* @my_.str.2 to i8*
%my_43 = call i8* @string_add(i8* %my_41,i8* %my_42)
%my_44 = bitcast i8* %my_43 to i8*
call void @print(i8* %my_44)
br label %my_main_46

my_main_46: 
%my_47 = load i32, i32* %my_14
%my_48 = add nsw i32 %my_47, 1
store i32 %my_48, i32* %my_14
br label %my_main_31

my_main_49: 
%my_50 = bitcast [1 x i8]* @my_.str.3 to i8*
call void @println(i8* %my_50)
store i32 0, i32* %my_1
br label %my_mainreturn_block

my_mainreturn_block: 
%my_52 = load i32, i32* %my_1
ret i32 %my_52
}
define void @Slice_int(%class.Slice_int* %my_1) {
my_Slice_int: 
%my_2 = alloca %class.Slice_int*
store %class.Slice_int* %my_1, %class.Slice_int** %my_2
br label %my_Slice_intreturn_block
my_Slice_intreturn_block: 
ret void
}
define void @classSlice_int_init(%class.Slice_int* %my_1, i32* %my_2) {
my_classSlice_int_init: 
%my_3 = alloca %class.Slice_int*
store %class.Slice_int* %my_1, %class.Slice_int** %my_3
%my_4 = alloca i32*
store i32* %my_2, i32** %my_4
%my_5 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_6 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_5, i32 0, i32 0
%my_7 = load i32*, i32** %my_4
%my_8 = bitcast i32* %my_7 to i32*
store i32* %my_8, i32** %my_6
%my_9 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_10 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_9, i32 0, i32 1
store i32 0, i32* %my_10
%my_11 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_12 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_11, i32 0, i32 2
%my_13 = load i32*, i32** %my_4
%my_14 = bitcast i32* %my_13 to i32*
%my_15 = getelementptr inbounds i32, i32* %my_14, i8 -1
%my_16 = load i32, i32* %my_15
store i32 %my_16, i32* %my_12
br label %my_classSlice_int_initreturn_block
my_classSlice_int_initreturn_block: 
ret void
}
define i32 @classSlice_int_size(%class.Slice_int* %my_2) {
my_classSlice_int_size: 
%my_1 = alloca i32
%my_3 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_3
%my_4 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_5 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_4, i32 0, i32 2
%my_6 = load i32, i32* %my_5
%my_7 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_8 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_7, i32 0, i32 1
%my_9 = load i32, i32* %my_8
%my_10 = sub nsw i32 %my_6, %my_9
store i32 %my_10, i32* %my_1
br label %my_classSlice_int_sizereturn_block
my_classSlice_int_sizereturn_block: 
%my_11 = load i32, i32* %my_1
ret i32 %my_11
}
define i32 @classSlice_int_get(%class.Slice_int* %my_2, i32 %my_3) {
my_classSlice_int_get: 
%my_1 = alloca i32
%my_4 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_7 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_6, i32 0, i32 0
%my_8 = load i32*, i32** %my_7
%my_9 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_10 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_9, i32 0, i32 1
%my_11 = load i32, i32* %my_10
%my_12 = load i32, i32* %my_5
%my_13 = add nsw i32 %my_11, %my_12
%my_14 = getelementptr inbounds i32, i32* %my_8, i32 %my_13
%my_15 = load i32, i32* %my_14
store i32 %my_15, i32* %my_1
br label %my_classSlice_int_getreturn_block
my_classSlice_int_getreturn_block: 
%my_16 = load i32, i32* %my_1
ret i32 %my_16
}
define void @classSlice_int_set(%class.Slice_int* %my_1, i32 %my_2, i32 %my_3) {
my_classSlice_int_set: 
%my_4 = alloca %class.Slice_int*
store %class.Slice_int* %my_1, %class.Slice_int** %my_4
%my_5 = alloca i32
store i32 %my_2, i32* %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_7 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_8 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_7, i32 0, i32 0
%my_9 = load i32*, i32** %my_8
%my_10 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_11 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_10, i32 0, i32 1
%my_12 = load i32, i32* %my_11
%my_13 = load i32, i32* %my_5
%my_14 = add nsw i32 %my_12, %my_13
%my_15 = getelementptr inbounds i32, i32* %my_9, i32 %my_14
%my_16 = load i32, i32* %my_6
store i32 %my_16, i32* %my_15
br label %my_classSlice_int_setreturn_block
my_classSlice_int_setreturn_block: 
ret void
}
define %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_2, i32 %my_3, i32 %my_4) {
my_classSlice_int_slice: 
%my_1 = alloca %class.Slice_int*
%my_5 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_7 = alloca i32
store i32 %my_4, i32* %my_7
%my_8 = alloca %class.Slice_int*
%my_9 = call i8* @malloc(i64 16)
%my_10 = bitcast i8* %my_9 to %class.Slice_int*
call void @Slice_int(%class.Slice_int* %my_10)
%my_11 = bitcast %class.Slice_int* %my_10 to %class.Slice_int*
store %class.Slice_int* %my_11, %class.Slice_int** %my_8
%my_12 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_13 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_12, i32 0, i32 0
%my_14 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_15 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_14, i32 0, i32 0
%my_16 = load i32*, i32** %my_15
%my_17 = bitcast i32* %my_16 to i32*
store i32* %my_17, i32** %my_13
%my_18 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_19 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_18, i32 0, i32 1
%my_20 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_21 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_20, i32 0, i32 1
%my_22 = load i32, i32* %my_21
%my_23 = load i32, i32* %my_6
%my_24 = add nsw i32 %my_22, %my_23
store i32 %my_24, i32* %my_19
%my_25 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_26 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_25, i32 0, i32 2
%my_27 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_28 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_27, i32 0, i32 1
%my_29 = load i32, i32* %my_28
%my_30 = load i32, i32* %my_7
%my_31 = add nsw i32 %my_29, %my_30
store i32 %my_31, i32* %my_26
%my_32 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_33 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_32, i32 0, i32 1
%my_34 = load i32, i32* %my_33
%my_35 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_36 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_35, i32 0, i32 0
%my_37 = load i32*, i32** %my_36
%my_38 = bitcast i32* %my_37 to i32*
%my_39 = getelementptr inbounds i32, i32* %my_38, i8 -1
%my_40 = load i32, i32* %my_39
%my_41 = icmp sgt i32 %my_34, %my_40
br i1 %my_41, label %my_classSlice_int_slice_41OR_OR_OUT, label %my_classSlice_int_slice_41OR_OR_FALSE
my_classSlice_int_slice_41OR_OR_FALSE: 
%my_42 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_43 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_42, i32 0, i32 2
%my_44 = load i32, i32* %my_43
%my_45 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_46 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_45, i32 0, i32 0
%my_47 = load i32*, i32** %my_46
%my_48 = bitcast i32* %my_47 to i32*
%my_49 = getelementptr inbounds i32, i32* %my_48, i8 -1
%my_50 = load i32, i32* %my_49
%my_51 = icmp sgt i32 %my_44, %my_50
br label %my_classSlice_int_slice_41OR_OR_OUT

my_classSlice_int_slice_41OR_OR_OUT: 
%my_52 = phi i1 [ true, %my_classSlice_int_slice ], [ %my_51, %my_classSlice_int_slice_41OR_OR_FALSE ]
br i1 %my_52, label %my_classSlice_int_slice_53, label %my_classSlice_int_slice_56

my_classSlice_int_slice_53: 
%my_54 = bitcast [40 x i8]* @my_.str.0 to i8*
call void @println(i8* %my_54)
br label %my_classSlice_int_slice_56

my_classSlice_int_slice_56: 
%my_57 = load %class.Slice_int*, %class.Slice_int** %my_8
%my_58 = bitcast %class.Slice_int* %my_57 to %class.Slice_int*
store %class.Slice_int* %my_58, %class.Slice_int** %my_1
br label %my_classSlice_int_slicereturn_block

my_classSlice_int_slicereturn_block: 
%my_59 = load %class.Slice_int*, %class.Slice_int** %my_1
ret %class.Slice_int* %my_59
}
define %class.Slice_int* @classSlice_int_tail(%class.Slice_int* %my_2) {
my_classSlice_int_tail: 
%my_1 = alloca %class.Slice_int*
%my_3 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_3
%my_4 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_5 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_6 = call i32 @classSlice_int_size(%class.Slice_int* %my_5)
%my_7 = call %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_4,i32 1,i32 %my_6)
%my_8 = bitcast %class.Slice_int* %my_7 to %class.Slice_int*
store %class.Slice_int* %my_8, %class.Slice_int** %my_1
br label %my_classSlice_int_tailreturn_block
my_classSlice_int_tailreturn_block: 
%my_9 = load %class.Slice_int*, %class.Slice_int** %my_1
ret %class.Slice_int* %my_9
}
define void @classSlice_int_copy(%class.Slice_int* %my_1, %class.Slice_int* %my_2) {
my_classSlice_int_copy: 
%my_3 = alloca %class.Slice_int*
store %class.Slice_int* %my_1, %class.Slice_int** %my_3
%my_4 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_4
%my_14 = alloca i32
%my_5 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_6 = call i32 @classSlice_int_size(%class.Slice_int* %my_5)
%my_7 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_8 = call i32 @classSlice_int_size(%class.Slice_int* %my_7)
%my_9 = icmp slt i32 %my_6, %my_8
br i1 %my_9, label %my_classSlice_int_copy_10, label %my_classSlice_int_copy_13
my_classSlice_int_copy_10: 
%my_11 = bitcast [46 x i8]* @my_.str.1 to i8*
call void @println(i8* %my_11)
br label %my_classSlice_int_copy_13

my_classSlice_int_copy_13: 
store i32 0, i32* %my_14
br label %my_classSlice_int_copy_15

my_classSlice_int_copy_15: 
%my_16 = load i32, i32* %my_14
%my_17 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_18 = call i32 @classSlice_int_size(%class.Slice_int* %my_17)
%my_19 = icmp slt i32 %my_16, %my_18
br i1 %my_19, label %my_classSlice_int_copy_20, label %my_classSlice_int_copy_36

my_classSlice_int_copy_20: 
%my_21 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_22 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_21, i32 0, i32 0
%my_23 = load i32*, i32** %my_22
%my_24 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_25 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_24, i32 0, i32 1
%my_26 = load i32, i32* %my_25
%my_27 = load i32, i32* %my_14
%my_28 = add nsw i32 %my_26, %my_27
%my_29 = getelementptr inbounds i32, i32* %my_23, i32 %my_28
%my_30 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_31 = load i32, i32* %my_14
%my_32 = call i32 @classSlice_int_get(%class.Slice_int* %my_30,i32 %my_31)
store i32 %my_32, i32* %my_29
br label %my_classSlice_int_copy_33

my_classSlice_int_copy_33: 
%my_34 = load i32, i32* %my_14
%my_35 = add nsw i32 %my_34, 1
store i32 %my_35, i32* %my_14
br label %my_classSlice_int_copy_15

my_classSlice_int_copy_36: 
br label %my_classSlice_int_copyreturn_block

my_classSlice_int_copyreturn_block: 
ret void
}
define i32* @classSlice_int_cloneArray(%class.Slice_int* %my_2) {
my_classSlice_int_cloneArray: 
%my_1 = alloca i32*
%my_3 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_3
%my_4 = alloca i32*
%my_15 = alloca i32
%my_5 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_6 = call i32 @classSlice_int_size(%class.Slice_int* %my_5)
%my_7 = zext i32 %my_6 to i64
%my_8 = mul nsw i64 %my_7, 4
%my_9 = add nsw i64 %my_8, 4
%my_10 = call i8* @malloc(i64 %my_9)
%my_11 = bitcast i8* %my_10 to i32*
store i32 %my_6, i32* %my_11
%my_12 = getelementptr inbounds i32, i32* %my_11, i32 1
%my_13 = bitcast i32* %my_12 to i32*
%my_14 = bitcast i32* %my_13 to i32*
store i32* %my_14, i32** %my_4
store i32 0, i32* %my_15
br label %my_classSlice_int_cloneArray_16
my_classSlice_int_cloneArray_16: 
%my_17 = load i32, i32* %my_15
%my_18 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_19 = call i32 @classSlice_int_size(%class.Slice_int* %my_18)
%my_20 = icmp slt i32 %my_17, %my_19
br i1 %my_20, label %my_classSlice_int_cloneArray_21, label %my_classSlice_int_cloneArray_38

my_classSlice_int_cloneArray_21: 
%my_22 = load i32*, i32** %my_4
%my_23 = load i32, i32* %my_15
%my_24 = getelementptr inbounds i32, i32* %my_22, i32 %my_23
%my_25 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_26 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_25, i32 0, i32 0
%my_27 = load i32*, i32** %my_26
%my_28 = load %class.Slice_int*, %class.Slice_int** %my_3
%my_29 = getelementptr inbounds %class.Slice_int, %class.Slice_int* %my_28, i32 0, i32 1
%my_30 = load i32, i32* %my_29
%my_31 = load i32, i32* %my_15
%my_32 = add nsw i32 %my_30, %my_31
%my_33 = getelementptr inbounds i32, i32* %my_27, i32 %my_32
%my_34 = load i32, i32* %my_33
store i32 %my_34, i32* %my_24
br label %my_classSlice_int_cloneArray_35

my_classSlice_int_cloneArray_35: 
%my_36 = load i32, i32* %my_15
%my_37 = add nsw i32 %my_36, 1
store i32 %my_37, i32* %my_15
br label %my_classSlice_int_cloneArray_16

my_classSlice_int_cloneArray_38: 
%my_39 = load i32*, i32** %my_4
%my_40 = bitcast i32* %my_39 to i32*
store i32* %my_40, i32** %my_1
br label %my_classSlice_int_cloneArrayreturn_block

my_classSlice_int_cloneArrayreturn_block: 
%my_41 = load i32*, i32** %my_1
ret i32* %my_41
}
define %class.Slice_int* @makeSlice_int(i32* %my_2) {
my_makeSlice_int: 
%my_1 = alloca %class.Slice_int*
%my_3 = alloca i32*
store i32* %my_2, i32** %my_3
%my_4 = alloca %class.Slice_int*
%my_5 = call i8* @malloc(i64 16)
%my_6 = bitcast i8* %my_5 to %class.Slice_int*
call void @Slice_int(%class.Slice_int* %my_6)
%my_7 = bitcast %class.Slice_int* %my_6 to %class.Slice_int*
store %class.Slice_int* %my_7, %class.Slice_int** %my_4
%my_8 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_9 = load i32*, i32** %my_3
%my_10 = bitcast i32* %my_9 to i32*
call void @classSlice_int_init(%class.Slice_int* %my_8,i32* %my_10)
%my_12 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_13 = bitcast %class.Slice_int* %my_12 to %class.Slice_int*
store %class.Slice_int* %my_13, %class.Slice_int** %my_1
br label %my_makeSlice_intreturn_block
my_makeSlice_intreturn_block: 
%my_14 = load %class.Slice_int*, %class.Slice_int** %my_1
ret %class.Slice_int* %my_14
}
define i32* @merge(%class.Slice_int* %my_2, %class.Slice_int* %my_3) {
my_merge: 
%my_1 = alloca i32*
%my_4 = alloca %class.Slice_int*
store %class.Slice_int* %my_2, %class.Slice_int** %my_4
%my_5 = alloca %class.Slice_int*
store %class.Slice_int* %my_3, %class.Slice_int** %my_5
%my_22 = alloca i32*
%my_36 = alloca %class.Slice_int*
%my_6 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_7 = call i32 @classSlice_int_size(%class.Slice_int* %my_6)
%my_8 = icmp eq i32 %my_7, 0
br i1 %my_8, label %my_merge_9, label %my_merge_13
my_merge_9: 
%my_10 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_11 = call i32* @classSlice_int_cloneArray(%class.Slice_int* %my_10)
%my_12 = bitcast i32* %my_11 to i32*
store i32* %my_12, i32** %my_1
br label %my_mergereturn_block

my_merge_13: 
%my_14 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_15 = call i32 @classSlice_int_size(%class.Slice_int* %my_14)
%my_16 = icmp eq i32 %my_15, 0
br i1 %my_16, label %my_merge_17, label %my_merge_21

my_merge_17: 
%my_18 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_19 = call i32* @classSlice_int_cloneArray(%class.Slice_int* %my_18)
%my_20 = bitcast i32* %my_19 to i32*
store i32* %my_20, i32** %my_1
br label %my_mergereturn_block

my_merge_21: 
%my_23 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_24 = call i32 @classSlice_int_size(%class.Slice_int* %my_23)
%my_25 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_26 = call i32 @classSlice_int_size(%class.Slice_int* %my_25)
%my_27 = add nsw i32 %my_24, %my_26
%my_28 = zext i32 %my_27 to i64
%my_29 = mul nsw i64 %my_28, 4
%my_30 = add nsw i64 %my_29, 4
%my_31 = call i8* @malloc(i64 %my_30)
%my_32 = bitcast i8* %my_31 to i32*
store i32 %my_27, i32* %my_32
%my_33 = getelementptr inbounds i32, i32* %my_32, i32 1
%my_34 = bitcast i32* %my_33 to i32*
%my_35 = bitcast i32* %my_34 to i32*
store i32* %my_35, i32** %my_22
%my_37 = load i32*, i32** %my_22
%my_38 = bitcast i32* %my_37 to i32*
%my_39 = call %class.Slice_int* @makeSlice_int(i32* %my_38)
%my_40 = call %class.Slice_int* @classSlice_int_tail(%class.Slice_int* %my_39)
%my_41 = bitcast %class.Slice_int* %my_40 to %class.Slice_int*
store %class.Slice_int* %my_41, %class.Slice_int** %my_36
%my_42 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_43 = call i32 @classSlice_int_get(%class.Slice_int* %my_42,i32 0)
%my_44 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_45 = call i32 @classSlice_int_get(%class.Slice_int* %my_44,i32 0)
%my_46 = icmp slt i32 %my_43, %my_45
br i1 %my_46, label %my_merge_47, label %my_merge_63

my_merge_47: 
%my_48 = load i32*, i32** %my_22
%my_49 = getelementptr inbounds i32, i32* %my_48, i32 0
%my_50 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_51 = call i32 @classSlice_int_get(%class.Slice_int* %my_50,i32 0)
store i32 %my_51, i32* %my_49
%my_52 = load %class.Slice_int*, %class.Slice_int** %my_36
%my_53 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_54 = call %class.Slice_int* @classSlice_int_tail(%class.Slice_int* %my_53)
%my_55 = bitcast %class.Slice_int* %my_54 to %class.Slice_int*
%my_56 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_57 = bitcast %class.Slice_int* %my_56 to %class.Slice_int*
%my_58 = call i32* @merge(%class.Slice_int* %my_55,%class.Slice_int* %my_57)
%my_59 = bitcast i32* %my_58 to i32*
%my_60 = call %class.Slice_int* @makeSlice_int(i32* %my_59)
%my_61 = bitcast %class.Slice_int* %my_60 to %class.Slice_int*
call void @classSlice_int_copy(%class.Slice_int* %my_52,%class.Slice_int* %my_61)
br label %my_merge_79

my_merge_63: 
%my_64 = load i32*, i32** %my_22
%my_65 = getelementptr inbounds i32, i32* %my_64, i32 0
%my_66 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_67 = call i32 @classSlice_int_get(%class.Slice_int* %my_66,i32 0)
store i32 %my_67, i32* %my_65
%my_68 = load %class.Slice_int*, %class.Slice_int** %my_36
%my_69 = load %class.Slice_int*, %class.Slice_int** %my_4
%my_70 = bitcast %class.Slice_int* %my_69 to %class.Slice_int*
%my_71 = load %class.Slice_int*, %class.Slice_int** %my_5
%my_72 = call %class.Slice_int* @classSlice_int_tail(%class.Slice_int* %my_71)
%my_73 = bitcast %class.Slice_int* %my_72 to %class.Slice_int*
%my_74 = call i32* @merge(%class.Slice_int* %my_70,%class.Slice_int* %my_73)
%my_75 = bitcast i32* %my_74 to i32*
%my_76 = call %class.Slice_int* @makeSlice_int(i32* %my_75)
%my_77 = bitcast %class.Slice_int* %my_76 to %class.Slice_int*
call void @classSlice_int_copy(%class.Slice_int* %my_68,%class.Slice_int* %my_77)
br label %my_merge_79

my_merge_79: 
%my_80 = load i32*, i32** %my_22
%my_81 = bitcast i32* %my_80 to i32*
store i32* %my_81, i32** %my_1
br label %my_mergereturn_block

my_mergereturn_block: 
%my_82 = load i32*, i32** %my_1
ret i32* %my_82
}
define void @mergeSort(%class.Slice_int* %my_1) {
my_mergeSort: 
%my_2 = alloca %class.Slice_int*
store %class.Slice_int* %my_1, %class.Slice_int** %my_2
%my_8 = alloca i32
%my_11 = alloca i32
%my_3 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_4 = call i32 @classSlice_int_size(%class.Slice_int* %my_3)
%my_5 = icmp eq i32 %my_4, 1
br i1 %my_5, label %my_mergeSort_6, label %my_mergeSort_7
my_mergeSort_6: 
br label %my_mergeSortreturn_block

my_mergeSort_7: 
%my_9 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_10 = call i32 @classSlice_int_size(%class.Slice_int* %my_9)
store i32 %my_10, i32* %my_8
%my_12 = load i32, i32* %my_8
%my_13 = sdiv i32 %my_12, 2
store i32 %my_13, i32* %my_11
%my_14 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_15 = load i32, i32* %my_11
%my_16 = call %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_14,i32 0,i32 %my_15)
%my_17 = bitcast %class.Slice_int* %my_16 to %class.Slice_int*
call void @mergeSort(%class.Slice_int* %my_17)
%my_19 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_20 = load i32, i32* %my_11
%my_21 = load i32, i32* %my_8
%my_22 = call %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_19,i32 %my_20,i32 %my_21)
%my_23 = bitcast %class.Slice_int* %my_22 to %class.Slice_int*
call void @mergeSort(%class.Slice_int* %my_23)
%my_25 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_26 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_27 = load i32, i32* %my_11
%my_28 = call %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_26,i32 0,i32 %my_27)
%my_29 = bitcast %class.Slice_int* %my_28 to %class.Slice_int*
%my_30 = load %class.Slice_int*, %class.Slice_int** %my_2
%my_31 = load i32, i32* %my_11
%my_32 = load i32, i32* %my_8
%my_33 = call %class.Slice_int* @classSlice_int_slice(%class.Slice_int* %my_30,i32 %my_31,i32 %my_32)
%my_34 = bitcast %class.Slice_int* %my_33 to %class.Slice_int*
%my_35 = call i32* @merge(%class.Slice_int* %my_29,%class.Slice_int* %my_34)
%my_36 = bitcast i32* %my_35 to i32*
%my_37 = call %class.Slice_int* @makeSlice_int(i32* %my_36)
%my_38 = bitcast %class.Slice_int* %my_37 to %class.Slice_int*
call void @classSlice_int_copy(%class.Slice_int* %my_25,%class.Slice_int* %my_38)
br label %my_mergeSortreturn_block

my_mergeSortreturn_block: 
ret void
}
define void @mergeSortInf(i32* %my_1) {
my_mergeSortInf: 
%my_2 = alloca i32*
store i32* %my_1, i32** %my_2
%my_3 = load i32*, i32** %my_2
%my_4 = bitcast i32* %my_3 to i32*
%my_5 = call %class.Slice_int* @makeSlice_int(i32* %my_4)
%my_6 = bitcast %class.Slice_int* %my_5 to %class.Slice_int*
call void @mergeSort(%class.Slice_int* %my_6)
br label %my_mergeSortInfreturn_block
my_mergeSortInfreturn_block: 
ret void
}


