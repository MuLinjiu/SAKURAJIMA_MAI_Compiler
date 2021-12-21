@my_a = global i32 1
@my_b = global i32 0

define i32 @main() {
my_main: 
%my_3 = alloca i32
%my_4 = alloca i8
%my_1 = load i32, i32* @my_a
%my_2 = sub nsw i32 %my_1, 1
store i32 %my_2, i32* @my_b
%my_5 = load i32, i32* @my_a
%my_6 = icmp eq i32 %my_5, 1
br i1 %my_6, label %my_6AND_AND_TRUE, label %my_6AND_AND_OUT
my_6AND_AND_TRUE: 
%my_7 = load i32, i32* @my_b
%my_8 = icmp eq i32 %my_7, 0
br label %my_6AND_AND_OUT

my_6AND_AND_OUT: 
%my_9 = phi i1 [ 0, %my_main ], [ %my_8, %my_6AND_AND_TRUE ]
%my_10 = zext i1 %my_9 to i8
store i8 %my_10, i8* %my_4
store i32 0, i32* %my_3
%my_11 = load i32, i32* %my_3

ret i32 %my_11
}