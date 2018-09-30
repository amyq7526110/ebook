#!/bin/bash


#   变量赋值 

#   =       赋值操作符（前后都不能空白）

#           不要与-eq混淆，那是 test，并不是赋值

#           注意,= 也可以用来作 test 操作，这依赖于上下文

#    4-2 一般的变量赋值 

    
#   "裸体"变量


    echo


#   变量什么时候是"裸体"的，比如前边少了$的时候

#   当他被赋值的时候，而不是被引用的时候



#   赋值

    a=879

    echo "The value of \"a\" is $a."


#   使用 let 赋值


    let a=16+5
    
    echo "The value of \"a\" is $a."


    echo


#   在for循环中    

    echo -n "Values of \"a\" is now $a."
 
    for a in 7 8 9 11
      
    do

        echo -n "$a "

    done


    echo 
    echo

#   在read 命令状态中

    echo  -n "Enter \"a\""

    read a

    echo "The value of \"a\" is now $a."


    echo 


    exit 0

















