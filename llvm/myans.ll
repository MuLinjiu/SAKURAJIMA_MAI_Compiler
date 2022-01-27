@my_b = global i32* null
@my_now = global i32* null
@my_t = global i32* null
@my_a = global i32* null
@my_n = global i32 0
@my_m = global i32 0
@my_p = global i32 0
@my_op = global i32 0
@my_L = global i32 1
@my_flag = global i32* null
@my_s = global i32** null
@my_sum = global i32* null
@my_ans = global i32 0
@my_aa = global i32 13131
@my_bb = global i32 5353
@my_MOD = global i32 0
@my_no = global i32 1
@my_pl = global i32 0
@my_pr = global i32 0

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
%my_69 = alloca i32
%my_1 = mul nsw i64 500005, 4
%my_2 = add nsw i64 %my_1, 4
%my_3 = call i8* @malloc(i64 %my_2)
%my_4 = bitcast i8* %my_3 to i32*
store i32 500005, i32* %my_4
%my_5 = getelementptr inbounds i32, i32* %my_4, i32 1
%my_6 = bitcast i32* %my_5 to i32*
%my_7 = bitcast i32* %my_6 to i32*
store i32* %my_7, i32** @my_b
%my_8 = mul nsw i64 500005, 4
%my_9 = add nsw i64 %my_8, 4
%my_10 = call i8* @malloc(i64 %my_9)
%my_11 = bitcast i8* %my_10 to i32*
store i32 500005, i32* %my_11
%my_12 = getelementptr inbounds i32, i32* %my_11, i32 1
%my_13 = bitcast i32* %my_12 to i32*
%my_14 = bitcast i32* %my_13 to i32*
store i32* %my_14, i32** @my_now
%my_15 = mul nsw i64 500005, 4
%my_16 = add nsw i64 %my_15, 4
%my_17 = call i8* @malloc(i64 %my_16)
%my_18 = bitcast i8* %my_17 to i32*
store i32 500005, i32* %my_18
%my_19 = getelementptr inbounds i32, i32* %my_18, i32 1
%my_20 = bitcast i32* %my_19 to i32*
%my_21 = bitcast i32* %my_20 to i32*
store i32* %my_21, i32** @my_t
%my_22 = mul nsw i64 200005, 4
%my_23 = add nsw i64 %my_22, 4
%my_24 = call i8* @malloc(i64 %my_23)
%my_25 = bitcast i8* %my_24 to i32*
store i32 200005, i32* %my_25
%my_26 = getelementptr inbounds i32, i32* %my_25, i32 1
%my_27 = bitcast i32* %my_26 to i32*
%my_28 = bitcast i32* %my_27 to i32*
store i32* %my_28, i32** @my_a
%my_29 = mul nsw i64 500005, 4
%my_30 = add nsw i64 %my_29, 4
%my_31 = call i8* @malloc(i64 %my_30)
%my_32 = bitcast i8* %my_31 to i32*
store i32 500005, i32* %my_32
%my_33 = getelementptr inbounds i32, i32* %my_32, i32 1
%my_34 = bitcast i32* %my_33 to i32*
%my_35 = bitcast i32* %my_34 to i32*
store i32* %my_35, i32** @my_flag
%my_36 = mul nsw i64 500005, 8
%my_37 = add nsw i64 %my_36, 4
%my_38 = call i8* @malloc(i64 %my_37)
%my_39 = bitcast i8* %my_38 to i32*
store i32 500005, i32* %my_39
%my_40 = getelementptr inbounds i32, i32* %my_39, i32 1
%my_41 = bitcast i32* %my_40 to i32**
%my_42 = alloca i32
store i32 0, i32* %my_42
br label %my_main_my_42_for_condition
my_main_my_42_for_condition: 
%my_43 = load i32, i32* %my_42
%my_44 = icmp slt i32 %my_43, 500005
br i1 %my_44, label %my_main_my_42_for_suite, label %my_main_my_42_for_out

my_main_my_42_for_suite: 
%my_45 = load i32, i32* %my_42
%my_46 = getelementptr inbounds i32*, i32** %my_41, i32 %my_45
%my_47 = mul nsw i64 80, 4
%my_48 = add nsw i64 %my_47, 4
%my_49 = call i8* @malloc(i64 %my_48)
%my_50 = bitcast i8* %my_49 to i32*
store i32 80, i32* %my_50
%my_51 = getelementptr inbounds i32, i32* %my_50, i32 1
%my_52 = bitcast i32* %my_51 to i32*
store i32* %my_52, i32** %my_46
br label %my_main_my_42_for_finish

my_main_my_42_for_finish: 
%my_53 = load i32, i32* %my_42
%my_54 = add nsw i32 %my_53, 1
store i32 %my_54, i32* %my_42
br label %my_main_my_42_for_condition

my_main_my_42_for_out: 
%my_65 = alloca i32
store i32 0, i32* %my_65
%my_55 = bitcast i32** %my_41 to i32**
store i32** %my_55, i32*** @my_s
%my_56 = mul nsw i64 500005, 4
%my_57 = add nsw i64 %my_56, 4
%my_58 = call i8* @malloc(i64 %my_57)
%my_59 = bitcast i8* %my_58 to i32*
store i32 500005, i32* %my_59
%my_60 = getelementptr inbounds i32, i32* %my_59, i32 1
%my_61 = bitcast i32* %my_60 to i32*
%my_62 = bitcast i32* %my_61 to i32*
store i32* %my_62, i32** @my_sum
%my_63 = shl i32 2, 14
%my_64 = sub nsw i32 %my_63, 7
store i32 %my_64, i32* @my_MOD
%my_66 = call i32 @getInt()
store i32 %my_66, i32* @my_n
%my_67 = call i32 @getInt()
store i32 %my_67, i32* @my_m
%my_68 = call i32 @getInt()
store i32 %my_68, i32* @my_p
store i32 1, i32* %my_69
store i32 1, i32* %my_69
br label %my_main_70

my_main_70: 
%my_71 = load i32, i32* %my_69
%my_72 = load i32, i32* @my_n
%my_73 = icmp sle i32 %my_71, %my_72
br i1 %my_73, label %my_main_74, label %my_main_83

my_main_74: 
%my_75 = load i32*, i32** @my_a
%my_76 = load i32, i32* %my_69
%my_77 = getelementptr inbounds i32, i32* %my_75, i32 %my_76
%my_78 = load i32, i32* @my_p
%my_79 = call i32 @RandRange(i32 0,i32 %my_78)
store i32 %my_79, i32* %my_77
br label %my_main_80

my_main_80: 
%my_81 = load i32, i32* %my_69
%my_82 = add nsw i32 %my_81, 1
store i32 %my_82, i32* %my_69
br label %my_main_70

my_main_83: 
call void @init()
%my_85 = load i32, i32* @my_n
call void @build(i32 1,i32 1,i32 %my_85)
br label %my_main_87

my_main_87: 
%my_88 = load i32, i32* @my_m
%my_89 = icmp sgt i32 %my_88, 0
br i1 %my_89, label %my_main_90, label %my_main_123

