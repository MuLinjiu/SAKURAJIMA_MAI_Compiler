%class.Node = type { %class.Node*, %class.Node**, i32, i32 }
@my_root = global %class.Node* null
@my_.str.0 = private constant [3 x i8] c": \00"
@my_MAX = global i32 128
@my_MaxRandInt = global i32 0
@my_seed = global i32 0

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
define void @Node(%class.Node* %my_1) {
my_Node: 
%my_2 = alloca %class.Node*
store %class.Node* %my_1, %class.Node** %my_2
br label %my_Nodereturn_block
my_Nodereturn_block: 
ret void
}
define %class.Node* @constructNode(i32 %my_2, %class.Node* %my_3, %class.Node* %my_4, %class.Node* %my_5) {
my_constructNode: 
%my_1 = alloca %class.Node*
%my_6 = alloca i32
store i32 %my_2, i32* %my_6
%my_7 = alloca %class.Node*
store %class.Node* %my_3, %class.Node** %my_7
%my_8 = alloca %class.Node*
store %class.Node* %my_4, %class.Node** %my_8
%my_9 = alloca %class.Node*
store %class.Node* %my_5, %class.Node** %my_9
%my_10 = alloca %class.Node*
%my_11 = call i8* @malloc(i64 24)
%my_12 = bitcast i8* %my_11 to %class.Node*
call void @Node(%class.Node* %my_12)
%my_13 = bitcast %class.Node* %my_12 to %class.Node*
store %class.Node* %my_13, %class.Node** %my_10
%my_14 = load %class.Node*, %class.Node** %my_10
%my_15 = getelementptr inbounds %class.Node, %class.Node* %my_14, i32 0, i32 1
%my_16 = mul nsw i64 2, 24
%my_17 = add nsw i64 %my_16, 4
%my_18 = call i8* @malloc(i64 %my_17)
%my_19 = bitcast i8* %my_18 to i32*
store i32 2, i32* %my_19
%my_20 = getelementptr inbounds i32, i32* %my_19, i32 1
%my_21 = bitcast i32* %my_20 to %class.Node**
%my_22 = bitcast %class.Node** %my_21 to %class.Node**
store %class.Node** %my_22, %class.Node*** %my_15
%my_23 = load %class.Node*, %class.Node** %my_10
%my_24 = getelementptr inbounds %class.Node, %class.Node* %my_23, i32 0, i32 2
%my_25 = load i32, i32* %my_6
store i32 %my_25, i32* %my_24
%my_26 = load %class.Node*, %class.Node** %my_10
%my_27 = getelementptr inbounds %class.Node, %class.Node* %my_26, i32 0, i32 3
store i32 1, i32* %my_27
%my_28 = load %class.Node*, %class.Node** %my_10
%my_29 = getelementptr inbounds %class.Node, %class.Node* %my_28, i32 0, i32 0
%my_30 = load %class.Node*, %class.Node** %my_7
%my_31 = bitcast %class.Node* %my_30 to %class.Node*
store %class.Node* %my_31, %class.Node** %my_29
%my_32 = load %class.Node*, %class.Node** %my_10
%my_33 = getelementptr inbounds %class.Node, %class.Node* %my_32, i32 0, i32 1
%my_34 = load %class.Node**, %class.Node*** %my_33
%my_35 = getelementptr inbounds %class.Node*, %class.Node** %my_34, i32 0
%my_36 = load %class.Node*, %class.Node** %my_8
%my_37 = bitcast %class.Node* %my_36 to %class.Node*
store %class.Node* %my_37, %class.Node** %my_35
%my_38 = load %class.Node*, %class.Node** %my_10
%my_39 = getelementptr inbounds %class.Node, %class.Node* %my_38, i32 0, i32 1
%my_40 = load %class.Node**, %class.Node*** %my_39
%my_41 = getelementptr inbounds %class.Node*, %class.Node** %my_40, i32 1
%my_42 = load %class.Node*, %class.Node** %my_9
%my_43 = bitcast %class.Node* %my_42 to %class.Node*
store %class.Node* %my_43, %class.Node** %my_41
%my_44 = load %class.Node*, %class.Node** %my_10
%my_45 = bitcast %class.Node* %my_44 to %class.Node*
store %class.Node* %my_45, %class.Node** %my_1
br label %my_constructNodereturn_block
my_constructNodereturn_block: 
%my_46 = load %class.Node*, %class.Node** %my_1
ret %class.Node* %my_46
}
define i32 @main() {
my_main: 
%my_3 = alloca i32
store i32 0, i32* %my_3
%my_5 = alloca i32
store %class.Node* null, %class.Node** @my_root
%my_1 = shl i32 1, 31
%my_2 = xor i32 -1, %my_1
store i32 %my_2, i32* @my_MaxRandInt
%my_4 = call i32 @getInt()
store i32 %my_4, i32* @my_seed
store i32 50000, i32* %my_5
%my_6 = load i32, i32* @my_MaxRandInt
%my_7 = sdiv i32 %my_6, 10
%my_8 = mul nsw i32 8, %my_7
%my_9 = load i32, i32* %my_5
call void @generateOperations(i32 %my_8,i32 %my_9)
%my_11 = load i32, i32* @my_MaxRandInt
%my_12 = sdiv i32 %my_11, 10
%my_13 = mul nsw i32 2, %my_12
%my_14 = load i32, i32* %my_5
%my_15 = mul nsw i32 2, %my_14
call void @generateOperations(i32 %my_13,i32 %my_15)
%my_17 = load i32, i32* @my_MaxRandInt
%my_18 = sdiv i32 %my_17, 10
%my_19 = mul nsw i32 4, %my_18
%my_20 = load i32, i32* %my_5
call void @generateOperations(i32 %my_19,i32 %my_20)
%my_22 = load %class.Node*, %class.Node** @my_root
%my_23 = bitcast %class.Node* %my_22 to %class.Node*
call void @printTree(%class.Node* %my_23)
store i32 0, i32* %my_3
br label %my_mainreturn_block
my_mainreturn_block: 
%my_25 = load i32, i32* %my_3
ret i32 %my_25
}
define i32 @insertImpl(%class.Node* %my_2, %class.Node* %my_3, i32 %my_4, i32 %my_5) {
my_insertImpl: 
%my_1 = alloca i32
%my_6 = alloca %class.Node*
store %class.Node* %my_2, %class.Node** %my_6
%my_7 = alloca %class.Node*
store %class.Node* %my_3, %class.Node** %my_7
%my_8 = alloca i32
store i32 %my_4, i32* %my_8
%my_9 = alloca i32
store i32 %my_5, i32* %my_9
%my_37 = alloca i32
%my_10 = load %class.Node*, %class.Node** %my_6
%my_11 = icmp eq %class.Node* %my_10, null
br i1 %my_11, label %my_insertImpl_12, label %my_insertImpl_25
my_insertImpl_12: 
%my_13 = load i32, i32* %my_9
%my_14 = load %class.Node*, %class.Node** %my_7
%my_15 = bitcast %class.Node* %my_14 to %class.Node*
%my_16 = call %class.Node* @constructNode(i32 %my_13,%class.Node* %my_15,MIR.NULL_PTR@34033bd0 null,MIR.NULL_PTR@47fd17e3 null)
%my_17 = bitcast %class.Node* %my_16 to %class.Node*
store %class.Node* %my_17, %class.Node** %my_6
%my_18 = load %class.Node*, %class.Node** %my_7
%my_19 = getelementptr inbounds %class.Node, %class.Node* %my_18, i32 0, i32 1
%my_20 = load %class.Node**, %class.Node*** %my_19
%my_21 = load i32, i32* %my_8
%my_22 = getelementptr inbounds %class.Node*, %class.Node** %my_20, i32 %my_21
%my_23 = load %class.Node*, %class.Node** %my_6
%my_24 = bitcast %class.Node* %my_23 to %class.Node*
store %class.Node* %my_24, %class.Node** %my_22
store i32 0, i32* %my_1
br label %my_insertImplreturn_block

my_insertImpl_25: 
%my_26 = load %class.Node*, %class.Node** %my_6
%my_27 = getelementptr inbounds %class.Node, %class.Node* %my_26, i32 0, i32 2
%my_28 = load i32, i32* %my_27
%my_29 = load i32, i32* %my_9
%my_30 = icmp eq i32 %my_28, %my_29
br i1 %my_30, label %my_insertImpl_31, label %my_insertImpl_36

my_insertImpl_31: 
%my_32 = load %class.Node*, %class.Node** %my_6
%my_33 = getelementptr inbounds %class.Node, %class.Node* %my_32, i32 0, i32 3
%my_34 = load i32, i32* %my_33
%my_35 = add nsw i32 %my_34, 1
store i32 %my_35, i32* %my_33
store i32 1, i32* %my_1
br label %my_insertImplreturn_block

my_insertImpl_36: 
store i32 0, i32* %my_37
%my_38 = load %class.Node*, %class.Node** %my_6
%my_39 = getelementptr inbounds %class.Node, %class.Node* %my_38, i32 0, i32 2
%my_40 = load i32, i32* %my_39
%my_41 = load i32, i32* %my_9
%my_42 = icmp slt i32 %my_40, %my_41
br i1 %my_42, label %my_insertImpl_43, label %my_insertImpl_44

my_insertImpl_43: 
store i32 1, i32* %my_37
br label %my_insertImpl_44

my_insertImpl_44: 
%my_45 = load %class.Node*, %class.Node** %my_6
%my_46 = getelementptr inbounds %class.Node, %class.Node* %my_45, i32 0, i32 1
%my_47 = load %class.Node**, %class.Node*** %my_46
%my_48 = load i32, i32* %my_37
%my_49 = getelementptr inbounds %class.Node*, %class.Node** %my_47, i32 %my_48
%my_50 = load %class.Node*, %class.Node** %my_49
%my_51 = bitcast %class.Node* %my_50 to %class.Node*
%my_52 = load %class.Node*, %class.Node** %my_6
%my_53 = bitcast %class.Node* %my_52 to %class.Node*
%my_54 = load i32, i32* %my_37
%my_55 = load i32, i32* %my_9
%my_56 = call i32 @insertImpl(%class.Node* %my_51,%class.Node* %my_53,i32 %my_54,i32 %my_55)
store i32 %my_56, i32* %my_1
br label %my_insertImplreturn_block

my_insertImplreturn_block: 
%my_57 = load i32, i32* %my_1
ret i32 %my_57
}
define i32 @insert(i32 %my_2) {
my_insert: 
%my_1 = alloca i32
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = load %class.Node*, %class.Node** @my_root
%my_5 = icmp ne %class.Node* %my_4, null
br i1 %my_5, label %my_insert_6, label %my_insert_12
my_insert_6: 
%my_7 = load %class.Node*, %class.Node** @my_root
%my_8 = bitcast %class.Node* %my_7 to %class.Node*
%my_9 = sub nsw i32 0, 1
%my_10 = load i32, i32* %my_3
%my_11 = call i32 @insertImpl(%class.Node* %my_8,MIR.NULL_PTR@7cdbc5d3 null,i32 %my_9,i32 %my_10)
store i32 %my_11, i32* %my_1
br label %my_insertreturn_block

my_insert_12: 
%my_13 = load i32, i32* %my_3
%my_14 = call %class.Node* @constructNode(i32 %my_13,MIR.NULL_PTR@3aa9e816 null,MIR.NULL_PTR@17d99928 null,MIR.NULL_PTR@3834d63f null)
%my_15 = bitcast %class.Node* %my_14 to %class.Node*
store %class.Node* %my_15, %class.Node** @my_root
store i32 0, i32* %my_1
br label %my_insertreturn_block

my_insertreturn_block: 
%my_16 = load i32, i32* %my_1
ret i32 %my_16
}
define %class.Node* @findLargest(%class.Node* %my_2) {
my_findLargest: 
%my_1 = alloca %class.Node*
%my_3 = alloca %class.Node*
store %class.Node* %my_2, %class.Node** %my_3
%my_4 = load %class.Node*, %class.Node** %my_3
%my_5 = getelementptr inbounds %class.Node, %class.Node* %my_4, i32 0, i32 1
%my_6 = load %class.Node**, %class.Node*** %my_5
%my_7 = getelementptr inbounds %class.Node*, %class.Node** %my_6, i32 1
%my_8 = load %class.Node*, %class.Node** %my_7
%my_9 = icmp eq %class.Node* %my_8, null
br i1 %my_9, label %my_findLargest_10, label %my_findLargest_13
my_findLargest_10: 
%my_11 = load %class.Node*, %class.Node** %my_3
%my_12 = bitcast %class.Node* %my_11 to %class.Node*
store %class.Node* %my_12, %class.Node** %my_1
br label %my_findLargestreturn_block

my_findLargest_13: 
%my_14 = load %class.Node*, %class.Node** %my_3
%my_15 = getelementptr inbounds %class.Node, %class.Node* %my_14, i32 0, i32 1
%my_16 = load %class.Node**, %class.Node*** %my_15
%my_17 = getelementptr inbounds %class.Node*, %class.Node** %my_16, i32 1
%my_18 = load %class.Node*, %class.Node** %my_17
%my_19 = bitcast %class.Node* %my_18 to %class.Node*
%my_20 = call %class.Node* @findLargest(%class.Node* %my_19)
%my_21 = bitcast %class.Node* %my_20 to %class.Node*
store %class.Node* %my_21, %class.Node** %my_1
br label %my_findLargestreturn_block

my_findLargestreturn_block: 
%my_22 = load %class.Node*, %class.Node** %my_1
ret %class.Node* %my_22
}
define i32 @eraseImpl(%class.Node* %my_2, %class.Node* %my_3, i32 %my_4, i32 %my_5) {
my_eraseImpl: 
%my_1 = alloca i32
%my_6 = alloca %class.Node*
store %class.Node* %my_2, %class.Node** %my_6
%my_7 = alloca %class.Node*
store %class.Node* %my_3, %class.Node** %my_7
%my_8 = alloca i32
store i32 %my_4, i32* %my_8
%my_9 = alloca i32
store i32 %my_5, i32* %my_9
%my_110 = alloca %class.Node*
%my_10 = load %class.Node*, %class.Node** %my_6
%my_11 = icmp eq %class.Node* %my_10, null
br i1 %my_11, label %my_eraseImpl_12, label %my_eraseImpl_13
my_eraseImpl_12: 
store i32 0, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImpl_13: 
%my_14 = load %class.Node*, %class.Node** %my_6
%my_15 = getelementptr inbounds %class.Node, %class.Node* %my_14, i32 0, i32 2
%my_16 = load i32, i32* %my_15
%my_17 = load i32, i32* %my_9
%my_18 = icmp sgt i32 %my_16, %my_17
br i1 %my_18, label %my_eraseImpl_19, label %my_eraseImpl_30

my_eraseImpl_19: 
%my_20 = load %class.Node*, %class.Node** %my_6
%my_21 = getelementptr inbounds %class.Node, %class.Node* %my_20, i32 0, i32 1
%my_22 = load %class.Node**, %class.Node*** %my_21
%my_23 = getelementptr inbounds %class.Node*, %class.Node** %my_22, i32 0
%my_24 = load %class.Node*, %class.Node** %my_23
%my_25 = bitcast %class.Node* %my_24 to %class.Node*
%my_26 = load %class.Node*, %class.Node** %my_6
%my_27 = bitcast %class.Node* %my_26 to %class.Node*
%my_28 = load i32, i32* %my_9
%my_29 = call i32 @eraseImpl(%class.Node* %my_25,%class.Node* %my_27,i32 0,i32 %my_28)
store i32 %my_29, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImpl_30: 
%my_31 = load %class.Node*, %class.Node** %my_6
%my_32 = getelementptr inbounds %class.Node, %class.Node* %my_31, i32 0, i32 2
%my_33 = load i32, i32* %my_32
%my_34 = load i32, i32* %my_9
%my_35 = icmp slt i32 %my_33, %my_34
br i1 %my_35, label %my_eraseImpl_36, label %my_eraseImpl_47

my_eraseImpl_36: 
%my_37 = load %class.Node*, %class.Node** %my_6
%my_38 = getelementptr inbounds %class.Node, %class.Node* %my_37, i32 0, i32 1
%my_39 = load %class.Node**, %class.Node*** %my_38
%my_40 = getelementptr inbounds %class.Node*, %class.Node** %my_39, i32 1
%my_41 = load %class.Node*, %class.Node** %my_40
%my_42 = bitcast %class.Node* %my_41 to %class.Node*
%my_43 = load %class.Node*, %class.Node** %my_6
%my_44 = bitcast %class.Node* %my_43 to %class.Node*
%my_45 = load i32, i32* %my_9
%my_46 = call i32 @eraseImpl(%class.Node* %my_42,%class.Node* %my_44,i32 1,i32 %my_45)
store i32 %my_46, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImpl_47: 
%my_48 = load %class.Node*, %class.Node** %my_6
%my_49 = getelementptr inbounds %class.Node, %class.Node* %my_48, i32 0, i32 3
%my_50 = load i32, i32* %my_49
%my_51 = add nsw i32 %my_50, -1
store i32 %my_51, i32* %my_49
%my_52 = load %class.Node*, %class.Node** %my_6
%my_53 = getelementptr inbounds %class.Node, %class.Node* %my_52, i32 0, i32 3
%my_54 = load i32, i32* %my_53
%my_55 = icmp sgt i32 %my_54, 0
br i1 %my_55, label %my_eraseImpl_56, label %my_eraseImpl_57

my_eraseImpl_56: 
store i32 1, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImpl_57: 
%my_58 = load %class.Node*, %class.Node** %my_6
%my_59 = getelementptr inbounds %class.Node, %class.Node* %my_58, i32 0, i32 1
%my_60 = load %class.Node**, %class.Node*** %my_59
%my_61 = getelementptr inbounds %class.Node*, %class.Node** %my_60, i32 0
%my_62 = load %class.Node*, %class.Node** %my_61
%my_63 = icmp eq %class.Node* %my_62, null
br i1 %my_63, label %my_eraseImpl_64, label %my_eraseImpl_109

my_eraseImpl_64: 
%my_65 = load %class.Node*, %class.Node** %my_7
%my_66 = icmp ne %class.Node* %my_65, null
br i1 %my_66, label %my_eraseImpl_67, label %my_eraseImpl_79

my_eraseImpl_67: 
%my_68 = load %class.Node*, %class.Node** %my_7
%my_69 = getelementptr inbounds %class.Node, %class.Node* %my_68, i32 0, i32 1
%my_70 = load %class.Node**, %class.Node*** %my_69
%my_71 = load i32, i32* %my_8
%my_72 = getelementptr inbounds %class.Node*, %class.Node** %my_70, i32 %my_71
%my_73 = load %class.Node*, %class.Node** %my_6
%my_74 = getelementptr inbounds %class.Node, %class.Node* %my_73, i32 0, i32 1
%my_75 = load %class.Node**, %class.Node*** %my_74
%my_76 = getelementptr inbounds %class.Node*, %class.Node** %my_75, i32 1
%my_77 = load %class.Node*, %class.Node** %my_76
%my_78 = bitcast %class.Node* %my_77 to %class.Node*
store %class.Node* %my_78, %class.Node** %my_72
br label %my_eraseImpl_79

my_eraseImpl_79: 
%my_80 = load %class.Node*, %class.Node** %my_6
%my_81 = getelementptr inbounds %class.Node, %class.Node* %my_80, i32 0, i32 1
%my_82 = load %class.Node**, %class.Node*** %my_81
%my_83 = getelementptr inbounds %class.Node*, %class.Node** %my_82, i32 1
%my_84 = load %class.Node*, %class.Node** %my_83
%my_85 = icmp ne %class.Node* %my_84, null
br i1 %my_85, label %my_eraseImpl_86, label %my_eraseImpl_95

my_eraseImpl_86: 
%my_87 = load %class.Node*, %class.Node** %my_6
%my_88 = getelementptr inbounds %class.Node, %class.Node* %my_87, i32 0, i32 1
%my_89 = load %class.Node**, %class.Node*** %my_88
%my_90 = getelementptr inbounds %class.Node*, %class.Node** %my_89, i32 1
%my_91 = load %class.Node*, %class.Node** %my_90
%my_92 = getelementptr inbounds %class.Node, %class.Node* %my_91, i32 0, i32 0
%my_93 = load %class.Node*, %class.Node** %my_7
%my_94 = bitcast %class.Node* %my_93 to %class.Node*
store %class.Node* %my_94, %class.Node** %my_92
br label %my_eraseImpl_95

my_eraseImpl_95: 
%my_96 = load i32, i32* %my_9
%my_97 = load %class.Node*, %class.Node** @my_root
%my_98 = getelementptr inbounds %class.Node, %class.Node* %my_97, i32 0, i32 2
%my_99 = load i32, i32* %my_98
%my_100 = icmp eq i32 %my_96, %my_99
br i1 %my_100, label %my_eraseImpl_101, label %my_eraseImpl_108

my_eraseImpl_101: 
%my_102 = load %class.Node*, %class.Node** %my_6
%my_103 = getelementptr inbounds %class.Node, %class.Node* %my_102, i32 0, i32 1
%my_104 = load %class.Node**, %class.Node*** %my_103
%my_105 = getelementptr inbounds %class.Node*, %class.Node** %my_104, i32 1
%my_106 = load %class.Node*, %class.Node** %my_105
%my_107 = bitcast %class.Node* %my_106 to %class.Node*
store %class.Node* %my_107, %class.Node** @my_root
br label %my_eraseImpl_108

my_eraseImpl_108: 
store i32 1, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImpl_109: 
%my_111 = load %class.Node*, %class.Node** %my_6
%my_112 = getelementptr inbounds %class.Node, %class.Node* %my_111, i32 0, i32 1
%my_113 = load %class.Node**, %class.Node*** %my_112
%my_114 = getelementptr inbounds %class.Node*, %class.Node** %my_113, i32 0
%my_115 = load %class.Node*, %class.Node** %my_114
%my_116 = bitcast %class.Node* %my_115 to %class.Node*
%my_117 = call %class.Node* @findLargest(%class.Node* %my_116)
%my_118 = bitcast %class.Node* %my_117 to %class.Node*
store %class.Node* %my_118, %class.Node** %my_110
%my_119 = load i32, i32* %my_9
%my_120 = load %class.Node*, %class.Node** @my_root
%my_121 = getelementptr inbounds %class.Node, %class.Node* %my_120, i32 0, i32 2
%my_122 = load i32, i32* %my_121
%my_123 = icmp eq i32 %my_119, %my_122
br i1 %my_123, label %my_eraseImpl_124, label %my_eraseImpl_127

my_eraseImpl_124: 
%my_125 = load %class.Node*, %class.Node** %my_110
%my_126 = bitcast %class.Node* %my_125 to %class.Node*
store %class.Node* %my_126, %class.Node** @my_root
br label %my_eraseImpl_127

my_eraseImpl_127: 
%my_128 = load %class.Node*, %class.Node** %my_110
%my_129 = getelementptr inbounds %class.Node, %class.Node* %my_128, i32 0, i32 2
%my_130 = load i32, i32* %my_129
%my_131 = load %class.Node*, %class.Node** %my_6
%my_132 = getelementptr inbounds %class.Node, %class.Node* %my_131, i32 0, i32 1
%my_133 = load %class.Node**, %class.Node*** %my_132
%my_134 = getelementptr inbounds %class.Node*, %class.Node** %my_133, i32 0
%my_135 = load %class.Node*, %class.Node** %my_134
%my_136 = getelementptr inbounds %class.Node, %class.Node* %my_135, i32 0, i32 2
%my_137 = load i32, i32* %my_136
%my_138 = icmp ne i32 %my_130, %my_137
br i1 %my_138, label %my_eraseImpl_139, label %my_eraseImpl_170

my_eraseImpl_139: 
%my_140 = load %class.Node*, %class.Node** %my_110
%my_141 = getelementptr inbounds %class.Node, %class.Node* %my_140, i32 0, i32 0
%my_142 = load %class.Node*, %class.Node** %my_141
%my_143 = getelementptr inbounds %class.Node, %class.Node* %my_142, i32 0, i32 1
%my_144 = load %class.Node**, %class.Node*** %my_143
%my_145 = getelementptr inbounds %class.Node*, %class.Node** %my_144, i32 1
%my_146 = load %class.Node*, %class.Node** %my_110
%my_147 = getelementptr inbounds %class.Node, %class.Node* %my_146, i32 0, i32 1
%my_148 = load %class.Node**, %class.Node*** %my_147
%my_149 = getelementptr inbounds %class.Node*, %class.Node** %my_148, i32 0
%my_150 = load %class.Node*, %class.Node** %my_149
%my_151 = bitcast %class.Node* %my_150 to %class.Node*
store %class.Node* %my_151, %class.Node** %my_145
%my_152 = load %class.Node*, %class.Node** %my_110
%my_153 = getelementptr inbounds %class.Node, %class.Node* %my_152, i32 0, i32 1
%my_154 = load %class.Node**, %class.Node*** %my_153
%my_155 = getelementptr inbounds %class.Node*, %class.Node** %my_154, i32 0
%my_156 = load %class.Node*, %class.Node** %my_155
%my_157 = icmp ne %class.Node* %my_156, null
br i1 %my_157, label %my_eraseImpl_158, label %my_eraseImpl_169

my_eraseImpl_158: 
%my_159 = load %class.Node*, %class.Node** %my_110
%my_160 = getelementptr inbounds %class.Node, %class.Node* %my_159, i32 0, i32 1
%my_161 = load %class.Node**, %class.Node*** %my_160
%my_162 = getelementptr inbounds %class.Node*, %class.Node** %my_161, i32 0
%my_163 = load %class.Node*, %class.Node** %my_162
%my_164 = getelementptr inbounds %class.Node, %class.Node* %my_163, i32 0, i32 0
%my_165 = load %class.Node*, %class.Node** %my_110
%my_166 = getelementptr inbounds %class.Node, %class.Node* %my_165, i32 0, i32 0
%my_167 = load %class.Node*, %class.Node** %my_166
%my_168 = bitcast %class.Node* %my_167 to %class.Node*
store %class.Node* %my_168, %class.Node** %my_164
br label %my_eraseImpl_169

my_eraseImpl_169: 
br label %my_eraseImpl_170

my_eraseImpl_170: 
%my_171 = load %class.Node*, %class.Node** %my_7
%my_172 = icmp ne %class.Node* %my_171, null
br i1 %my_172, label %my_eraseImpl_173, label %my_eraseImpl_181

my_eraseImpl_173: 
%my_174 = load %class.Node*, %class.Node** %my_7
%my_175 = getelementptr inbounds %class.Node, %class.Node* %my_174, i32 0, i32 1
%my_176 = load %class.Node**, %class.Node*** %my_175
%my_177 = load i32, i32* %my_8
%my_178 = getelementptr inbounds %class.Node*, %class.Node** %my_176, i32 %my_177
%my_179 = load %class.Node*, %class.Node** %my_110
%my_180 = bitcast %class.Node* %my_179 to %class.Node*
store %class.Node* %my_180, %class.Node** %my_178
br label %my_eraseImpl_181

my_eraseImpl_181: 
%my_182 = load %class.Node*, %class.Node** %my_110
%my_183 = getelementptr inbounds %class.Node, %class.Node* %my_182, i32 0, i32 0
%my_184 = load %class.Node*, %class.Node** %my_7
%my_185 = bitcast %class.Node* %my_184 to %class.Node*
store %class.Node* %my_185, %class.Node** %my_183
%my_186 = load %class.Node*, %class.Node** %my_110
%my_187 = getelementptr inbounds %class.Node, %class.Node* %my_186, i32 0, i32 1
%my_188 = load %class.Node**, %class.Node*** %my_187
%my_189 = getelementptr inbounds %class.Node*, %class.Node** %my_188, i32 1
%my_190 = load %class.Node*, %class.Node** %my_6
%my_191 = getelementptr inbounds %class.Node, %class.Node* %my_190, i32 0, i32 1
%my_192 = load %class.Node**, %class.Node*** %my_191
%my_193 = getelementptr inbounds %class.Node*, %class.Node** %my_192, i32 1
%my_194 = load %class.Node*, %class.Node** %my_193
%my_195 = bitcast %class.Node* %my_194 to %class.Node*
store %class.Node* %my_195, %class.Node** %my_189
%my_196 = load %class.Node*, %class.Node** %my_6
%my_197 = getelementptr inbounds %class.Node, %class.Node* %my_196, i32 0, i32 1
%my_198 = load %class.Node**, %class.Node*** %my_197
%my_199 = getelementptr inbounds %class.Node*, %class.Node** %my_198, i32 1
%my_200 = load %class.Node*, %class.Node** %my_199
%my_201 = icmp ne %class.Node* %my_200, null
br i1 %my_201, label %my_eraseImpl_202, label %my_eraseImpl_211

my_eraseImpl_202: 
%my_203 = load %class.Node*, %class.Node** %my_6
%my_204 = getelementptr inbounds %class.Node, %class.Node* %my_203, i32 0, i32 1
%my_205 = load %class.Node**, %class.Node*** %my_204
%my_206 = getelementptr inbounds %class.Node*, %class.Node** %my_205, i32 1
%my_207 = load %class.Node*, %class.Node** %my_206
%my_208 = getelementptr inbounds %class.Node, %class.Node* %my_207, i32 0, i32 0
%my_209 = load %class.Node*, %class.Node** %my_110
%my_210 = bitcast %class.Node* %my_209 to %class.Node*
store %class.Node* %my_210, %class.Node** %my_208
br label %my_eraseImpl_211

my_eraseImpl_211: 
%my_212 = load %class.Node*, %class.Node** %my_110
%my_213 = getelementptr inbounds %class.Node, %class.Node* %my_212, i32 0, i32 2
%my_214 = load i32, i32* %my_213
%my_215 = load %class.Node*, %class.Node** %my_6
%my_216 = getelementptr inbounds %class.Node, %class.Node* %my_215, i32 0, i32 1
%my_217 = load %class.Node**, %class.Node*** %my_216
%my_218 = getelementptr inbounds %class.Node*, %class.Node** %my_217, i32 0
%my_219 = load %class.Node*, %class.Node** %my_218
%my_220 = getelementptr inbounds %class.Node, %class.Node* %my_219, i32 0, i32 2
%my_221 = load i32, i32* %my_220
%my_222 = icmp ne i32 %my_214, %my_221
br i1 %my_222, label %my_eraseImpl_223, label %my_eraseImpl_242

my_eraseImpl_223: 
%my_224 = load %class.Node*, %class.Node** %my_110
%my_225 = getelementptr inbounds %class.Node, %class.Node* %my_224, i32 0, i32 1
%my_226 = load %class.Node**, %class.Node*** %my_225
%my_227 = getelementptr inbounds %class.Node*, %class.Node** %my_226, i32 0
%my_228 = load %class.Node*, %class.Node** %my_6
%my_229 = getelementptr inbounds %class.Node, %class.Node* %my_228, i32 0, i32 1
%my_230 = load %class.Node**, %class.Node*** %my_229
%my_231 = getelementptr inbounds %class.Node*, %class.Node** %my_230, i32 0
%my_232 = load %class.Node*, %class.Node** %my_231
%my_233 = bitcast %class.Node* %my_232 to %class.Node*
store %class.Node* %my_233, %class.Node** %my_227
%my_234 = load %class.Node*, %class.Node** %my_6
%my_235 = getelementptr inbounds %class.Node, %class.Node* %my_234, i32 0, i32 1
%my_236 = load %class.Node**, %class.Node*** %my_235
%my_237 = getelementptr inbounds %class.Node*, %class.Node** %my_236, i32 0
%my_238 = load %class.Node*, %class.Node** %my_237
%my_239 = getelementptr inbounds %class.Node, %class.Node* %my_238, i32 0, i32 0
%my_240 = load %class.Node*, %class.Node** %my_110
%my_241 = bitcast %class.Node* %my_240 to %class.Node*
store %class.Node* %my_241, %class.Node** %my_239
br label %my_eraseImpl_242

my_eraseImpl_242: 
store i32 1, i32* %my_1
br label %my_eraseImplreturn_block

my_eraseImplreturn_block: 
%my_243 = load i32, i32* %my_1
ret i32 %my_243
}
define i32 @erase(i32 %my_2) {
my_erase: 
%my_1 = alloca i32
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = load %class.Node*, %class.Node** @my_root
%my_5 = icmp eq %class.Node* %my_4, null
br i1 %my_5, label %my_erase_6, label %my_erase_7
my_erase_6: 
store i32 0, i32* %my_1
br label %my_erasereturn_block

my_erase_7: 
%my_8 = load %class.Node*, %class.Node** @my_root
%my_9 = bitcast %class.Node* %my_8 to %class.Node*
%my_10 = sub nsw i32 0, 1
%my_11 = load i32, i32* %my_3
%my_12 = call i32 @eraseImpl(%class.Node* %my_9,MIR.NULL_PTR@1ae369b7 null,i32 %my_10,i32 %my_11)
store i32 %my_12, i32* %my_1
br label %my_erasereturn_block

my_erasereturn_block: 
%my_13 = load i32, i32* %my_1
ret i32 %my_13
}
define void @printTree(%class.Node* %my_1) {
my_printTree: 
%my_2 = alloca %class.Node*
store %class.Node* %my_1, %class.Node** %my_2
%my_3 = load %class.Node*, %class.Node** %my_2
%my_4 = icmp eq %class.Node* %my_3, null
br i1 %my_4, label %my_printTree_5, label %my_printTree_6
my_printTree_5: 
br label %my_printTreereturn_block

my_printTree_6: 
%my_7 = load %class.Node*, %class.Node** %my_2
%my_8 = getelementptr inbounds %class.Node, %class.Node* %my_7, i32 0, i32 1
%my_9 = load %class.Node**, %class.Node*** %my_8
%my_10 = getelementptr inbounds %class.Node*, %class.Node** %my_9, i32 0
%my_11 = load %class.Node*, %class.Node** %my_10
%my_12 = bitcast %class.Node* %my_11 to %class.Node*
call void @printTree(%class.Node* %my_12)
%my_14 = load %class.Node*, %class.Node** %my_2
%my_15 = getelementptr inbounds %class.Node, %class.Node* %my_14, i32 0, i32 2
%my_16 = load i32, i32* %my_15
%my_17 = call i8* @toString(i32 %my_16)
%my_18 = bitcast i8* %my_17 to i8*
%my_19 = bitcast [3 x i8]* @my_.str.0 to i8*
%my_20 = call i8* @string_add(i8* %my_18,i8* %my_19)
%my_21 = load %class.Node*, %class.Node** %my_2
%my_22 = getelementptr inbounds %class.Node, %class.Node* %my_21, i32 0, i32 3
%my_23 = load i32, i32* %my_22
%my_24 = call i8* @toString(i32 %my_23)
%my_25 = bitcast i8* %my_20 to i8*
%my_26 = bitcast i8* %my_24 to i8*
%my_27 = call i8* @string_add(i8* %my_25,i8* %my_26)
%my_28 = bitcast i8* %my_27 to i8*
call void @println(i8* %my_28)
%my_30 = load %class.Node*, %class.Node** %my_2
%my_31 = getelementptr inbounds %class.Node, %class.Node* %my_30, i32 0, i32 1
%my_32 = load %class.Node**, %class.Node*** %my_31
%my_33 = getelementptr inbounds %class.Node*, %class.Node** %my_32, i32 1
%my_34 = load %class.Node*, %class.Node** %my_33
%my_35 = bitcast %class.Node* %my_34 to %class.Node*
call void @printTree(%class.Node* %my_35)
br label %my_printTreereturn_block

my_printTreereturn_block: 
ret void
}
define i32 @randInt31() {
my_randInt31: 
%my_1 = alloca i32
%my_2 = alloca i32
%my_3 = load i32, i32* @my_seed
store i32 %my_3, i32* %my_2
%my_4 = load i32, i32* %my_2
%my_5 = load i32, i32* %my_2
%my_6 = shl i32 %my_5, 13
%my_7 = xor i32 %my_4, %my_6
store i32 %my_7, i32* %my_2
%my_8 = load i32, i32* %my_2
%my_9 = shl i32 1, 31
%my_10 = xor i32 -1, %my_9
%my_11 = and i32 %my_8, %my_10
store i32 %my_11, i32* %my_2
%my_12 = load i32, i32* %my_2
%my_13 = load i32, i32* %my_2
%my_14 = ashr i32 %my_13, 17
%my_15 = xor i32 %my_12, %my_14
store i32 %my_15, i32* %my_2
%my_16 = load i32, i32* %my_2
%my_17 = load i32, i32* %my_2
%my_18 = shl i32 %my_17, 5
%my_19 = xor i32 %my_16, %my_18
store i32 %my_19, i32* %my_2
%my_20 = load i32, i32* %my_2
%my_21 = shl i32 1, 31
%my_22 = xor i32 -1, %my_21
%my_23 = and i32 %my_20, %my_22
store i32 %my_23, i32* %my_2
%my_24 = load i32, i32* %my_2
store i32 %my_24, i32* @my_seed
%my_25 = load i32, i32* %my_2
store i32 %my_25, i32* %my_1
br label %my_randInt31return_block
my_randInt31return_block: 
%my_26 = load i32, i32* %my_1
ret i32 %my_26
}
define i32 @randOp(i32 %my_2) {
my_randOp: 
%my_1 = alloca i32
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = call i32 @randInt31()
%my_5 = load i32, i32* %my_3
%my_6 = icmp slt i32 %my_4, %my_5
br i1 %my_6, label %my_randOp_7, label %my_randOp_8
my_randOp_7: 
store i32 1, i32* %my_1
br label %my_randOpreturn_block

my_randOp_8: 
store i32 2, i32* %my_1
br label %my_randOpreturn_block

my_randOpreturn_block: 
%my_9 = load i32, i32* %my_1
ret i32 %my_9
}
define void @generateOperations(i32 %my_1, i32 %my_2) {
my_generateOperations: 
%my_3 = alloca i32
store i32 %my_1, i32* %my_3
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
%my_11 = alloca i32
store i32 0, i32* %my_5
br label %my_generateOperations_6
my_generateOperations_6: 
%my_7 = load i32, i32* %my_5
%my_8 = load i32, i32* %my_4
%my_9 = icmp slt i32 %my_7, %my_8
br i1 %my_9, label %my_generateOperations_10, label %my_generateOperations_28

my_generateOperations_10: 
%my_12 = call i32 @randInt31()
%my_13 = load i32, i32* @my_MAX
%my_14 = srem i32 %my_12, %my_13
store i32 %my_14, i32* %my_11
%my_15 = load i32, i32* %my_3
%my_16 = call i32 @randOp(i32 %my_15)
%my_17 = icmp eq i32 %my_16, 1
br i1 %my_17, label %my_generateOperations_18, label %my_generateOperations_21

my_generateOperations_18: 
%my_19 = load i32, i32* %my_11
%my_20 = call i32 @insert(i32 %my_19)
br label %my_generateOperations_24

my_generateOperations_21: 
%my_22 = load i32, i32* %my_11
%my_23 = call i32 @erase(i32 %my_22)
br label %my_generateOperations_24

my_generateOperations_24: 
br label %my_generateOperations_25

my_generateOperations_25: 
%my_26 = load i32, i32* %my_5
%my_27 = add nsw i32 %my_26, 1
store i32 %my_27, i32* %my_5
br label %my_generateOperations_6

my_generateOperations_28: 
br label %my_generateOperationsreturn_block

my_generateOperationsreturn_block: 
ret void
}


