@my_a = global i32 0
%class.A = type { i32 }

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
%my_2 = alloca %class.A*
%my_3 = call i8* @malloc(i64 4)
%my_4 = bitcast i8* %my_3 to %class.A*
call void @A(%class.A* %my_4)
%my_5 = bitcast %class.A* %my_4 to %class.A*
store %class.A* %my_5, %class.A** %my_2
%my_6 = load %class.A*, %class.A** %my_2
%my_7 = call i32 @classA_get(%class.A* %my_6,i32 2)
call void @printlnInt(i32 %my_7)
br label %my_mainreturn_block
my_mainreturn_block: 
%my_9 = load i32, i32* %my_1
ret i32 %my_9
}
define void @A(%class.A* %my_1) {
my_A: 
%my_2 = alloca %class.A*
store %class.A* %my_1, %class.A** %my_2
br label %my_Areturn_block
my_Areturn_block: 
ret void
}
define i32 @classA_get(%class.A* %my_2, i32 %my_3) {
my_classA_get: 
%my_1 = alloca i32
%my_4 = alloca %class.A*
store %class.A* %my_2, %class.A** %my_4
%my_5 = alloca i32
store i32 %my_3, i32* %my_5
%my_6 = load i32, i32* %my_5
store i32 %my_6, i32* %my_1
br label %my_classA_getreturn_block
my_classA_getreturn_block: 
%my_7 = load i32, i32* %my_1
ret i32 %my_7
}