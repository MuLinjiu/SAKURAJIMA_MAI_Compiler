@my_storage = global i32* null
@my_beg = global i32 0
@my_end = global i32 0
@my_.str.0 = private constant [37 x i8] c"Warning: Queue_int::pop: empty queue\00"
%class.Queue_int = type { i32*, i32, i32, i32, i32*, i32, i32, i32 }
%class.Edge = type { i32, i32, i32 }
@my_edges = global %class.Edge** null
@my_next = global i32* null
@my_first = global i32* null
@my_size = global i32 0
%class.EdgeList = type { %class.Edge**, i32*, i32*, i32, i32, %class.Edge* }
@my_n = global i32 0
@my_m = global i32 0
@my_g = global %class.EdgeList* null
@my_INF = global i32 10000000
@my_.str.1 = private constant [3 x i8] c"-1\00"
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
%my_3 = alloca i32
%my_4 = alloca i32
%my_10 = alloca i32*
call void @init()
store i32 0, i32* %my_3
br label %my_5
my_5: 
%my_6 = load i32, i32* %my_3
%my_7 = load i32, i32* @my_n
%my_8 = icmp slt i32 %my_6, %my_7
br i1 %my_8, label %my_9, label %my_48

my_9: 
%my_11 = load i32, i32* %my_3
%my_12 = call i32* @spfa(i32 %my_11)
%my_13 = bitcast i32* %my_12 to i32*
store i32* %my_13, i32** %my_10
store i32 0, i32* %my_4
br label %my_14

my_14: 
%my_15 = load i32, i32* %my_4
%my_16 = load i32, i32* @my_n
%my_17 = icmp slt i32 %my_15, %my_16
br i1 %my_17, label %my_18, label %my_42

my_18: 
%my_19 = load i32*, i32** %my_10
%my_20 = load i32, i32* %my_4
%my_21 = getelementptr inbounds i32, i32* %my_19, i32 %my_20
%my_22 = load i32, i32* %my_21
%my_23 = load i32, i32* @my_INF
%my_24 = icmp eq i32 %my_22, %my_23
br i1 %my_24, label %my_25, label %my_28

my_25: 
%my_26 = bitcast [3 x i8]* @my_.str.1 to i8*
call void @print(i8* %my_26)
br label %my_36

my_28: 
%my_29 = load i32*, i32** %my_10
%my_30 = load i32, i32* %my_4
%my_31 = getelementptr inbounds i32, i32* %my_29, i32 %my_30
%my_32 = load i32, i32* %my_31
%my_33 = call i8* @toString(i32 %my_32)
%my_34 = bitcast i8* %my_33 to i8*
call void @print(i8* %my_34)
br label %my_36

my_36: 
%my_37 = bitcast [2 x i8]* @my_.str.2 to i8*
call void @print(i8* %my_37)
br label %my_39

my_39: 
%my_40 = load i32, i32* %my_4
%my_41 = add nsw i32 %my_40, 1
store i32 %my_41, i32* %my_4
br label %my_14

my_42: 
%my_43 = bitcast [1 x i8]* @my_.str.3 to i8*
call void @println(i8* %my_43)
br label %my_45

my_45: 
%my_46 = load i32, i32* %my_3
%my_47 = add nsw i32 %my_46, 1
store i32 %my_47, i32* %my_3
br label %my_5

my_48: 
store i32 0, i32* %my_1
br label %my_mainreturn_block

