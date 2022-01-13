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
declare i8 @ord(i8* %my_1, i32 %my_2)
declare i1 @string_equal(i8* %my_1, i8* %my_2)
declare i1 @string_notEqual(i8* %my_1, i8* %my_2)
declare i1 @string_less(i8* %my_1, i8* %my_2)
declare i1 @string_lessEqual(i8* %my_1, i8* %my_2)
declare i1 @string_greater(i8* %my_1, i8* %my_2)
declare i1 @string_greaterEqual(i8* %my_1, i8* %my_2)
define void @A(%class.A* %my_1) {
my_A: 
%my_2 = alloca %class.A*
store %class.A* %my_1, %class.A** %my_2
%my_3 = load %class.A*, %class.A** %my_2
%my_4 = getelementptr inbounds %class.A, %class.A* %my_3, i32 0, i32 0
store i32 1, i32* %my_4
ret void
}
define i32 @classA_geta(%class.A* %my_2) {
my_classA_geta: 
%my_1 = alloca i32
%my_3 = alloca %class.A*
store %class.A* %my_2, %class.A** %my_3
%my_4 = load %class.A*, %class.A** %my_3
%my_5 = getelementptr inbounds %class.A, %class.A* %my_4, i32 0, i32 0
%my_6 = load i32, i32* %my_5
store i32 %my_6, i32* %my_1
%my_7 = load i32, i32* %my_1
ret i32 %my_7
}
define i32 @main() {
my_main: 
%my_1 = alloca i32
%my_2 = alloca %class.A
%my_3 = alloca i32
call void @A(%class.A* %my_2)
%my_4 = call i32 @classA_geta(%class.A* %my_2)
store i32 %my_4, i32* %my_3
store i32 0, i32* %my_1
%my_5 = load i32, i32* %my_1
ret i32 %my_5
}