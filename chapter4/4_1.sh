#!/bin/bash

#    4.1 变量替换
#    ------------
#    $   变量替换操作符

#    只有在变量被声明,赋值,unset 或 exported 或者是在变量代表一个 signal 的时候,
#    变量才会是以本来的面目出现在脚本里.变量在被赋值的时候,可能需要使用"=",
#    read 状态或者是在循环的头部.

#    在""中还是会发生变量替换,这被叫做部分引用,或叫弱引用.而在''中就不会发生变
#    量替换,这叫做全引用,也叫强引用.具体见第 5 章的讨论.
#    注意:$var 与${var}的区别,不加{},在某些上下文将引起错误,为了安全,使用 2.

#    具体见 9.3 节 参数替换.

#  ----

#    变量赋值和替换


     a=375

     hello=$a


#  ----------------------------------------------------

#  强烈注意,在赋值的前后一定不要有空格

#  如果有空格会发生什么

#  如果： "VARIABLE =value",

#      ^  

#  脚本将会尝试运行一个"VARIABLE"的命令，带着 "=value" decanshu

#  如果 ："VARABLE= value"

#      ^ 

#+  script  tries to run "values" command with 
#+  脚本将尝试运行一个"value"的命令，带着
#+  the environmental variable "VARIABLE" set to ""
#+  一个被赋值""值的环境变量"VARIABLE"

# --------------------------

    hello=hello

    echo hello  # 没有变量的引用，不过是个hello字符串

    echo $hello

    echo ${hello} # 同上

    echo "$hello"

    echo "${hello}"


    hello="A B  C   D"

    echo $hello     # A B C D

    echo "$hello"   # A B  C   D

#  就像你看到的 上面两个 将输出 不同的结果


#  Quoting a variable presevers whitespace.
#  引用一个变量将保留其中的空白，当然，如果是变量替换就不会保留


   echo

     
   echo '$hello'    # $hello

#  ^ 全变量的引用
#+   将导致"$" 变成一个单独的字符

   hello=           # 将 hello 设为空值

   echo "\$hello(null value) = $hello"

#  注意设置一个变量为空,与unset它,不是一回事

#


# -------------------------------------------------------



#   可以在同一行上设置多个变量

#+   要以空白分隔

#   者会降低可读性，和可移植性

   var1=21 var2=22 var3=23

   echo 

   echo "var1=$var1 var2=$var2 var3=$var3"

#  老版本的 sh 上 可能有问题

#  -----------------------------------

   echo ; echo   
  
   numbers="one two three"

#              ^   ^

   other_numbers="1 2 3"

#                  ^ ^

#  如果变量中有空白，那么引用就很有必要了

    echo "number= $numbers"   

    echo "other_number = $other_numbers"
    
    echo 


    echo "uninitialized_variable = $uninitialized_variable"
     
#   Uninitialized 变量为空值（没有赋值）

    uninitialized_variable=  # 声明，但没有初始化
 
    echo "uninitialized_variable = $uninitialized_variable"

                             #+ 其实和前边设置为空值的作用一样

			     #   还是一个空值

   			     
    uninitialized_variable=23  # 赋值

    unset  uninitialized_variable  # unset it.


    echo "uninitialized_variable = $uninitialized_variable"

			     #   还是一个空值

    echo 

    exit 0
  

 

