my_mainreturn_block: 
%my_49 = load i32, i32* %my_1
ret i32 %my_49
}
define void @Queue_int(%class.Queue_int* %my_1) {
my_Queue_int: 
%my_2 = alloca %class.Queue_int*
store %class.Queue_int* %my_1, %class.Queue_int** %my_2
%my_3 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_4 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_3, i32 0, i32 1
store i32 0, i32* %my_4
%my_5 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_6 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_5, i32 0, i32 2
store i32 0, i32* %my_6
%my_7 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_8 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_7, i32 0, i32 0
%my_9 = mul nsw i64 16, 4
%my_10 = add nsw i64 %my_9, 4
%my_11 = call i8* @malloc(i64 %my_10)
%my_12 = bitcast i8* %my_11 to i32*
store i32 16, i32* %my_12
%my_13 = getelementptr inbounds i32, i32* %my_12, i32 1
%my_14 = bitcast i32* %my_13 to i32*
%my_15 = bitcast i32* %my_14 to i32*
store i32* %my_15, i32** %my_8
br label %my_Queue_intreturn_block
my_Queue_intreturn_block: 
ret void
}
define void @classQueue_int_push(%class.Queue_int* %my_1, i32 %my_2) {
my_classQueue_int_push: 
%my_3 = alloca %class.Queue_int*
store %class.Queue_int* %my_1, %class.Queue_int** %my_3
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_6 = call i32 @classQueue_int_size(%class.Queue_int* %my_5)
%my_7 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_8 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_7, i32 0, i32 0
%my_9 = load i32*, i32** %my_8
%my_10 = bitcast i32* %my_9 to i32*
%my_11 = getelementptr inbounds i32, i32* %my_10, i8 -1
%my_12 = load i32, i32* %my_11
%my_13 = sub nsw i32 %my_12, 1
%my_14 = icmp eq i32 %my_6, %my_13
br i1 %my_14, label %my_15, label %my_18
my_15: 
%my_16 = load %class.Queue_int*, %class.Queue_int** %my_3
call void @classQueue_int_doubleStorage(%class.Queue_int* %my_16)
br label %my_18

my_18: 
%my_19 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_20 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_19, i32 0, i32 0
%my_21 = load i32*, i32** %my_20
%my_22 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_23 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_22, i32 0, i32 2
%my_24 = load i32, i32* %my_23
%my_25 = getelementptr inbounds i32, i32* %my_21, i32 %my_24
%my_26 = load i32, i32* %my_4
store i32 %my_26, i32* %my_25
%my_27 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_28 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_27, i32 0, i32 2
%my_29 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_30 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_29, i32 0, i32 2
%my_31 = load i32, i32* %my_30
%my_32 = add nsw i32 %my_31, 1
%my_33 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_34 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_33, i32 0, i32 0
%my_35 = load i32*, i32** %my_34
%my_36 = bitcast i32* %my_35 to i32*
%my_37 = getelementptr inbounds i32, i32* %my_36, i8 -1
%my_38 = load i32, i32* %my_37
%my_39 = srem i32 %my_32, %my_38
store i32 %my_39, i32* %my_28
br label %my_classQueue_int_pushreturn_block

my_classQueue_int_pushreturn_block: 
ret void
}
define i32 @classQueue_int_top(%class.Queue_int* %my_2) {
my_classQueue_int_top: 
%my_1 = alloca i32
%my_3 = alloca %class.Queue_int*
store %class.Queue_int* %my_2, %class.Queue_int** %my_3
%my_4 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_5 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_4, i32 0, i32 0
%my_6 = load i32*, i32** %my_5
%my_7 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_8 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_7, i32 0, i32 1
%my_9 = load i32, i32* %my_8
%my_10 = getelementptr inbounds i32, i32* %my_6, i32 %my_9
%my_11 = load i32, i32* %my_10
store i32 %my_11, i32* %my_1
br label %my_classQueue_int_topreturn_block
my_classQueue_int_topreturn_block: 
%my_12 = load i32, i32* %my_1
ret i32 %my_12
}
define i32 @classQueue_int_pop(%class.Queue_int* %my_2) {
my_classQueue_int_pop: 
%my_1 = alloca i32
%my_3 = alloca %class.Queue_int*
store %class.Queue_int* %my_2, %class.Queue_int** %my_3
%my_11 = alloca i32
%my_4 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_5 = call i32 @classQueue_int_size(%class.Queue_int* %my_4)
%my_6 = icmp eq i32 %my_5, 0
br i1 %my_6, label %my_7, label %my_10
my_7: 
%my_8 = bitcast [37 x i8]* @my_.str.0 to i8*
call void @println(i8* %my_8)
br label %my_10

my_10: 
%my_12 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_13 = call i32 @classQueue_int_top(%class.Queue_int* %my_12)
store i32 %my_13, i32* %my_11
%my_14 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_15 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_14, i32 0, i32 1
%my_16 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_17 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_16, i32 0, i32 1
%my_18 = load i32, i32* %my_17
%my_19 = add nsw i32 %my_18, 1
%my_20 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_21 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_20, i32 0, i32 0
%my_22 = load i32*, i32** %my_21
%my_23 = bitcast i32* %my_22 to i32*
%my_24 = getelementptr inbounds i32, i32* %my_23, i8 -1
%my_25 = load i32, i32* %my_24
%my_26 = srem i32 %my_19, %my_25
store i32 %my_26, i32* %my_15
%my_27 = load i32, i32* %my_11
store i32 %my_27, i32* %my_1
br label %my_classQueue_int_popreturn_block

my_classQueue_int_popreturn_block: 
%my_28 = load i32, i32* %my_1
ret i32 %my_28
}
define i32 @classQueue_int_size(%class.Queue_int* %my_2) {
my_classQueue_int_size: 
%my_1 = alloca i32
%my_3 = alloca %class.Queue_int*
store %class.Queue_int* %my_2, %class.Queue_int** %my_3
%my_4 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_5 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_4, i32 0, i32 2
%my_6 = load i32, i32* %my_5
%my_7 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_8 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_7, i32 0, i32 0
%my_9 = load i32*, i32** %my_8
%my_10 = bitcast i32* %my_9 to i32*
%my_11 = getelementptr inbounds i32, i32* %my_10, i8 -1
%my_12 = load i32, i32* %my_11
%my_13 = add nsw i32 %my_6, %my_12
%my_14 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_15 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_14, i32 0, i32 1
%my_16 = load i32, i32* %my_15
%my_17 = sub nsw i32 %my_13, %my_16
%my_18 = load %class.Queue_int*, %class.Queue_int** %my_3
%my_19 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_18, i32 0, i32 0
%my_20 = load i32*, i32** %my_19
%my_21 = bitcast i32* %my_20 to i32*
%my_22 = getelementptr inbounds i32, i32* %my_21, i8 -1
%my_23 = load i32, i32* %my_22
%my_24 = srem i32 %my_17, %my_23
store i32 %my_24, i32* %my_1
br label %my_classQueue_int_sizereturn_block
my_classQueue_int_sizereturn_block: 
%my_25 = load i32, i32* %my_1
ret i32 %my_25
}
define void @classQueue_int_doubleStorage(%class.Queue_int* %my_1) {
my_classQueue_int_doubleStorage: 
%my_2 = alloca %class.Queue_int*
store %class.Queue_int* %my_1, %class.Queue_int** %my_2
%my_3 = alloca i32*
%my_8 = alloca i32
%my_12 = alloca i32
%my_35 = alloca i32
%my_65 = alloca i32
%my_66 = alloca i32
%my_67 = alloca i32
%my_4 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_5 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_4, i32 0, i32 0
%my_6 = load i32*, i32** %my_5
%my_7 = bitcast i32* %my_6 to i32*
store i32* %my_7, i32** %my_3
%my_9 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_10 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_9, i32 0, i32 1
%my_11 = load i32, i32* %my_10
store i32 %my_11, i32* %my_8
%my_13 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_14 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_13, i32 0, i32 2
%my_15 = load i32, i32* %my_14
store i32 %my_15, i32* %my_12
%my_16 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_17 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_16, i32 0, i32 0
%my_18 = load i32*, i32** %my_3
%my_19 = bitcast i32* %my_18 to i32*
%my_20 = getelementptr inbounds i32, i32* %my_19, i8 -1
%my_21 = load i32, i32* %my_20
%my_22 = mul nsw i32 %my_21, 2
%my_23 = zext i32 %my_22 to i64
%my_24 = mul nsw i64 %my_23, 4
%my_25 = add nsw i64 %my_24, 4
%my_26 = call i8* @malloc(i64 %my_25)
%my_27 = bitcast i8* %my_26 to i32*
store i32 %my_22, i32* %my_27
%my_28 = getelementptr inbounds i32, i32* %my_27, i32 1
%my_29 = bitcast i32* %my_28 to i32*
%my_30 = bitcast i32* %my_29 to i32*
store i32* %my_30, i32** %my_17
%my_31 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_32 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_31, i32 0, i32 1
store i32 0, i32* %my_32
%my_33 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_34 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_33, i32 0, i32 2
store i32 0, i32* %my_34
%my_36 = load i32, i32* %my_8
store i32 %my_36, i32* %my_35
br label %my_37
my_37: 
%my_38 = load i32, i32* %my_35
%my_39 = load i32, i32* %my_12
%my_40 = icmp ne i32 %my_38, %my_39
br i1 %my_40, label %my_41, label %my_64

my_41: 
%my_42 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_43 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_42, i32 0, i32 0
%my_44 = load i32*, i32** %my_43
%my_45 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_46 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_45, i32 0, i32 2
%my_47 = load i32, i32* %my_46
%my_48 = getelementptr inbounds i32, i32* %my_44, i32 %my_47
%my_49 = load i32*, i32** %my_3
%my_50 = load i32, i32* %my_35
%my_51 = getelementptr inbounds i32, i32* %my_49, i32 %my_50
%my_52 = load i32, i32* %my_51
store i32 %my_52, i32* %my_48
%my_53 = load %class.Queue_int*, %class.Queue_int** %my_2
%my_54 = getelementptr inbounds %class.Queue_int, %class.Queue_int* %my_53, i32 0, i32 2
%my_55 = load i32, i32* %my_54
%my_56 = add nsw i32 %my_55, 1
store i32 %my_56, i32* %my_54
%my_57 = load i32, i32* %my_35
%my_58 = add nsw i32 %my_57, 1
%my_59 = load i32*, i32** %my_3
%my_60 = bitcast i32* %my_59 to i32*
%my_61 = getelementptr inbounds i32, i32* %my_60, i8 -1
%my_62 = load i32, i32* %my_61
%my_63 = srem i32 %my_58, %my_62
store i32 %my_63, i32* %my_35
br label %my_37

my_64: 
br label %my_classQueue_int_doubleStoragereturn_block

my_classQueue_int_doubleStoragereturn_block: 
ret void
}
define void @Edge(%class.Edge* %my_1) {
my_Edge: 
%my_2 = alloca %class.Edge*
store %class.Edge* %my_1, %class.Edge** %my_2
br label %my_Edgereturn_block
my_Edgereturn_block: 
ret void
}
define void @EdgeList(%class.EdgeList* %my_1) {
my_EdgeList: 
%my_2 = alloca %class.EdgeList*
store %class.EdgeList* %my_1, %class.EdgeList** %my_2
br label %my_EdgeListreturn_block
my_EdgeListreturn_block: 
ret void
}
define void @classEdgeList_init(%class.EdgeList* %my_1, i32 %my_2, i32 %my_3) {
my_classEdgeList_init: 
%my_4 = alloca %class.EdgeList*
store %class.EdgeList* %my_1, %class.EdgeList** %my_4
%my_5 = alloca i32
store i32 %my_2, i32* %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_40 = alloca i32
%my_7 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_8 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_7, i32 0, i32 0
%my_9 = load i32, i32* %my_6
%my_10 = zext i32 %my_9 to i64
%my_11 = mul nsw i64 %my_10, 12
%my_12 = add nsw i64 %my_11, 4
%my_13 = call i8* @malloc(i64 %my_12)
%my_14 = bitcast i8* %my_13 to i32*
store i32 %my_9, i32* %my_14
%my_15 = getelementptr inbounds i32, i32* %my_14, i32 1
%my_16 = bitcast i32* %my_15 to %class.Edge**
%my_17 = bitcast %class.Edge** %my_16 to %class.Edge**
store %class.Edge** %my_17, %class.Edge*** %my_8
%my_18 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_19 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_18, i32 0, i32 1
%my_20 = load i32, i32* %my_6
%my_21 = zext i32 %my_20 to i64
%my_22 = mul nsw i64 %my_21, 4
%my_23 = add nsw i64 %my_22, 4
%my_24 = call i8* @malloc(i64 %my_23)
%my_25 = bitcast i8* %my_24 to i32*
store i32 %my_20, i32* %my_25
%my_26 = getelementptr inbounds i32, i32* %my_25, i32 1
%my_27 = bitcast i32* %my_26 to i32*
%my_28 = bitcast i32* %my_27 to i32*
store i32* %my_28, i32** %my_19
%my_29 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_30 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_29, i32 0, i32 2
%my_31 = load i32, i32* %my_5
%my_32 = zext i32 %my_31 to i64
%my_33 = mul nsw i64 %my_32, 4
%my_34 = add nsw i64 %my_33, 4
%my_35 = call i8* @malloc(i64 %my_34)
%my_36 = bitcast i8* %my_35 to i32*
store i32 %my_31, i32* %my_36
%my_37 = getelementptr inbounds i32, i32* %my_36, i32 1
%my_38 = bitcast i32* %my_37 to i32*
%my_39 = bitcast i32* %my_38 to i32*
store i32* %my_39, i32** %my_30
store i32 0, i32* %my_40
br label %my_41
my_41: 
%my_42 = load i32, i32* %my_40
%my_43 = load i32, i32* %my_6
%my_44 = icmp slt i32 %my_42, %my_43
br i1 %my_44, label %my_45, label %my_55

my_45: 
%my_46 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_47 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_46, i32 0, i32 1
%my_48 = load i32*, i32** %my_47
%my_49 = load i32, i32* %my_40
%my_50 = getelementptr inbounds i32, i32* %my_48, i32 %my_49
%my_51 = sub nsw i32 0, 1
store i32 %my_51, i32* %my_50
br label %my_52

my_52: 
%my_53 = load i32, i32* %my_40
%my_54 = add nsw i32 %my_53, 1
store i32 %my_54, i32* %my_40
br label %my_41

my_55: 
store i32 0, i32* %my_40
br label %my_56

my_56: 
%my_57 = load i32, i32* %my_40
%my_58 = load i32, i32* %my_5
%my_59 = icmp slt i32 %my_57, %my_58
br i1 %my_59, label %my_60, label %my_70

my_60: 
%my_61 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_62 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_61, i32 0, i32 2
%my_63 = load i32*, i32** %my_62
%my_64 = load i32, i32* %my_40
%my_65 = getelementptr inbounds i32, i32* %my_63, i32 %my_64
%my_66 = sub nsw i32 0, 1
store i32 %my_66, i32* %my_65
br label %my_67

my_67: 
%my_68 = load i32, i32* %my_40
%my_69 = add nsw i32 %my_68, 1
store i32 %my_69, i32* %my_40
br label %my_56

my_70: 
%my_71 = load %class.EdgeList*, %class.EdgeList** %my_4
%my_72 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_71, i32 0, i32 3
store i32 0, i32* %my_72
br label %my_classEdgeList_initreturn_block

my_classEdgeList_initreturn_block: 
ret void
}
define void @classEdgeList_addEdge(%class.EdgeList* %my_1, i32 %my_2, i32 %my_3, i32 %my_4) {
my_classEdgeList_addEdge: 
%my_5 = alloca %class.EdgeList*
store %class.EdgeList* %my_1, %class.EdgeList** %my_5
%my_6 = alloca i32
store i32 %my_2, i32* %my_6
%my_7 = alloca i32
store i32 %my_3, i32* %my_7
%my_8 = alloca i32
store i32 %my_4, i32* %my_8
%my_9 = alloca %class.Edge*
%my_10 = call i8* @malloc(i64 12)
%my_11 = bitcast i8* %my_10 to %class.Edge*
call void @Edge(%class.Edge* %my_11)
%my_12 = bitcast %class.Edge* %my_11 to %class.Edge*
store %class.Edge* %my_12, %class.Edge** %my_9
%my_13 = load %class.Edge*, %class.Edge** %my_9
%my_14 = getelementptr inbounds %class.Edge, %class.Edge* %my_13, i32 0, i32 0
%my_15 = load i32, i32* %my_6
store i32 %my_15, i32* %my_14
%my_16 = load %class.Edge*, %class.Edge** %my_9
%my_17 = getelementptr inbounds %class.Edge, %class.Edge* %my_16, i32 0, i32 1
%my_18 = load i32, i32* %my_7
store i32 %my_18, i32* %my_17
%my_19 = load %class.Edge*, %class.Edge** %my_9
%my_20 = getelementptr inbounds %class.Edge, %class.Edge* %my_19, i32 0, i32 2
%my_21 = load i32, i32* %my_8
store i32 %my_21, i32* %my_20
%my_22 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_23 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_22, i32 0, i32 0
%my_24 = load %class.Edge**, %class.Edge*** %my_23
%my_25 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_26 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_25, i32 0, i32 3
%my_27 = load i32, i32* %my_26
%my_28 = getelementptr inbounds %class.Edge*, %class.Edge** %my_24, i32 %my_27
%my_29 = load %class.Edge*, %class.Edge** %my_9
%my_30 = bitcast %class.Edge* %my_29 to %class.Edge*
store %class.Edge* %my_30, %class.Edge** %my_28
%my_31 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_32 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_31, i32 0, i32 1
%my_33 = load i32*, i32** %my_32
%my_34 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_35 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_34, i32 0, i32 3
%my_36 = load i32, i32* %my_35
%my_37 = getelementptr inbounds i32, i32* %my_33, i32 %my_36
%my_38 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_39 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_38, i32 0, i32 2
%my_40 = load i32*, i32** %my_39
%my_41 = load i32, i32* %my_6
%my_42 = getelementptr inbounds i32, i32* %my_40, i32 %my_41
%my_43 = load i32, i32* %my_42
store i32 %my_43, i32* %my_37
%my_44 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_45 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_44, i32 0, i32 2
%my_46 = load i32*, i32** %my_45
%my_47 = load i32, i32* %my_6
%my_48 = getelementptr inbounds i32, i32* %my_46, i32 %my_47
%my_49 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_50 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_49, i32 0, i32 3
%my_51 = load i32, i32* %my_50
store i32 %my_51, i32* %my_48
%my_52 = load %class.EdgeList*, %class.EdgeList** %my_5
%my_53 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_52, i32 0, i32 3
%my_54 = load i32, i32* %my_53
%my_55 = add nsw i32 %my_54, 1
store i32 %my_55, i32* %my_53
br label %my_classEdgeList_addEdgereturn_block
my_classEdgeList_addEdgereturn_block: 
ret void
}
define i32 @classEdgeList_nVertices(%class.EdgeList* %my_2) {
my_classEdgeList_nVertices: 
%my_1 = alloca i32
%my_3 = alloca %class.EdgeList*
store %class.EdgeList* %my_2, %class.EdgeList** %my_3
%my_4 = load %class.EdgeList*, %class.EdgeList** %my_3
%my_5 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_4, i32 0, i32 2
%my_6 = load i32*, i32** %my_5
%my_7 = bitcast i32* %my_6 to i32*
%my_8 = getelementptr inbounds i32, i32* %my_7, i8 -1
%my_9 = load i32, i32* %my_8
store i32 %my_9, i32* %my_1
br label %my_classEdgeList_nVerticesreturn_block
my_classEdgeList_nVerticesreturn_block: 
%my_10 = load i32, i32* %my_1
ret i32 %my_10
}
define i32 @classEdgeList_nEdges(%class.EdgeList* %my_2) {
my_classEdgeList_nEdges: 
%my_1 = alloca i32
%my_3 = alloca %class.EdgeList*
store %class.EdgeList* %my_2, %class.EdgeList** %my_3
%my_4 = load %class.EdgeList*, %class.EdgeList** %my_3
%my_5 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_4, i32 0, i32 0
%my_6 = load %class.Edge**, %class.Edge*** %my_5
%my_7 = bitcast %class.Edge** %my_6 to i32*
%my_8 = getelementptr inbounds i32, i32* %my_7, i8 -1
%my_9 = load i32, i32* %my_8
store i32 %my_9, i32* %my_1
br label %my_classEdgeList_nEdgesreturn_block
my_classEdgeList_nEdgesreturn_block: 
%my_10 = load i32, i32* %my_1
ret i32 %my_10
}
define void @init() {
my_init: 
%my_10 = alloca i32
%my_16 = alloca i32
%my_18 = alloca i32
%my_20 = alloca i32
%my_1 = call i32 @getInt()
store i32 %my_1, i32* @my_n
%my_2 = call i32 @getInt()
store i32 %my_2, i32* @my_m
%my_3 = call i8* @malloc(i64 28)
%my_4 = bitcast i8* %my_3 to %class.EdgeList*
call void @EdgeList(%class.EdgeList* %my_4)
%my_5 = bitcast %class.EdgeList* %my_4 to %class.EdgeList*
store %class.EdgeList* %my_5, %class.EdgeList** @my_g
%my_6 = load %class.EdgeList*, %class.EdgeList** @my_g
%my_7 = load i32, i32* @my_n
%my_8 = load i32, i32* @my_m
call void @classEdgeList_init(%class.EdgeList* %my_6,i32 %my_7,i32 %my_8)
store i32 0, i32* %my_10
br label %my_11
my_11: 
%my_12 = load i32, i32* %my_10
%my_13 = load i32, i32* @my_m
%my_14 = icmp slt i32 %my_12, %my_13
br i1 %my_14, label %my_15, label %my_30

my_15: 
%my_17 = call i32 @getInt()
store i32 %my_17, i32* %my_16
%my_19 = call i32 @getInt()
store i32 %my_19, i32* %my_18
%my_21 = call i32 @getInt()
store i32 %my_21, i32* %my_20
%my_22 = load %class.EdgeList*, %class.EdgeList** @my_g
%my_23 = load i32, i32* %my_16
%my_24 = load i32, i32* %my_18
%my_25 = load i32, i32* %my_20
call void @classEdgeList_addEdge(%class.EdgeList* %my_22,i32 %my_23,i32 %my_24,i32 %my_25)
br label %my_27

my_27: 
%my_28 = load i32, i32* %my_10
%my_29 = add nsw i32 %my_28, 1
store i32 %my_29, i32* %my_10
br label %my_11

my_30: 
br label %my_initreturn_block

my_initreturn_block: 
ret void
}
define i32* @spfa(i32 %my_2) {
my_spfa: 
%my_1 = alloca i32*
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = alloca i32*
%my_14 = alloca i32
%my_31 = alloca %class.Queue_int*
%my_43 = alloca i32
%my_46 = alloca i32
%my_58 = alloca %class.Edge*
%my_66 = alloca i32
%my_5 = load i32, i32* @my_n
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
%my_17 = load i32, i32* @my_n
%my_18 = icmp slt i32 %my_16, %my_17
br i1 %my_18, label %my_19, label %my_27

my_19: 
%my_20 = load i32*, i32** %my_4
%my_21 = load i32, i32* %my_14
%my_22 = getelementptr inbounds i32, i32* %my_20, i32 %my_21
%my_23 = load i32, i32* @my_INF
store i32 %my_23, i32* %my_22
br label %my_24

my_24: 
%my_25 = load i32, i32* %my_14
%my_26 = add nsw i32 %my_25, 1
store i32 %my_26, i32* %my_14
br label %my_15

my_27: 
%my_28 = load i32*, i32** %my_4
%my_29 = load i32, i32* %my_3
%my_30 = getelementptr inbounds i32, i32* %my_28, i32 %my_29
store i32 0, i32* %my_30
%my_32 = call i8* @malloc(i64 16)
%my_33 = bitcast i8* %my_32 to %class.Queue_int*
call void @Queue_int(%class.Queue_int* %my_33)
%my_34 = bitcast %class.Queue_int* %my_33 to %class.Queue_int*
store %class.Queue_int* %my_34, %class.Queue_int** %my_31
%my_35 = load %class.Queue_int*, %class.Queue_int** %my_31
%my_36 = load i32, i32* %my_3
call void @classQueue_int_push(%class.Queue_int* %my_35,i32 %my_36)
br label %my_38

my_38: 
%my_39 = load %class.Queue_int*, %class.Queue_int** %my_31
%my_40 = call i32 @classQueue_int_size(%class.Queue_int* %my_39)
%my_41 = icmp ne i32 %my_40, 0
br i1 %my_41, label %my_42, label %my_107

my_42: 
%my_44 = load %class.Queue_int*, %class.Queue_int** %my_31
%my_45 = call i32 @classQueue_int_pop(%class.Queue_int* %my_44)
store i32 %my_45, i32* %my_43
%my_47 = load %class.EdgeList*, %class.EdgeList** @my_g
%my_48 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_47, i32 0, i32 2
%my_49 = load i32*, i32** %my_48
%my_50 = load i32, i32* %my_43
%my_51 = getelementptr inbounds i32, i32* %my_49, i32 %my_50
%my_52 = load i32, i32* %my_51
store i32 %my_52, i32* %my_46
br label %my_53

my_53: 
%my_54 = load i32, i32* %my_46
%my_55 = sub nsw i32 0, 1
%my_56 = icmp ne i32 %my_54, %my_55
br i1 %my_56, label %my_57, label %my_106

my_57: 
%my_59 = load %class.EdgeList*, %class.EdgeList** @my_g
%my_60 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_59, i32 0, i32 0
%my_61 = load %class.Edge**, %class.Edge*** %my_60
%my_62 = load i32, i32* %my_46
%my_63 = getelementptr inbounds %class.Edge*, %class.Edge** %my_61, i32 %my_62
%my_64 = load %class.Edge*, %class.Edge** %my_63
%my_65 = bitcast %class.Edge* %my_64 to %class.Edge*
store %class.Edge* %my_65, %class.Edge** %my_58
%my_67 = load %class.Edge*, %class.Edge** %my_58
%my_68 = getelementptr inbounds %class.Edge, %class.Edge* %my_67, i32 0, i32 1
%my_69 = load i32, i32* %my_68
store i32 %my_69, i32* %my_66
%my_70 = load i32*, i32** %my_4
%my_71 = load i32, i32* %my_66
%my_72 = getelementptr inbounds i32, i32* %my_70, i32 %my_71
%my_73 = load i32, i32* %my_72
%my_74 = load i32*, i32** %my_4
%my_75 = load i32, i32* %my_43
%my_76 = getelementptr inbounds i32, i32* %my_74, i32 %my_75
%my_77 = load i32, i32* %my_76
%my_78 = load %class.Edge*, %class.Edge** %my_58
%my_79 = getelementptr inbounds %class.Edge, %class.Edge* %my_78, i32 0, i32 2
%my_80 = load i32, i32* %my_79
%my_81 = add nsw i32 %my_77, %my_80
%my_82 = icmp sgt i32 %my_73, %my_81
br i1 %my_82, label %my_83, label %my_98

my_83: 
%my_84 = load i32*, i32** %my_4
%my_85 = load i32, i32* %my_66
%my_86 = getelementptr inbounds i32, i32* %my_84, i32 %my_85
%my_87 = load i32*, i32** %my_4
%my_88 = load i32, i32* %my_43
%my_89 = getelementptr inbounds i32, i32* %my_87, i32 %my_88
%my_90 = load i32, i32* %my_89
%my_91 = load %class.Edge*, %class.Edge** %my_58
%my_92 = getelementptr inbounds %class.Edge, %class.Edge* %my_91, i32 0, i32 2
%my_93 = load i32, i32* %my_92
%my_94 = add nsw i32 %my_90, %my_93
store i32 %my_94, i32* %my_86
%my_95 = load %class.Queue_int*, %class.Queue_int** %my_31
%my_96 = load i32, i32* %my_66
call void @classQueue_int_push(%class.Queue_int* %my_95,i32 %my_96)
br label %my_98

my_98: 
br label %my_99

my_99: 
%my_100 = load %class.EdgeList*, %class.EdgeList** @my_g
%my_101 = getelementptr inbounds %class.EdgeList, %class.EdgeList* %my_100, i32 0, i32 1
%my_102 = load i32*, i32** %my_101
%my_103 = load i32, i32* %my_46
%my_104 = getelementptr inbounds i32, i32* %my_102, i32 %my_103
%my_105 = load i32, i32* %my_104
store i32 %my_105, i32* %my_46
br label %my_53

my_106: 
br label %my_38

my_107: 
%my_108 = load i32*, i32** %my_4
%my_109 = bitcast i32* %my_108 to i32*
store i32* %my_109, i32** %my_1
br label %my_spfareturn_block

my_spfareturn_block: 
%my_110 = load i32*, i32** %my_1
ret i32* %my_110
}


