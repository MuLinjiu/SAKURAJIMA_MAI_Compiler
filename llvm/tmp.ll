@my_.str.0 = private constant [3 x i8] c"( \00"
@my_.str.1 = private constant [3 x i8] c", \00"
@my_.str.2 = private constant [3 x i8] c" )\00"
%class.vector = type { i32*, i32, i32, i8*, i32, i32 }

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
define void @vector(%class.vector* %my_1) {
my_vector: 
%my_2 = alloca %class.vector*
store %class.vector* %my_1, %class.vector** %my_2
br label %my_vectorreturn_block
my_vectorreturn_block: 
ret void
}
define void @classvector_init(%class.vector* %my_1, i32* %my_2) {
my_classvector_init: 
%my_3 = alloca %class.vector*
store %class.vector* %my_1, %class.vector** %my_3
%my_4 = alloca i32*
store i32* %my_2, i32** %my_4
%my_23 = alloca i32
%my_5 = load i32*, i32** %my_4
%my_6 = icmp eq i32* %my_5, null
br i1 %my_6, label %my_classvector_init_7, label %my_classvector_init_8
my_classvector_init_7: 
br label %my_classvector_initreturn_block

my_classvector_init_8: 
%my_9 = load %class.vector*, %class.vector** %my_3
%my_10 = getelementptr inbounds %class.vector, %class.vector* %my_9, i32 0, i32 0
%my_11 = load i32*, i32** %my_4
%my_12 = bitcast i32* %my_11 to i32*
%my_13 = getelementptr inbounds i32, i32* %my_12, i8 -1
%my_14 = load i32, i32* %my_13
%my_15 = zext i32 %my_14 to i64
%my_16 = mul nsw i64 %my_15, 4
%my_17 = add nsw i64 %my_16, 4
%my_18 = call i8* @malloc(i64 %my_17)
%my_19 = bitcast i8* %my_18 to i32*
store i32 %my_14, i32* %my_19
%my_20 = getelementptr inbounds i32, i32* %my_19, i32 1
%my_21 = bitcast i32* %my_20 to i32*
%my_22 = bitcast i32* %my_21 to i32*
store i32* %my_22, i32** %my_10
store i32 0, i32* %my_23
br label %my_classvector_init_24

my_classvector_init_24: 
%my_25 = load i32, i32* %my_23
%my_26 = load i32*, i32** %my_4
%my_27 = bitcast i32* %my_26 to i32*
%my_28 = getelementptr inbounds i32, i32* %my_27, i8 -1
%my_29 = load i32, i32* %my_28
%my_30 = icmp slt i32 %my_25, %my_29
br i1 %my_30, label %my_classvector_init_31, label %my_classvector_init_44

my_classvector_init_31: 
%my_32 = load %class.vector*, %class.vector** %my_3
%my_33 = getelementptr inbounds %class.vector, %class.vector* %my_32, i32 0, i32 0
%my_34 = load i32*, i32** %my_33
%my_35 = load i32, i32* %my_23
%my_36 = getelementptr inbounds i32, i32* %my_34, i32 %my_35
%my_37 = load i32*, i32** %my_4
%my_38 = load i32, i32* %my_23
%my_39 = getelementptr inbounds i32, i32* %my_37, i32 %my_38
%my_40 = load i32, i32* %my_39
store i32 %my_40, i32* %my_36
br label %my_classvector_init_41

my_classvector_init_41: 
%my_42 = load i32, i32* %my_23
%my_43 = add nsw i32 %my_42, 1
store i32 %my_43, i32* %my_23
br label %my_classvector_init_24

my_classvector_init_44: 
br label %my_classvector_initreturn_block

my_classvector_initreturn_block: 
ret void
}
define i32 @classvector_getDim(%class.vector* %my_2) {
my_classvector_getDim: 
%my_1 = alloca i32
%my_3 = alloca %class.vector*
store %class.vector* %my_2, %class.vector** %my_3
%my_4 = load %class.vector*, %class.vector** %my_3
%my_5 = getelementptr inbounds %class.vector, %class.vector* %my_4, i32 0, i32 0
%my_6 = load i32*, i32** %my_5
%my_7 = icmp eq i32* %my_6, null
br i1 %my_7, label %my_classvector_getDim_8, label %my_classvector_getDim_9
my_classvector_getDim_8: 
store i32 0, i32* %my_1
br label %my_classvector_getDimreturn_block

my_classvector_getDim_9: 
%my_10 = load %class.vector*, %class.vector** %my_3
%my_11 = getelementptr inbounds %class.vector, %class.vector* %my_10, i32 0, i32 0
%my_12 = load i32*, i32** %my_11
%my_13 = bitcast i32* %my_12 to i32*
%my_14 = getelementptr inbounds i32, i32* %my_13, i8 -1
%my_15 = load i32, i32* %my_14
store i32 %my_15, i32* %my_1
br label %my_classvector_getDimreturn_block

my_classvector_getDimreturn_block: 
%my_16 = load i32, i32* %my_1
ret i32 %my_16
}
define %class.vector* @classvector_scalarInPlaceMultiply(%class.vector* %my_2, i32 %my_3) {
my_classvector_scalarInPlaceMultiply: 
%my_1 = alloca %class.vector*
%my_4 = alloca %class.vector*
store %class.vector* %my_2, %class.vector** %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_12 = alloca i32
%my_6 = load %class.vector*, %class.vector** %my_4
%my_7 = getelementptr inbounds %class.vector, %class.vector* %my_6, i32 0, i32 0
%my_8 = load i32*, i32** %my_7
%my_9 = icmp eq i32* %my_8, null
br i1 %my_9, label %my_classvector_scalarInPlaceMultiply_10, label %my_classvector_scalarInPlaceMultiply_11
my_classvector_scalarInPlaceMultiply_10: 
store %class.vector* null, %class.vector** %my_1
br label %my_classvector_scalarInPlaceMultiplyreturn_block

my_classvector_scalarInPlaceMultiply_11: 
store i32 0, i32* %my_12
br label %my_classvector_scalarInPlaceMultiply_13

my_classvector_scalarInPlaceMultiply_13: 
%my_14 = load i32, i32* %my_12
%my_15 = load %class.vector*, %class.vector** %my_4
%my_16 = call i32 @classvector_getDim(%class.vector* %my_15)
%my_17 = icmp slt i32 %my_14, %my_16
br i1 %my_17, label %my_classvector_scalarInPlaceMultiply_18, label %my_classvector_scalarInPlaceMultiply_35

my_classvector_scalarInPlaceMultiply_18: 
%my_19 = load %class.vector*, %class.vector** %my_4
%my_20 = getelementptr inbounds %class.vector, %class.vector* %my_19, i32 0, i32 0
%my_21 = load i32*, i32** %my_20
%my_22 = load i32, i32* %my_12
%my_23 = getelementptr inbounds i32, i32* %my_21, i32 %my_22
%my_24 = load i32, i32* %my_5
%my_25 = load %class.vector*, %class.vector** %my_4
%my_26 = getelementptr inbounds %class.vector, %class.vector* %my_25, i32 0, i32 0
%my_27 = load i32*, i32** %my_26
%my_28 = load i32, i32* %my_12
%my_29 = getelementptr inbounds i32, i32* %my_27, i32 %my_28
%my_30 = load i32, i32* %my_29
%my_31 = mul nsw i32 %my_24, %my_30
store i32 %my_31, i32* %my_23
br label %my_classvector_scalarInPlaceMultiply_32

my_classvector_scalarInPlaceMultiply_32: 
%my_33 = load i32, i32* %my_12
%my_34 = add nsw i32 %my_33, 1
store i32 %my_34, i32* %my_12
br label %my_classvector_scalarInPlaceMultiply_13

my_classvector_scalarInPlaceMultiply_35: 
%my_36 = bitcast %class.vector** %my_4 to %class.vector*
store %class.vector* %my_36, %class.vector** %my_1
br label %my_classvector_scalarInPlaceMultiplyreturn_block

my_classvector_scalarInPlaceMultiplyreturn_block: 
%my_37 = load %class.vector*, %class.vector** %my_1
ret %class.vector* %my_37
}
define i8* @classvector_tostring(%class.vector* %my_2) {
my_classvector_tostring: 
%my_1 = alloca i8*
%my_3 = alloca %class.vector*
store %class.vector* %my_2, %class.vector** %my_3
%my_4 = alloca i8*
%my_22 = alloca i32
%my_5 = bitcast [3 x i8]* @my_.str.0 to i8*
store i8* %my_5, i8** %my_4
%my_6 = load %class.vector*, %class.vector** %my_3
%my_7 = call i32 @classvector_getDim(%class.vector* %my_6)
%my_8 = icmp sgt i32 %my_7, 0
br i1 %my_8, label %my_classvector_tostring_9, label %my_classvector_tostring_21
my_classvector_tostring_9: 
%my_10 = load i8*, i8** %my_4
%my_11 = load %class.vector*, %class.vector** %my_3
%my_12 = getelementptr inbounds %class.vector, %class.vector* %my_11, i32 0, i32 0
%my_13 = load i32*, i32** %my_12
%my_14 = getelementptr inbounds i32, i32* %my_13, i32 0
%my_15 = load i32, i32* %my_14
%my_16 = call i8* @toString(i32 %my_15)
%my_17 = bitcast i8* %my_10 to i8*
%my_18 = bitcast i8* %my_16 to i8*
%my_19 = call i8* @string_add(i8* %my_17,i8* %my_18)
%my_20 = bitcast i8* %my_19 to i8*
store i8* %my_20, i8** %my_4
br label %my_classvector_tostring_21

my_classvector_tostring_21: 
store i32 1, i32* %my_22
br label %my_classvector_tostring_23

my_classvector_tostring_23: 
%my_24 = load i32, i32* %my_22
%my_25 = load %class.vector*, %class.vector** %my_3
%my_26 = call i32 @classvector_getDim(%class.vector* %my_25)
%my_27 = icmp slt i32 %my_24, %my_26
br i1 %my_27, label %my_classvector_tostring_28, label %my_classvector_tostring_47

my_classvector_tostring_28: 
%my_29 = load i8*, i8** %my_4
%my_30 = bitcast i8* %my_29 to i8*
%my_31 = bitcast [3 x i8]* @my_.str.1 to i8*
%my_32 = call i8* @string_add(i8* %my_30,i8* %my_31)
%my_33 = load %class.vector*, %class.vector** %my_3
%my_34 = getelementptr inbounds %class.vector, %class.vector* %my_33, i32 0, i32 0
%my_35 = load i32*, i32** %my_34
%my_36 = load i32, i32* %my_22
%my_37 = getelementptr inbounds i32, i32* %my_35, i32 %my_36
%my_38 = load i32, i32* %my_37
%my_39 = call i8* @toString(i32 %my_38)
%my_40 = bitcast i8* %my_32 to i8*
%my_41 = bitcast i8* %my_39 to i8*
%my_42 = call i8* @string_add(i8* %my_40,i8* %my_41)
%my_43 = bitcast i8* %my_42 to i8*
store i8* %my_43, i8** %my_4
br label %my_classvector_tostring_44

my_classvector_tostring_44: 
%my_45 = load i32, i32* %my_22
%my_46 = add nsw i32 %my_45, 1
store i32 %my_46, i32* %my_22
br label %my_classvector_tostring_23

my_classvector_tostring_47: 
%my_48 = load i8*, i8** %my_4
%my_49 = bitcast i8* %my_48 to i8*
%my_50 = bitcast [3 x i8]* @my_.str.2 to i8*
%my_51 = call i8* @string_add(i8* %my_49,i8* %my_50)
%my_52 = bitcast i8* %my_51 to i8*
store i8* %my_52, i8** %my_4
%my_53 = load i8*, i8** %my_4
%my_54 = bitcast i8* %my_53 to i8*
store i8* %my_54, i8** %my_1
br label %my_classvector_tostringreturn_block

my_classvector_tostringreturn_block: 
%my_55 = load i8*, i8** %my_1
ret i8* %my_55
}
define i8 @classvector_copy(%class.vector* %my_2, %class.vector* %my_3) {
my_classvector_copy: 
%my_1 = alloca i8
%my_4 = alloca %class.vector*
store %class.vector* %my_2, %class.vector** %my_4
%my_5 = alloca %class.vector*
store %class.vector* %my_3, %class.vector** %my_5
%my_29 = alloca i32
%my_6 = load %class.vector*, %class.vector** %my_5
%my_7 = icmp eq %class.vector* %my_6, null
br i1 %my_7, label %my_classvector_copy_8, label %my_classvector_copy_9
my_classvector_copy_8: 
store i8 0, i8* %my_1
br label %my_classvector_copyreturn_block

my_classvector_copy_9: 
%my_10 = load %class.vector*, %class.vector** %my_5
%my_11 = call i32 @classvector_getDim(%class.vector* %my_10)
%my_12 = icmp eq i32 %my_11, 0
br i1 %my_12, label %my_classvector_copy_13, label %my_classvector_copy_16

my_classvector_copy_13: 
%my_14 = load %class.vector*, %class.vector** %my_4
%my_15 = getelementptr inbounds %class.vector, %class.vector* %my_14, i32 0, i32 0
store i32* null, i32** %my_15
br label %my_classvector_copy_51

my_classvector_copy_16: 
%my_17 = load %class.vector*, %class.vector** %my_4
%my_18 = getelementptr inbounds %class.vector, %class.vector* %my_17, i32 0, i32 0
%my_19 = load %class.vector*, %class.vector** %my_5
%my_20 = call i32 @classvector_getDim(%class.vector* %my_19)
%my_21 = zext i32 %my_20 to i64
%my_22 = mul nsw i64 %my_21, 4
%my_23 = add nsw i64 %my_22, 4
%my_24 = call i8* @malloc(i64 %my_23)
%my_25 = bitcast i8* %my_24 to i32*
store i32 %my_20, i32* %my_25
%my_26 = getelementptr inbounds i32, i32* %my_25, i32 1
%my_27 = bitcast i32* %my_26 to i32*
%my_28 = bitcast i32* %my_27 to i32*
store i32* %my_28, i32** %my_18
store i32 0, i32* %my_29
br label %my_classvector_copy_30

my_classvector_copy_30: 
%my_31 = load i32, i32* %my_29
%my_32 = load %class.vector*, %class.vector** %my_4
%my_33 = call i32 @classvector_getDim(%class.vector* %my_32)
%my_34 = icmp slt i32 %my_31, %my_33
br i1 %my_34, label %my_classvector_copy_35, label %my_classvector_copy_50

my_classvector_copy_35: 
%my_36 = load %class.vector*, %class.vector** %my_4
%my_37 = getelementptr inbounds %class.vector, %class.vector* %my_36, i32 0, i32 0
%my_38 = load i32*, i32** %my_37
%my_39 = load i32, i32* %my_29
%my_40 = getelementptr inbounds i32, i32* %my_38, i32 %my_39
%my_41 = load %class.vector*, %class.vector** %my_5
%my_42 = getelementptr inbounds %class.vector, %class.vector* %my_41, i32 0, i32 0
%my_43 = load i32*, i32** %my_42
%my_44 = load i32, i32* %my_29
%my_45 = getelementptr inbounds i32, i32* %my_43, i32 %my_44
%my_46 = load i32, i32* %my_45
store i32 %my_46, i32* %my_40
br label %my_classvector_copy_47

my_classvector_copy_47: 
%my_48 = load i32, i32* %my_29
%my_49 = add nsw i32 %my_48, 1
store i32 %my_49, i32* %my_29
br label %my_classvector_copy_30

my_classvector_copy_50: 
br label %my_classvector_copy_51

my_classvector_copy_51: 
store i8 1, i8* %my_1
br label %my_classvector_copyreturn_block

my_classvector_copyreturn_block: 
%my_52 = load i8, i8* %my_1
ret i8 %my_52
}
define i32 @main() {
my_main: 
%my_1 = alloca i32
%my_2 = alloca %class.vector*
%my_6 = alloca i32*
%my_14 = alloca i32
%my_32 = alloca %class.vector*
%my_40 = alloca %class.vector*
%my_3 = call i8* @malloc(i64 8)
%my_4 = bitcast i8* %my_3 to %class.vector*
call void @vector(%class.vector* %my_4)
%my_5 = bitcast %class.vector* %my_4 to %class.vector*
store %class.vector* %my_5, %class.vector** %my_2
%my_7 = mul nsw i64 10, 4
%my_8 = add nsw i64 %my_7, 4
%my_9 = call i8* @malloc(i64 %my_8)
%my_10 = bitcast i8* %my_9 to i32*
store i32 10, i32* %my_10
%my_11 = getelementptr inbounds i32, i32* %my_10, i32 1
%my_12 = bitcast i32* %my_11 to i32*
%my_13 = bitcast i32* %my_12 to i32*
store i32* %my_13, i32** %my_6
store i32 0, i32* %my_14
br label %my_main_15
my_main_15: 
%my_16 = load i32, i32* %my_14
%my_17 = icmp slt i32 %my_16, 10
br i1 %my_17, label %my_main_18, label %my_main_27

my_main_18: 
%my_19 = load i32*, i32** %my_6
%my_20 = load i32, i32* %my_14
%my_21 = getelementptr inbounds i32, i32* %my_19, i32 %my_20
%my_22 = load i32, i32* %my_14
%my_23 = sub nsw i32 9, %my_22
store i32 %my_23, i32* %my_21
br label %my_main_24

my_main_24: 
%my_25 = load i32, i32* %my_14
%my_26 = add nsw i32 %my_25, 1
store i32 %my_26, i32* %my_14
br label %my_main_15

my_main_27: 
%my_28 = load %class.vector*, %class.vector** %my_2
%my_29 = load i32*, i32** %my_6
%my_30 = bitcast i32* %my_29 to i32*
call void @classvector_init(%class.vector* %my_28,i32* %my_30)
%my_33 = call i8* @malloc(i64 8)
%my_34 = bitcast i8* %my_33 to %class.vector*
call void @vector(%class.vector* %my_34)
%my_35 = bitcast %class.vector* %my_34 to %class.vector*
store %class.vector* %my_35, %class.vector** %my_32
%my_36 = load %class.vector*, %class.vector** %my_32
%my_37 = load %class.vector*, %class.vector** %my_2
%my_38 = bitcast %class.vector* %my_37 to %class.vector*
%my_39 = call i8 @classvector_copy(%class.vector* %my_36,%class.vector* %my_38)
%my_41 = load %class.vector*, %class.vector** %my_32
%my_42 = shl i32 1, 3
%my_43 = call %class.vector* @classvector_scalarInPlaceMultiply(%class.vector* %my_41,i32 %my_42)
%my_44 = bitcast %class.vector* %my_43 to %class.vector*
store %class.vector* %my_44, %class.vector** %my_40
%my_45 = load %class.vector*, %class.vector** %my_40
%my_46 = call i8* @classvector_tostring(%class.vector* %my_45)
%my_47 = bitcast i8* %my_46 to i8*
call void @println(i8* %my_47)
store i32 0, i32* %my_1
br label %my_mainreturn_block

my_mainreturn_block: 
%my_49 = load i32, i32* %my_1
ret i32 %my_49
}
