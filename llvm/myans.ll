@my_n = global i32 0
@my_.str.0 = private constant [4 x i8] c"YES\00"
@my_.str.1 = private constant [3 x i8] c"NO\00"

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
%my_2 = call i32 @getInt()
store i32 %my_2, i32* @my_n
%my_3 = load i32, i32* @my_n
%my_4 = srem i32 %my_3, 4
%my_5 = icmp eq i32 %my_4, 0
br i1 %my_5, label %my_main_5OR_OR_OUT, label %my_main_5OR_OR_FALSE
my_main_5OR_OR_FALSE: 
%my_6 = load i32, i32* @my_n
%my_7 = srem i32 %my_6, 7
%my_8 = icmp eq i32 %my_7, 0
br label %my_main_5OR_OR_OUT

my_main_5OR_OR_OUT: 
%my_9 = phi i1 [ true, %my_main ], [ %my_8, %my_main_5OR_OR_FALSE ]
br i1 %my_9, label %my_main_9OR_OR_OUT, label %my_main_9OR_OR_FALSE

my_main_9OR_OR_FALSE: 
%my_10 = load i32, i32* @my_n
%my_11 = srem i32 %my_10, 47
%my_12 = icmp eq i32 %my_11, 0
br label %my_main_9OR_OR_OUT

my_main_9OR_OR_OUT: 
%my_13 = phi i1 [ true, %my_main_5OR_OR_OUT ], [ %my_12, %my_main_9OR_OR_FALSE ]
br i1 %my_13, label %my_main_13OR_OR_OUT, label %my_main_13OR_OR_FALSE

my_main_13OR_OR_FALSE: 
%my_14 = load i32, i32* @my_n
%my_15 = srem i32 %my_14, 74
%my_16 = icmp eq i32 %my_15, 0
br label %my_main_13OR_OR_OUT

my_main_13OR_OR_OUT: 
%my_17 = phi i1 [ true, %my_main_9OR_OR_OUT ], [ %my_16, %my_main_13OR_OR_FALSE ]
br i1 %my_17, label %my_main_17OR_OR_OUT, label %my_main_17OR_OR_FALSE

my_main_17OR_OR_FALSE: 
%my_18 = load i32, i32* @my_n
%my_19 = srem i32 %my_18, 477
%my_20 = icmp eq i32 %my_19, 0
br label %my_main_17OR_OR_OUT

my_main_17OR_OR_OUT: 
%my_21 = phi i1 [ true, %my_main_13OR_OR_OUT ], [ %my_20, %my_main_17OR_OR_FALSE ]
br i1 %my_21, label %my_main_22, label %my_main_25

my_main_22: 
%my_23 = bitcast [4 x i8]* @my_.str.0 to i8*
call void @print(i8* %my_23)
br label %my_main_28

my_main_25: 
%my_26 = bitcast [3 x i8]* @my_.str.1 to i8*
call void @print(i8* %my_26)
br label %my_main_28

my_main_28: 
br label %my_mainreturn_block

my_mainreturn_block: 
%my_29 = load i32, i32* %my_1
ret i32 %my_29
}

