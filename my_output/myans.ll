define i32 @a(i32 %my_1) {
%my_0 = alloca i32
%my_2 = alloca i32
store i32 %my_1, i32* %my_2
%my_3 = load i32, i32* %my_2
store i32 %my_3, i32* %my_0
%my_4 = load i32, i32* %my_0
ret i32 %my_4
}
define i32 @main() {
%my_0 = alloca i32
%my_1 = alloca i32
%my_6 = alloca i32
store i32 1, i32* %my_1
br label %my_2
my_2: 
%my_3 = load i32, i32* %my_1
%my_4 = icmp slt i32 %my_3, 10
br i1 %my_4, label %my_5, label %my_12

my_5: 
%my_7 = load i32, i32* %my_1
%my_8 = call i32 @a(i32 %my_7)
store i32 %my_8, i32* %my_6
br label %my_9

my_9: 
%my_10 = load i32, i32* %my_1
%my_11 = add nsw i32 %my_10, 1
store i32 %my_11, i32* %my_1
br label %my_2

my_12: 
%my_13 = load i32, i32* %my_0

ret i32 %my_13
}