my_main_90: 
%my_91 = call i32 @Rand()
%my_92 = srem i32 %my_91, 2
store i32 %my_92, i32* @my_op
%my_93 = load i32, i32* @my_n
%my_94 = call i32 @RandRange(i32 1,i32 %my_93)
store i32 %my_94, i32* @my_pl
%my_95 = load i32, i32* @my_n
%my_96 = call i32 @RandRange(i32 1,i32 %my_95)
store i32 %my_96, i32* @my_pr
br label %my_main_97

my_main_97: 
%my_98 = load i32, i32* @my_pr
%my_99 = load i32, i32* @my_pl
%my_100 = icmp sle i32 %my_98, %my_99
br i1 %my_100, label %my_main_101, label %my_main_104

my_main_101: 
%my_102 = load i32, i32* @my_n
%my_103 = call i32 @RandRange(i32 1,i32 %my_102)
store i32 %my_103, i32* @my_pr
br label %my_main_97

my_main_104: 
%my_105 = load i32, i32* @my_op
%my_106 = icmp eq i32 %my_105, 0
br i1 %my_106, label %my_main_107, label %my_main_110

my_main_107: 
%my_108 = load i32, i32* @my_n
call void @update(i32 1,i32 1,i32 %my_108)
br label %my_main_110

my_main_110: 
%my_111 = load i32, i32* @my_op
%my_112 = icmp eq i32 %my_111, 1
br i1 %my_112, label %my_main_113, label %my_main_120

my_main_113: 
%my_114 = load i32, i32* @my_ans
%my_115 = load i32, i32* @my_n
%my_116 = call i32 @query(i32 1,i32 1,i32 %my_115)
%my_117 = add nsw i32 %my_114, %my_116
%my_118 = load i32, i32* @my_MOD
%my_119 = srem i32 %my_117, %my_118
store i32 %my_119, i32* @my_ans
br label %my_main_120

my_main_120: 
%my_121 = load i32, i32* @my_m
%my_122 = add nsw i32 %my_121, -1
store i32 %my_122, i32* @my_m
br label %my_main_87

my_main_123: 
%my_124 = load i32, i32* @my_ans
%my_125 = call i8* @toString(i32 %my_124)
%my_126 = bitcast i8* %my_125 to i8*
call void @print(i8* %my_126)
store i32 0, i32* %my_65
br label %my_mainreturn_block

