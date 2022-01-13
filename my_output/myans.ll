%class.A = type { i32 }

define void @A(%class.A* %my_1) {
my_A: 
%my_2 = alloca %class.A*
store %class.A* %my_1, %class.A** %my_2
%my_3 = getelementptr inbounds %class.A, %class.A* %my_2, i32 0, i32 0
store i32 1, i32* %my_3
ret void
}
define i32 @classA_geta(%class.A* %my_2) {
my_classA_geta: 
%my_1 = alloca i32
%my_3 = alloca %class.A*
store %class.A* %my_2, %class.A** %my_3
%my_4 = getelementptr inbounds %class.A, %class.A* %my_3, i32 0, i32 0
store i32* %my_4, i32* %my_1
%my_5 = load i32, i32* %my_1
ret i32 %my_5
}
define i32 @main() {
my_main: 
%my_1 = alloca i32
%my_2 = alloca i32
%my_3 = alloca %class.A
store i32 0, i32* %my_2
%my_4 = alloca %class.A
%my_5 = bitcast %class.A* %my_4 to %class.A
store %class.A %my_5, %class.A* %my_3
call void @A(%class.A* %my_3)
%my_6 = call i32 @classA_geta(%class.A* %my_3)
store i32 %my_6, i32* %my_2
store i32 0, i32* %my_1
%my_7 = load i32, i32* %my_1
ret i32 %my_7
}
