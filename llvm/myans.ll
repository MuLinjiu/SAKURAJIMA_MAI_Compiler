@my_key = global i32 0
@my_data = global i32 0
@my_next = global %class.node* null
%class.node = type { i32, i32, %class.node* }

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
%my_2 = alloca %class.node*
store %class.node* null, %class.node** %my_2
%my_3 = load %class.node*, %class.node** %my_2
br i1 null, label %my_main_4, label %my_main_6
my_main_4: 
call void @printlnInt(i32 1)
br label %my_main_8

my_main_6: 
call void @printlnInt(i32 2)
br label %my_main_8

my_main_8: 
br label %my_mainreturn_block

my_mainreturn_block: 
%my_9 = load i32, i32* %my_1
ret i32 %my_9
}
define void @node(%class.node* %my_1) {
my_node: 
%my_2 = alloca %class.node*
store %class.node* %my_1, %class.node** %my_2
br label %my_nodereturn_block
my_nodereturn_block: 
ret void
}