my_mainreturn_block: 
%my_128 = load i32, i32* %my_65
ret i32 %my_128
}
define i32 @square(i32 %my_2) {
my_square: 
%my_1 = alloca i32
%my_3 = alloca i32
store i32 %my_2, i32* %my_3
%my_4 = load i32, i32* %my_3
%my_5 = load i32, i32* @my_p
%my_6 = srem i32 %my_4, %my_5
%my_7 = load i32, i32* %my_3
%my_8 = load i32, i32* @my_p
%my_9 = srem i32 %my_7, %my_8
%my_10 = mul nsw i32 %my_6, %my_9
store i32 %my_10, i32* %my_1
br label %my_squarereturn_block
my_squarereturn_block: 
%my_11 = load i32, i32* %my_1
ret i32 %my_11
}
define i32 @gcd(i32 %my_2, i32 %my_3) {
my_gcd: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_5
%my_7 = icmp eq i32 %my_6, 0
br i1 %my_7, label %my_gcd_8, label %my_gcd_10
my_gcd_8: 
%my_9 = load i32, i32* %my_4
store i32 %my_9, i32* %my_1
br label %my_gcdreturn_block

my_gcd_10: 
%my_11 = load i32, i32* %my_4
%my_12 = load i32, i32* %my_5
%my_13 = icmp slt i32 %my_11, %my_12
br i1 %my_13, label %my_gcd_14, label %my_gcd_18

my_gcd_14: 
%my_15 = load i32, i32* %my_5
%my_16 = load i32, i32* %my_4
%my_17 = call i32 @gcd(i32 %my_15,i32 %my_16)
store i32 %my_17, i32* %my_1
br label %my_gcdreturn_block

my_gcd_18: 
%my_19 = load i32, i32* %my_5
%my_20 = load i32, i32* %my_4
%my_21 = load i32, i32* %my_5
%my_22 = srem i32 %my_20, %my_21
%my_23 = call i32 @gcd(i32 %my_19,i32 %my_22)
store i32 %my_23, i32* %my_1
br label %my_gcdreturn_block

my_gcd_24: 
br label %my_gcdreturn_block

my_gcdreturn_block: 
%my_25 = load i32, i32* %my_1
ret i32 %my_25
}
define i32 @lcm(i32 %my_2, i32 %my_3) {
my_lcm: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_4
%my_7 = load i32, i32* %my_4
%my_8 = load i32, i32* %my_5
%my_9 = call i32 @gcd(i32 %my_7,i32 %my_8)
%my_10 = sdiv i32 %my_6, %my_9
%my_11 = load i32, i32* %my_5
%my_12 = mul nsw i32 %my_10, %my_11
store i32 %my_12, i32* %my_1
br label %my_lcmreturn_block
my_lcmreturn_block: 
%my_13 = load i32, i32* %my_1
ret i32 %my_13
}
define i32 @Rand() {
my_Rand: 
%my_1 = alloca i32
%my_2 = alloca i32
store i32 1, i32* %my_2
store i32 1, i32* %my_2
br label %my_Rand_3
my_Rand_3: 
%my_4 = load i32, i32* %my_2
%my_5 = icmp slt i32 %my_4, 3
br i1 %my_5, label %my_Rand_6, label %my_Rand_17

my_Rand_6: 
%my_7 = load i32, i32* @my_no
%my_8 = load i32, i32* @my_aa
%my_9 = mul nsw i32 %my_7, %my_8
%my_10 = load i32, i32* @my_bb
%my_11 = add nsw i32 %my_9, %my_10
%my_12 = load i32, i32* @my_MOD
%my_13 = srem i32 %my_11, %my_12
store i32 %my_13, i32* @my_no
br label %my_Rand_14

my_Rand_14: 
%my_15 = load i32, i32* %my_2
%my_16 = add nsw i32 %my_15, 1
store i32 %my_16, i32* %my_2
br label %my_Rand_3

my_Rand_17: 
%my_18 = load i32, i32* @my_no
%my_19 = icmp slt i32 %my_18, 0
br i1 %my_19, label %my_Rand_20, label %my_Rand_23

my_Rand_20: 
%my_21 = load i32, i32* @my_no
%my_22 = sub nsw i32 0, %my_21
store i32 %my_22, i32* @my_no
br label %my_Rand_23

my_Rand_23: 
%my_24 = load i32, i32* @my_no
store i32 %my_24, i32* %my_1
br label %my_Randreturn_block

my_Randreturn_block: 
%my_25 = load i32, i32* %my_1
ret i32 %my_25
}
define i32 @RandRange(i32 %my_2, i32 %my_3) {
my_RandRange: 
%my_1 = alloca i32
%my_4 = alloca i32
store i32 %my_2, i32* %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_4
%my_7 = call i32 @Rand()
%my_8 = load i32, i32* %my_5
%my_9 = load i32, i32* %my_4
%my_10 = sub nsw i32 %my_8, %my_9
%my_11 = add nsw i32 %my_10, 1
%my_12 = srem i32 %my_7, %my_11
%my_13 = add nsw i32 %my_6, %my_12
%my_14 = add nsw i32 %my_13, 1
store i32 %my_14, i32* %my_1
br label %my_RandRangereturn_block
my_RandRangereturn_block: 
%my_15 = load i32, i32* %my_1
ret i32 %my_15
}
define void @init() {
my_init: 
%my_1 = alloca i32*
%my_9 = alloca i32
%my_10 = alloca i32
%my_56 = alloca i32
%my_57 = alloca i32
%my_2 = mul nsw i64 140005, 4
%my_3 = add nsw i64 %my_2, 4
%my_4 = call i8* @malloc(i64 %my_3)
%my_5 = bitcast i8* %my_4 to i32*
store i32 140005, i32* %my_5
%my_6 = getelementptr inbounds i32, i32* %my_5, i32 1
%my_7 = bitcast i32* %my_6 to i32*
%my_8 = bitcast i32* %my_7 to i32*
store i32* %my_8, i32** %my_1
store i32 0, i32* %my_9
store i32 0, i32* %my_10
store i32 2, i32* %my_9
br label %my_init_11
my_init_11: 
%my_12 = load i32, i32* %my_9
%my_13 = load i32, i32* @my_p
%my_14 = icmp slt i32 %my_12, %my_13
br i1 %my_14, label %my_init_15, label %my_init_23

my_init_15: 
%my_16 = load i32*, i32** %my_1
%my_17 = load i32, i32* %my_9
%my_18 = getelementptr inbounds i32, i32* %my_16, i32 %my_17
%my_19 = load i32, i32* %my_9
store i32 %my_19, i32* %my_18
br label %my_init_20

my_init_20: 
%my_21 = load i32, i32* %my_9
%my_22 = add nsw i32 %my_21, 1
store i32 %my_22, i32* %my_9
br label %my_init_11

my_init_23: 
store i32 2, i32* %my_9
br label %my_init_24

my_init_24: 
%my_25 = load i32, i32* %my_9
%my_26 = load i32, i32* @my_p
%my_27 = icmp slt i32 %my_25, %my_26
br i1 %my_27, label %my_init_28, label %my_init_50

my_init_28: 
store i32 1, i32* %my_10
br label %my_init_29

my_init_29: 
%my_30 = load i32, i32* %my_10
%my_31 = icmp sle i32 %my_30, 15
br i1 %my_31, label %my_init_32, label %my_init_46

my_init_32: 
%my_33 = load i32*, i32** %my_1
%my_34 = load i32, i32* %my_9
%my_35 = getelementptr inbounds i32, i32* %my_33, i32 %my_34
%my_36 = load i32*, i32** %my_1
%my_37 = load i32, i32* %my_9
%my_38 = getelementptr inbounds i32, i32* %my_36, i32 %my_37
%my_39 = load i32, i32* %my_38
%my_40 = call i32 @square(i32 %my_39)
%my_41 = load i32, i32* @my_p
%my_42 = srem i32 %my_40, %my_41
store i32 %my_42, i32* %my_35
br label %my_init_43

my_init_43: 
%my_44 = load i32, i32* %my_10
%my_45 = add nsw i32 %my_44, 1
store i32 %my_45, i32* %my_10
br label %my_init_29

my_init_46: 
br label %my_init_47

my_init_47: 
%my_48 = load i32, i32* %my_9
%my_49 = add nsw i32 %my_48, 1
store i32 %my_49, i32* %my_9
br label %my_init_24

my_init_50: 
store i32 2, i32* %my_9
br label %my_init_51

my_init_51: 
%my_52 = load i32, i32* %my_9
%my_53 = load i32, i32* @my_p
%my_54 = icmp slt i32 %my_52, %my_53
br i1 %my_54, label %my_init_55, label %my_init_89

my_init_55: 
%my_58 = load i32*, i32** %my_1
%my_59 = load i32, i32* %my_9
%my_60 = getelementptr inbounds i32, i32* %my_58, i32 %my_59
%my_61 = load i32, i32* %my_60
store i32 %my_61, i32* %my_57
store i32 1, i32* %my_56
br label %my_init_62

my_init_62: 
br label %my_init_63

my_init_63: 
%my_64 = load i32, i32* %my_57
%my_65 = call i32 @square(i32 %my_64)
%my_66 = load i32, i32* @my_p
%my_67 = srem i32 %my_65, %my_66
store i32 %my_67, i32* %my_57
%my_68 = load i32*, i32** @my_b
%my_69 = load i32, i32* %my_57
%my_70 = getelementptr inbounds i32, i32* %my_68, i32 %my_69
store i32 1, i32* %my_70
%my_71 = load i32, i32* %my_57
%my_72 = load i32*, i32** %my_1
%my_73 = load i32, i32* %my_9
%my_74 = getelementptr inbounds i32, i32* %my_72, i32 %my_73
%my_75 = load i32, i32* %my_74
%my_76 = icmp eq i32 %my_71, %my_75
br i1 %my_76, label %my_init_77, label %my_init_78

my_init_77: 
br label %my_init_82

my_init_78: 
br label %my_init_79

my_init_79: 
%my_80 = load i32, i32* %my_56
%my_81 = add nsw i32 %my_80, 1
store i32 %my_81, i32* %my_56
br label %my_init_62

my_init_82: 
%my_83 = load i32, i32* @my_L
%my_84 = load i32, i32* %my_56
%my_85 = call i32 @lcm(i32 %my_83,i32 %my_84)
store i32 %my_85, i32* @my_L
br label %my_init_86

my_init_86: 
%my_87 = load i32, i32* %my_9
%my_88 = add nsw i32 %my_87, 1
store i32 %my_88, i32* %my_9
br label %my_init_51

my_init_89: 
%my_90 = load i32*, i32** @my_b
%my_91 = getelementptr inbounds i32, i32* %my_90, i32 0
store i32 1, i32* %my_91
%my_92 = load i32*, i32** @my_b
%my_93 = getelementptr inbounds i32, i32* %my_92, i32 1
store i32 1, i32* %my_93
br label %my_initreturn_block

my_initreturn_block: 
ret void
}
define void @build(i32 %my_1, i32 %my_2, i32 %my_3) {
my_build: 
%my_4 = alloca i32
store i32 %my_1, i32* %my_4
%my_5 = alloca i32
store i32 %my_2, i32* %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_7 = alloca i32
%my_86 = alloca i32
%my_89 = alloca i32
%my_93 = alloca i32
store i32 0, i32* %my_7
%my_8 = load i32, i32* %my_5
%my_9 = load i32, i32* %my_6
%my_10 = icmp eq i32 %my_8, %my_9
br i1 %my_10, label %my_build_11, label %my_build_85
my_build_11: 
%my_12 = load i32*, i32** @my_sum
%my_13 = load i32, i32* %my_4
%my_14 = getelementptr inbounds i32, i32* %my_12, i32 %my_13
%my_15 = load i32*, i32** @my_a
%my_16 = load i32, i32* %my_5
%my_17 = getelementptr inbounds i32, i32* %my_15, i32 %my_16
%my_18 = load i32, i32* %my_17
store i32 %my_18, i32* %my_14
%my_19 = load i32*, i32** @my_a
%my_20 = load i32, i32* %my_5
%my_21 = getelementptr inbounds i32, i32* %my_19, i32 %my_20
%my_22 = load i32, i32* %my_21
%my_23 = load i32, i32* @my_p
%my_24 = icmp slt i32 %my_22, %my_23
br i1 %my_24, label %my_build_24AND_AND_TRUE, label %my_build_24AND_AND_OUT

my_build_24AND_AND_TRUE: 
%my_25 = load i32*, i32** @my_a
%my_26 = load i32, i32* %my_5
%my_27 = getelementptr inbounds i32, i32* %my_25, i32 %my_26
%my_28 = load i32, i32* %my_27
%my_29 = icmp sge i32 %my_28, 0
br label %my_build_24AND_AND_OUT

my_build_24AND_AND_OUT: 
%my_30 = phi i1 [ false, %my_build_11 ], [ %my_29, %my_build_24AND_AND_TRUE ]
br i1 %my_30, label %my_build_30AND_AND_TRUE, label %my_build_30AND_AND_OUT

my_build_30AND_AND_TRUE: 
%my_31 = load i32*, i32** @my_b
%my_32 = load i32*, i32** @my_a
%my_33 = load i32, i32* %my_5
%my_34 = getelementptr inbounds i32, i32* %my_32, i32 %my_33
%my_35 = load i32, i32* %my_34
%my_36 = load i32, i32* @my_p
%my_37 = srem i32 %my_35, %my_36
%my_38 = getelementptr inbounds i32, i32* %my_31, i32 %my_37
%my_39 = load i32, i32* %my_38
%my_40 = icmp sgt i32 %my_39, 0
br label %my_build_30AND_AND_OUT

my_build_30AND_AND_OUT: 
%my_41 = phi i1 [ false, %my_build_24AND_AND_OUT ], [ %my_40, %my_build_30AND_AND_TRUE ]
br i1 %my_41, label %my_build_42, label %my_build_81

my_build_42: 
%my_43 = load i32*, i32** @my_flag
%my_44 = load i32, i32* %my_4
%my_45 = getelementptr inbounds i32, i32* %my_43, i32 %my_44
store i32 1, i32* %my_45
%my_46 = load i32**, i32*** @my_s
%my_47 = load i32, i32* %my_4
%my_48 = getelementptr inbounds i32*, i32** %my_46, i32 %my_47
%my_49 = load i32*, i32** %my_48
%my_50 = getelementptr inbounds i32, i32* %my_49, i32 0
%my_51 = load i32*, i32** @my_a
%my_52 = load i32, i32* %my_5
%my_53 = getelementptr inbounds i32, i32* %my_51, i32 %my_52
%my_54 = load i32, i32* %my_53
store i32 %my_54, i32* %my_50
store i32 1, i32* %my_7
br label %my_build_55

my_build_55: 
%my_56 = load i32, i32* %my_7
%my_57 = load i32, i32* @my_L
%my_58 = icmp slt i32 %my_56, %my_57
br i1 %my_58, label %my_build_59, label %my_build_80

my_build_59: 
%my_60 = load i32**, i32*** @my_s
%my_61 = load i32, i32* %my_4
%my_62 = getelementptr inbounds i32*, i32** %my_60, i32 %my_61
%my_63 = load i32*, i32** %my_62
%my_64 = load i32, i32* %my_7
%my_65 = getelementptr inbounds i32, i32* %my_63, i32 %my_64
%my_66 = load i32**, i32*** @my_s
%my_67 = load i32, i32* %my_4
%my_68 = getelementptr inbounds i32*, i32** %my_66, i32 %my_67
%my_69 = load i32*, i32** %my_68
%my_70 = load i32, i32* %my_7
%my_71 = sub nsw i32 %my_70, 1
%my_72 = getelementptr inbounds i32, i32* %my_69, i32 %my_71
%my_73 = load i32, i32* %my_72
%my_74 = call i32 @square(i32 %my_73)
%my_75 = load i32, i32* @my_p
%my_76 = srem i32 %my_74, %my_75
store i32 %my_76, i32* %my_65
br label %my_build_77

my_build_77: 
%my_78 = load i32, i32* %my_7
%my_79 = add nsw i32 %my_78, 1
store i32 %my_79, i32* %my_7
br label %my_build_55

my_build_80: 
br label %my_build_81

my_build_81: 
%my_82 = load i32*, i32** @my_now
%my_83 = load i32, i32* %my_4
%my_84 = getelementptr inbounds i32, i32* %my_82, i32 %my_83
store i32 0, i32* %my_84
br label %my_build_170

my_build_85: 
%my_87 = load i32, i32* %my_4
%my_88 = mul nsw i32 %my_87, 2
store i32 %my_88, i32* %my_86
%my_90 = load i32, i32* %my_4
%my_91 = mul nsw i32 %my_90, 2
%my_92 = add nsw i32 %my_91, 1
store i32 %my_92, i32* %my_89
%my_94 = load i32, i32* %my_5
%my_95 = load i32, i32* %my_6
%my_96 = add nsw i32 %my_94, %my_95
%my_97 = sdiv i32 %my_96, 2
store i32 %my_97, i32* %my_93
%my_98 = load i32, i32* %my_86
%my_99 = load i32, i32* %my_5
%my_100 = load i32, i32* %my_93
call void @build(i32 %my_98,i32 %my_99,i32 %my_100)
%my_102 = load i32, i32* %my_89
%my_103 = load i32, i32* %my_93
%my_104 = add nsw i32 %my_103, 1
%my_105 = load i32, i32* %my_6
call void @build(i32 %my_102,i32 %my_104,i32 %my_105)
%my_107 = load i32*, i32** @my_sum
%my_108 = load i32, i32* %my_4
%my_109 = getelementptr inbounds i32, i32* %my_107, i32 %my_108
%my_110 = load i32*, i32** @my_sum
%my_111 = load i32, i32* %my_86
%my_112 = getelementptr inbounds i32, i32* %my_110, i32 %my_111
%my_113 = load i32, i32* %my_112
%my_114 = load i32*, i32** @my_sum
%my_115 = load i32, i32* %my_89
%my_116 = getelementptr inbounds i32, i32* %my_114, i32 %my_115
%my_117 = load i32, i32* %my_116
%my_118 = add nsw i32 %my_113, %my_117
store i32 %my_118, i32* %my_109
%my_119 = load i32*, i32** @my_flag
%my_120 = load i32, i32* %my_4
%my_121 = getelementptr inbounds i32, i32* %my_119, i32 %my_120
%my_122 = load i32*, i32** @my_flag
%my_123 = load i32, i32* %my_86
%my_124 = getelementptr inbounds i32, i32* %my_122, i32 %my_123
%my_125 = load i32, i32* %my_124
%my_126 = load i32*, i32** @my_flag
%my_127 = load i32, i32* %my_89
%my_128 = getelementptr inbounds i32, i32* %my_126, i32 %my_127
%my_129 = load i32, i32* %my_128
%my_130 = and i32 %my_125, %my_129
store i32 %my_130, i32* %my_121
%my_131 = load i32*, i32** @my_flag
%my_132 = load i32, i32* %my_4
%my_133 = getelementptr inbounds i32, i32* %my_131, i32 %my_132
%my_134 = load i32, i32* %my_133
%my_135 = icmp sgt i32 %my_134, 0
br i1 %my_135, label %my_build_136, label %my_build_169

my_build_136: 
store i32 0, i32* %my_7
br label %my_build_137

my_build_137: 
%my_138 = load i32, i32* %my_7
%my_139 = load i32, i32* @my_L
%my_140 = icmp slt i32 %my_138, %my_139
br i1 %my_140, label %my_build_141, label %my_build_166

my_build_141: 
%my_142 = load i32**, i32*** @my_s
%my_143 = load i32, i32* %my_4
%my_144 = getelementptr inbounds i32*, i32** %my_142, i32 %my_143
%my_145 = load i32*, i32** %my_144
%my_146 = load i32, i32* %my_7
%my_147 = getelementptr inbounds i32, i32* %my_145, i32 %my_146
%my_148 = load i32**, i32*** @my_s
%my_149 = load i32, i32* %my_86
%my_150 = getelementptr inbounds i32*, i32** %my_148, i32 %my_149
%my_151 = load i32*, i32** %my_150
%my_152 = load i32, i32* %my_7
%my_153 = getelementptr inbounds i32, i32* %my_151, i32 %my_152
%my_154 = load i32, i32* %my_153
%my_155 = load i32**, i32*** @my_s
%my_156 = load i32, i32* %my_89
%my_157 = getelementptr inbounds i32*, i32** %my_155, i32 %my_156
%my_158 = load i32*, i32** %my_157
%my_159 = load i32, i32* %my_7
%my_160 = getelementptr inbounds i32, i32* %my_158, i32 %my_159
%my_161 = load i32, i32* %my_160
%my_162 = add nsw i32 %my_154, %my_161
store i32 %my_162, i32* %my_147
br label %my_build_163

my_build_163: 
%my_164 = load i32, i32* %my_7
%my_165 = add nsw i32 %my_164, 1
store i32 %my_165, i32* %my_7
br label %my_build_137

my_build_166: 
%my_167 = load i32*, i32** @my_now
%my_168 = getelementptr inbounds i32, i32* %my_167, i32 0
store i32 0, i32* %my_168
br label %my_build_169

my_build_169: 
br label %my_build_170

my_build_170: 
br label %my_buildreturn_block

my_buildreturn_block: 
ret void
}
define void @pushdown(i32 %my_1) {
my_pushdown: 
%my_2 = alloca i32
store i32 %my_1, i32* %my_2
%my_9 = alloca i32
%my_12 = alloca i32
%my_3 = load i32*, i32** @my_t
%my_4 = load i32, i32* %my_2
%my_5 = getelementptr inbounds i32, i32* %my_3, i32 %my_4
%my_6 = load i32, i32* %my_5
%my_7 = icmp sgt i32 %my_6, 0
br i1 %my_7, label %my_pushdown_8, label %my_pushdown_101
my_pushdown_8: 
%my_10 = load i32, i32* %my_2
%my_11 = mul nsw i32 %my_10, 2
store i32 %my_11, i32* %my_9
%my_13 = load i32, i32* %my_2
%my_14 = mul nsw i32 %my_13, 2
%my_15 = add nsw i32 %my_14, 1
store i32 %my_15, i32* %my_12
%my_16 = load i32*, i32** @my_now
%my_17 = load i32, i32* %my_9
%my_18 = getelementptr inbounds i32, i32* %my_16, i32 %my_17
%my_19 = load i32*, i32** @my_now
%my_20 = load i32, i32* %my_9
%my_21 = getelementptr inbounds i32, i32* %my_19, i32 %my_20
%my_22 = load i32, i32* %my_21
%my_23 = load i32*, i32** @my_t
%my_24 = load i32, i32* %my_2
%my_25 = getelementptr inbounds i32, i32* %my_23, i32 %my_24
%my_26 = load i32, i32* %my_25
%my_27 = add nsw i32 %my_22, %my_26
%my_28 = load i32, i32* @my_L
%my_29 = srem i32 %my_27, %my_28
store i32 %my_29, i32* %my_18
%my_30 = load i32*, i32** @my_sum
%my_31 = load i32, i32* %my_9
%my_32 = getelementptr inbounds i32, i32* %my_30, i32 %my_31
%my_33 = load i32**, i32*** @my_s
%my_34 = load i32, i32* %my_9
%my_35 = getelementptr inbounds i32*, i32** %my_33, i32 %my_34
%my_36 = load i32*, i32** %my_35
%my_37 = load i32*, i32** @my_now
%my_38 = load i32, i32* %my_9
%my_39 = getelementptr inbounds i32, i32* %my_37, i32 %my_38
%my_40 = load i32, i32* %my_39
%my_41 = getelementptr inbounds i32, i32* %my_36, i32 %my_40
%my_42 = load i32, i32* %my_41
store i32 %my_42, i32* %my_32
%my_43 = load i32*, i32** @my_t
%my_44 = load i32, i32* %my_9
%my_45 = getelementptr inbounds i32, i32* %my_43, i32 %my_44
%my_46 = load i32*, i32** @my_t
%my_47 = load i32, i32* %my_9
%my_48 = getelementptr inbounds i32, i32* %my_46, i32 %my_47
%my_49 = load i32, i32* %my_48
%my_50 = load i32*, i32** @my_t
%my_51 = load i32, i32* %my_2
%my_52 = getelementptr inbounds i32, i32* %my_50, i32 %my_51
%my_53 = load i32, i32* %my_52
%my_54 = add nsw i32 %my_49, %my_53
%my_55 = load i32, i32* @my_L
%my_56 = srem i32 %my_54, %my_55
store i32 %my_56, i32* %my_45
%my_57 = load i32*, i32** @my_now
%my_58 = load i32, i32* %my_12
%my_59 = getelementptr inbounds i32, i32* %my_57, i32 %my_58
%my_60 = load i32*, i32** @my_now
%my_61 = load i32, i32* %my_12
%my_62 = getelementptr inbounds i32, i32* %my_60, i32 %my_61
%my_63 = load i32, i32* %my_62
%my_64 = load i32*, i32** @my_t
%my_65 = load i32, i32* %my_2
%my_66 = getelementptr inbounds i32, i32* %my_64, i32 %my_65
%my_67 = load i32, i32* %my_66
%my_68 = add nsw i32 %my_63, %my_67
%my_69 = load i32, i32* @my_L
%my_70 = srem i32 %my_68, %my_69
store i32 %my_70, i32* %my_59
%my_71 = load i32*, i32** @my_sum
%my_72 = load i32, i32* %my_12
%my_73 = getelementptr inbounds i32, i32* %my_71, i32 %my_72
%my_74 = load i32**, i32*** @my_s
%my_75 = load i32, i32* %my_12
%my_76 = getelementptr inbounds i32*, i32** %my_74, i32 %my_75
%my_77 = load i32*, i32** %my_76
%my_78 = load i32*, i32** @my_now
%my_79 = load i32, i32* %my_12
%my_80 = getelementptr inbounds i32, i32* %my_78, i32 %my_79
%my_81 = load i32, i32* %my_80
%my_82 = getelementptr inbounds i32, i32* %my_77, i32 %my_81
%my_83 = load i32, i32* %my_82
store i32 %my_83, i32* %my_73
%my_84 = load i32*, i32** @my_t
%my_85 = load i32, i32* %my_12
%my_86 = getelementptr inbounds i32, i32* %my_84, i32 %my_85
%my_87 = load i32*, i32** @my_t
%my_88 = load i32, i32* %my_12
%my_89 = getelementptr inbounds i32, i32* %my_87, i32 %my_88
%my_90 = load i32, i32* %my_89
%my_91 = load i32*, i32** @my_t
%my_92 = load i32, i32* %my_2
%my_93 = getelementptr inbounds i32, i32* %my_91, i32 %my_92
%my_94 = load i32, i32* %my_93
%my_95 = add nsw i32 %my_90, %my_94
%my_96 = load i32, i32* @my_L
%my_97 = srem i32 %my_95, %my_96
store i32 %my_97, i32* %my_86
%my_98 = load i32*, i32** @my_t
%my_99 = load i32, i32* %my_2
%my_100 = getelementptr inbounds i32, i32* %my_98, i32 %my_99
store i32 0, i32* %my_100
br label %my_pushdown_101

my_pushdown_101: 
br label %my_pushdownreturn_block

my_pushdownreturn_block: 
ret void
}
define void @update(i32 %my_1, i32 %my_2, i32 %my_3) {
my_update: 
%my_4 = alloca i32
store i32 %my_1, i32* %my_4
%my_5 = alloca i32
store i32 %my_2, i32* %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_90 = alloca i32
%my_128 = alloca i32
%my_131 = alloca i32
%my_135 = alloca i32
%my_190 = alloca i32
%my_7 = load i32, i32* @my_pl
%my_8 = load i32, i32* %my_5
%my_9 = icmp sle i32 %my_7, %my_8
br i1 %my_9, label %my_update_9AND_AND_TRUE, label %my_update_9AND_AND_OUT
my_update_9AND_AND_TRUE: 
%my_10 = load i32, i32* @my_pr
%my_11 = load i32, i32* %my_6
%my_12 = icmp sge i32 %my_10, %my_11
br label %my_update_9AND_AND_OUT

my_update_9AND_AND_OUT: 
%my_13 = phi i1 [ false, %my_update ], [ %my_12, %my_update_9AND_AND_TRUE ]
br i1 %my_13, label %my_update_13AND_AND_TRUE, label %my_update_13AND_AND_OUT

my_update_13AND_AND_TRUE: 
%my_14 = load i32*, i32** @my_flag
%my_15 = load i32, i32* %my_4
%my_16 = getelementptr inbounds i32, i32* %my_14, i32 %my_15
%my_17 = load i32, i32* %my_16
%my_18 = icmp sgt i32 %my_17, 0
br label %my_update_13AND_AND_OUT

my_update_13AND_AND_OUT: 
%my_19 = phi i1 [ false, %my_update_9AND_AND_OUT ], [ %my_18, %my_update_13AND_AND_TRUE ]
br i1 %my_19, label %my_update_20, label %my_update_54

my_update_20: 
%my_21 = load i32*, i32** @my_now
%my_22 = load i32, i32* %my_4
%my_23 = getelementptr inbounds i32, i32* %my_21, i32 %my_22
%my_24 = load i32*, i32** @my_now
%my_25 = load i32, i32* %my_4
%my_26 = getelementptr inbounds i32, i32* %my_24, i32 %my_25
%my_27 = load i32, i32* %my_26
%my_28 = add nsw i32 %my_27, 1
%my_29 = load i32, i32* @my_L
%my_30 = srem i32 %my_28, %my_29
store i32 %my_30, i32* %my_23
%my_31 = load i32*, i32** @my_sum
%my_32 = load i32, i32* %my_4
%my_33 = getelementptr inbounds i32, i32* %my_31, i32 %my_32
%my_34 = load i32**, i32*** @my_s
%my_35 = load i32, i32* %my_4
%my_36 = getelementptr inbounds i32*, i32** %my_34, i32 %my_35
%my_37 = load i32*, i32** %my_36
%my_38 = load i32*, i32** @my_now
%my_39 = load i32, i32* %my_4
%my_40 = getelementptr inbounds i32, i32* %my_38, i32 %my_39
%my_41 = load i32, i32* %my_40
%my_42 = getelementptr inbounds i32, i32* %my_37, i32 %my_41
%my_43 = load i32, i32* %my_42
store i32 %my_43, i32* %my_33
%my_44 = load i32*, i32** @my_t
%my_45 = load i32, i32* %my_4
%my_46 = getelementptr inbounds i32, i32* %my_44, i32 %my_45
%my_47 = load i32*, i32** @my_t
%my_48 = load i32, i32* %my_4
%my_49 = getelementptr inbounds i32, i32* %my_47, i32 %my_48
%my_50 = load i32, i32* %my_49
%my_51 = add nsw i32 %my_50, 1
%my_52 = load i32, i32* @my_L
%my_53 = srem i32 %my_51, %my_52
store i32 %my_53, i32* %my_46
br label %my_updatereturn_block

my_update_54: 
%my_55 = load i32, i32* %my_5
%my_56 = load i32, i32* %my_6
%my_57 = icmp eq i32 %my_55, %my_56
br i1 %my_57, label %my_update_58, label %my_update_118

my_update_58: 
%my_59 = load i32*, i32** @my_sum
%my_60 = load i32, i32* %my_4
%my_61 = getelementptr inbounds i32, i32* %my_59, i32 %my_60
%my_62 = load i32*, i32** @my_sum
%my_63 = load i32, i32* %my_4
%my_64 = getelementptr inbounds i32, i32* %my_62, i32 %my_63
%my_65 = load i32, i32* %my_64
%my_66 = call i32 @square(i32 %my_65)
%my_67 = load i32, i32* @my_p
%my_68 = srem i32 %my_66, %my_67
store i32 %my_68, i32* %my_61
%my_69 = load i32*, i32** @my_b
%my_70 = load i32*, i32** @my_sum
%my_71 = load i32, i32* %my_4
%my_72 = getelementptr inbounds i32, i32* %my_70, i32 %my_71
%my_73 = load i32, i32* %my_72
%my_74 = getelementptr inbounds i32, i32* %my_69, i32 %my_73
%my_75 = load i32, i32* %my_74
%my_76 = icmp sgt i32 %my_75, 0
br i1 %my_76, label %my_update_77, label %my_update_117

my_update_77: 
%my_78 = load i32*, i32** @my_flag
%my_79 = load i32, i32* %my_4
%my_80 = getelementptr inbounds i32, i32* %my_78, i32 %my_79
store i32 1, i32* %my_80
%my_81 = load i32**, i32*** @my_s
%my_82 = load i32, i32* %my_4
%my_83 = getelementptr inbounds i32*, i32** %my_81, i32 %my_82
%my_84 = load i32*, i32** %my_83
%my_85 = getelementptr inbounds i32, i32* %my_84, i32 0
%my_86 = load i32*, i32** @my_sum
%my_87 = load i32, i32* %my_4
%my_88 = getelementptr inbounds i32, i32* %my_86, i32 %my_87
%my_89 = load i32, i32* %my_88
store i32 %my_89, i32* %my_85
store i32 0, i32* %my_90
store i32 1, i32* %my_90
br label %my_update_91

my_update_91: 
%my_92 = load i32, i32* %my_90
%my_93 = load i32, i32* @my_L
%my_94 = icmp slt i32 %my_92, %my_93
br i1 %my_94, label %my_update_95, label %my_update_116

my_update_95: 
%my_96 = load i32**, i32*** @my_s
%my_97 = load i32, i32* %my_4
%my_98 = getelementptr inbounds i32*, i32** %my_96, i32 %my_97
%my_99 = load i32*, i32** %my_98
%my_100 = load i32, i32* %my_90
%my_101 = getelementptr inbounds i32, i32* %my_99, i32 %my_100
%my_102 = load i32**, i32*** @my_s
%my_103 = load i32, i32* %my_4
%my_104 = getelementptr inbounds i32*, i32** %my_102, i32 %my_103
%my_105 = load i32*, i32** %my_104
%my_106 = load i32, i32* %my_90
%my_107 = sub nsw i32 %my_106, 1
%my_108 = getelementptr inbounds i32, i32* %my_105, i32 %my_107
%my_109 = load i32, i32* %my_108
%my_110 = call i32 @square(i32 %my_109)
%my_111 = load i32, i32* @my_p
%my_112 = srem i32 %my_110, %my_111
store i32 %my_112, i32* %my_101
br label %my_update_113

my_update_113: 
%my_114 = load i32, i32* %my_90
%my_115 = add nsw i32 %my_114, 1
store i32 %my_115, i32* %my_90
br label %my_update_91

my_update_116: 
br label %my_update_117

my_update_117: 
br label %my_updatereturn_block

my_update_118: 
%my_119 = load i32*, i32** @my_t
%my_120 = load i32, i32* %my_4
%my_121 = getelementptr inbounds i32, i32* %my_119, i32 %my_120
%my_122 = load i32, i32* %my_121
%my_123 = icmp sgt i32 %my_122, 0
br i1 %my_123, label %my_update_124, label %my_update_127

my_update_124: 
%my_125 = load i32, i32* %my_4
call void @pushdown(i32 %my_125)
br label %my_update_127

my_update_127: 
%my_129 = load i32, i32* %my_4
%my_130 = mul nsw i32 %my_129, 2
store i32 %my_130, i32* %my_128
%my_132 = load i32, i32* %my_4
%my_133 = mul nsw i32 %my_132, 2
%my_134 = add nsw i32 %my_133, 1
store i32 %my_134, i32* %my_131
%my_136 = load i32, i32* %my_5
%my_137 = load i32, i32* %my_6
%my_138 = add nsw i32 %my_136, %my_137
%my_139 = sdiv i32 %my_138, 2
store i32 %my_139, i32* %my_135
%my_140 = load i32, i32* @my_pl
%my_141 = load i32, i32* %my_135
%my_142 = icmp sle i32 %my_140, %my_141
br i1 %my_142, label %my_update_143, label %my_update_148

my_update_143: 
%my_144 = load i32, i32* %my_128
%my_145 = load i32, i32* %my_5
%my_146 = load i32, i32* %my_135
call void @update(i32 %my_144,i32 %my_145,i32 %my_146)
br label %my_update_148

my_update_148: 
%my_149 = load i32, i32* @my_pr
%my_150 = load i32, i32* %my_135
%my_151 = add nsw i32 %my_150, 1
%my_152 = icmp sge i32 %my_149, %my_151
br i1 %my_152, label %my_update_153, label %my_update_159

my_update_153: 
%my_154 = load i32, i32* %my_131
%my_155 = load i32, i32* %my_135
%my_156 = add nsw i32 %my_155, 1
%my_157 = load i32, i32* %my_6
call void @update(i32 %my_154,i32 %my_156,i32 %my_157)
br label %my_update_159

my_update_159: 
%my_160 = load i32*, i32** @my_sum
%my_161 = load i32, i32* %my_4
%my_162 = getelementptr inbounds i32, i32* %my_160, i32 %my_161
%my_163 = load i32*, i32** @my_sum
%my_164 = load i32, i32* %my_128
%my_165 = getelementptr inbounds i32, i32* %my_163, i32 %my_164
%my_166 = load i32, i32* %my_165
%my_167 = load i32*, i32** @my_sum
%my_168 = load i32, i32* %my_131
%my_169 = getelementptr inbounds i32, i32* %my_167, i32 %my_168
%my_170 = load i32, i32* %my_169
%my_171 = add nsw i32 %my_166, %my_170
store i32 %my_171, i32* %my_162
%my_172 = load i32*, i32** @my_flag
%my_173 = load i32, i32* %my_4
%my_174 = getelementptr inbounds i32, i32* %my_172, i32 %my_173
%my_175 = load i32*, i32** @my_flag
%my_176 = load i32, i32* %my_128
%my_177 = getelementptr inbounds i32, i32* %my_175, i32 %my_176
%my_178 = load i32, i32* %my_177
%my_179 = load i32*, i32** @my_flag
%my_180 = load i32, i32* %my_131
%my_181 = getelementptr inbounds i32, i32* %my_179, i32 %my_180
%my_182 = load i32, i32* %my_181
%my_183 = and i32 %my_178, %my_182
store i32 %my_183, i32* %my_174
%my_184 = load i32*, i32** @my_flag
%my_185 = load i32, i32* %my_4
%my_186 = getelementptr inbounds i32, i32* %my_184, i32 %my_185
%my_187 = load i32, i32* %my_186
%my_188 = icmp sgt i32 %my_187, 0
br i1 %my_188, label %my_update_189, label %my_update_238

my_update_189: 
store i32 0, i32* %my_190
store i32 0, i32* %my_190
br label %my_update_191

my_update_191: 
%my_192 = load i32, i32* %my_190
%my_193 = load i32, i32* @my_L
%my_194 = icmp slt i32 %my_192, %my_193
br i1 %my_194, label %my_update_195, label %my_update_234

my_update_195: 
%my_196 = load i32**, i32*** @my_s
%my_197 = load i32, i32* %my_4
%my_198 = getelementptr inbounds i32*, i32** %my_196, i32 %my_197
%my_199 = load i32*, i32** %my_198
%my_200 = load i32, i32* %my_190
%my_201 = getelementptr inbounds i32, i32* %my_199, i32 %my_200
%my_202 = load i32**, i32*** @my_s
%my_203 = load i32, i32* %my_128
%my_204 = getelementptr inbounds i32*, i32** %my_202, i32 %my_203
%my_205 = load i32*, i32** %my_204
%my_206 = load i32, i32* %my_190
%my_207 = load i32*, i32** @my_now
%my_208 = load i32, i32* %my_128
%my_209 = getelementptr inbounds i32, i32* %my_207, i32 %my_208
%my_210 = load i32, i32* %my_209
%my_211 = add nsw i32 %my_206, %my_210
%my_212 = load i32, i32* @my_L
%my_213 = srem i32 %my_211, %my_212
%my_214 = getelementptr inbounds i32, i32* %my_205, i32 %my_213
%my_215 = load i32, i32* %my_214
%my_216 = load i32**, i32*** @my_s
%my_217 = load i32, i32* %my_131
%my_218 = getelementptr inbounds i32*, i32** %my_216, i32 %my_217
%my_219 = load i32*, i32** %my_218
%my_220 = load i32, i32* %my_190
%my_221 = load i32*, i32** @my_now
%my_222 = load i32, i32* %my_131
%my_223 = getelementptr inbounds i32, i32* %my_221, i32 %my_222
%my_224 = load i32, i32* %my_223
%my_225 = add nsw i32 %my_220, %my_224
%my_226 = load i32, i32* @my_L
%my_227 = srem i32 %my_225, %my_226
%my_228 = getelementptr inbounds i32, i32* %my_219, i32 %my_227
%my_229 = load i32, i32* %my_228
%my_230 = add nsw i32 %my_215, %my_229
store i32 %my_230, i32* %my_201
br label %my_update_231

my_update_231: 
%my_232 = load i32, i32* %my_190
%my_233 = add nsw i32 %my_232, 1
store i32 %my_233, i32* %my_190
br label %my_update_191

my_update_234: 
%my_235 = load i32*, i32** @my_now
%my_236 = load i32, i32* %my_4
%my_237 = getelementptr inbounds i32, i32* %my_235, i32 %my_236
store i32 0, i32* %my_237
br label %my_update_238

my_update_238: 
br label %my_updatereturn_block

my_updatereturn_block: 
ret void
}
define i32 @query(i32 %my_2, i32 %my_3, i32 %my_4) {
my_query: 
%my_1 = alloca i32
%my_5 = alloca i32
store i32 %my_2, i32* %my_5
%my_6 = alloca i32
store i32 %my_3, i32* %my_6
%my_7 = alloca i32
store i32 %my_4, i32* %my_7
%my_21 = alloca i32
%my_24 = alloca i32
%my_28 = alloca i32
%my_33 = alloca i32
%my_8 = load i32, i32* @my_pl
%my_9 = load i32, i32* %my_6
%my_10 = icmp sle i32 %my_8, %my_9
br i1 %my_10, label %my_query_10AND_AND_TRUE, label %my_query_10AND_AND_OUT
my_query_10AND_AND_TRUE: 
%my_11 = load i32, i32* @my_pr
%my_12 = load i32, i32* %my_7
%my_13 = icmp sge i32 %my_11, %my_12
br label %my_query_10AND_AND_OUT

my_query_10AND_AND_OUT: 
%my_14 = phi i1 [ false, %my_query ], [ %my_13, %my_query_10AND_AND_TRUE ]
br i1 %my_14, label %my_query_15, label %my_query_20

my_query_15: 
%my_16 = load i32*, i32** @my_sum
%my_17 = load i32, i32* %my_5
%my_18 = getelementptr inbounds i32, i32* %my_16, i32 %my_17
%my_19 = load i32, i32* %my_18
store i32 %my_19, i32* %my_1
br label %my_queryreturn_block

my_query_20: 
%my_22 = load i32, i32* %my_5
%my_23 = mul nsw i32 %my_22, 2
store i32 %my_23, i32* %my_21
%my_25 = load i32, i32* %my_5
%my_26 = mul nsw i32 %my_25, 2
%my_27 = add nsw i32 %my_26, 1
store i32 %my_27, i32* %my_24
%my_29 = load i32, i32* %my_6
%my_30 = load i32, i32* %my_7
%my_31 = add nsw i32 %my_29, %my_30
%my_32 = sdiv i32 %my_31, 2
store i32 %my_32, i32* %my_28
store i32 0, i32* %my_33
%my_34 = load i32*, i32** @my_t
%my_35 = load i32, i32* %my_5
%my_36 = getelementptr inbounds i32, i32* %my_34, i32 %my_35
%my_37 = load i32, i32* %my_36
%my_38 = icmp sgt i32 %my_37, 0
br i1 %my_38, label %my_query_39, label %my_query_42

my_query_39: 
%my_40 = load i32, i32* %my_5
call void @pushdown(i32 %my_40)
br label %my_query_42

my_query_42: 
%my_43 = load i32, i32* @my_pl
%my_44 = load i32, i32* %my_28
%my_45 = icmp sle i32 %my_43, %my_44
br i1 %my_45, label %my_query_46, label %my_query_55

my_query_46: 
%my_47 = load i32, i32* %my_33
%my_48 = load i32, i32* %my_21
%my_49 = load i32, i32* %my_6
%my_50 = load i32, i32* %my_28
%my_51 = call i32 @query(i32 %my_48,i32 %my_49,i32 %my_50)
%my_52 = add nsw i32 %my_47, %my_51
%my_53 = load i32, i32* @my_MOD
%my_54 = srem i32 %my_52, %my_53
store i32 %my_54, i32* %my_33
br label %my_query_55

my_query_55: 
%my_56 = load i32, i32* @my_pr
%my_57 = load i32, i32* %my_28
%my_58 = add nsw i32 %my_57, 1
%my_59 = icmp sge i32 %my_56, %my_58
br i1 %my_59, label %my_query_60, label %my_query_70

my_query_60: 
%my_61 = load i32, i32* %my_33
%my_62 = load i32, i32* %my_24
%my_63 = load i32, i32* %my_28
%my_64 = add nsw i32 %my_63, 1
%my_65 = load i32, i32* %my_7
%my_66 = call i32 @query(i32 %my_62,i32 %my_64,i32 %my_65)
%my_67 = add nsw i32 %my_61, %my_66
%my_68 = load i32, i32* @my_MOD
%my_69 = srem i32 %my_67, %my_68
store i32 %my_69, i32* %my_33
br label %my_query_70

my_query_70: 
%my_71 = load i32, i32* %my_33
store i32 %my_71, i32* %my_1
br label %my_queryreturn_block

my_queryreturn_block: 
%my_72 = load i32, i32* %my_1
ret i32 %my_72
}
