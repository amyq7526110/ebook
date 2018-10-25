#!/bin/bash

#  注意: 这个命令是 shell 的一个内建命令,与/bin/echo 不同,虽然行为相似.  


     type -a echo

#    echo is a shell builtin

#    echo is /bin/echo


#  printf
#  printf 命令,格式化输出,是 echo 命令的增强.它是 C 语言 printf()库函数的一个有限的变形,
#  并且在语法上有些不同.printf format-string... parameter...
#  这是 Bash 的内建版本,与/bin/printf 或/usr/bin/printf 命令不同.想更深入的了解,请
#  察看 printf(系统命令)的 man 页.
#  注意:老版本的 Bash 可能不支持 printf.

   # printf-demo

   PI=3.14159265358979

   DecimalConstant=31373

   Message1="Greetings,"

   Message2="Earthling."


   echo

   printf "Pi to 2 decimal places = %1.2f" $PI

   echo

   printf "Pi to 9 decimal places = %1.9f" $PI  # 都能正确地结束

   printf "\n"                           #      打印一个换行

                                         #      等价于 "echo"

   printf "Constant= \t%d\n" $DecimalConstant   # 插入一个 tab (\t).

   printf "%s %s \n" $Message1 $Message2  

   echo 


   #  模仿C函数,sprintf().

   #  使用一个格式化的字符串来加载一个变量.


   echo 

   Pi12=$(printf "%1.12f" $PI)

   echo "Pi to 12 decimal places = $Pi12"

   Msg=`printf "%s %s \n" $Message1 $Message2` 

   echo $Msg;echo $Msg

   # 向我们看到的一样,现在'sprintf'函数可以37 #+ 作为一个可被加载的模块
   #+ 但这是不可移植的.

# 0---------------

   # 使用 printf 的最主要的应用就是格式化错误消息.

   E_BadDir=65

   var=nonexistent_directory

   error(){
   
    printf "$@" >&2

    # 格式化传递进来的位置参数,并把它们送到 stderr.

    echo 

    exit $E_BadDir

   }

   cd $var || error $"Can't cd to %s." "$var"

   # Thanks S.C













   
   exit 0

   #######




 
