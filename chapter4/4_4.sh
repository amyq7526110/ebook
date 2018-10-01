#!/bin/bash


   # 4.3 Bash 变量是部分类型的

   # 不像其他程序语言一样,Bash 并不对变量区分"类型".本质上,Bash 变量都是字符串. 但是依赖于上下文,Bash 也允许比较操作和算术操作.决定这些的关键因素就是,变量中的值 是否只有数字. 

   # 整型还是string? 

   # int-or-string

   a=2334     # 整形

   let "a += 1"

   echo "a = $a"   # a=2335

   echo 



   b=${a/23/BB}   # 将23替换成BB

                 # 这将把b变量从整形变为string

   echo "b = $b" # b = BB35

   declare -i b  # 即使使用了declare命令也不会有任何帮助

   echo "b = $b" # b = BB35

   let "b += 1"  # BB35 + 1 =

   echo "b = $b" # b = 1

   echo 


   #  关于空变量怎么样

   e=""

   echo "e = $e"  # e =
   
   let "e +=1 "   # 算数操作是否允许一个空变量
   
   echo "e = $e"  # e = 1

   echo           # 将空变量转化为一个整形变量

   #  关于未声明的变量会怎么样

   echo "f = $f"  # f =

   let "f += 1"   # 算数操作允许吗

   echo "f = $f"  # f = 1  

   echo           # 未声明的变量将会转化成一个整形变量

   #   所以说bash中的变量都是无类型的

   exit 0













    
