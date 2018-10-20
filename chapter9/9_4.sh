#!/bin/bash

    #  指定类型的变量:declare 或者 typeset

    #  declare 或者 typeset 内建命令(这两个命令是完全一样的)允许指定变量的具体类型.在某些特定的语言中,这是一种指定类型的很弱的形式.declare 命令是在 Bash 版本 2 或之后的版本才被加入的.typeset 命令也可以工作在 ksh 脚本中.

    # -r 只读

    #  declare -r var1

    #  (declare -r var1 与 readonly var1 是完全一样的)

    #  这和C语言中的const关键字一样，都是强制指定只读,如果你尝试
    #+ 修改一个只读变量的值，那么你会得到一个错误的提示

    # -i 整形

    declare  -i number

    #  这个脚本将把变量"number"后边的赋值视为一个整形

    number=3

    echo "Number = $number"   # Number = 3

    number=three

    echo "Number = $number"   #  Number = 0

   # 尝试把"three" 解释为整形

   #  如果把一个变量指定为整形,那么即使没有 expr 和 let 命令,也允许使用特定的算术运算

   n=6/3

   echo "n = $n"     # 6/3

   declare -i n

   n=6/3
 
   echo "n = $n"     # n=2


   #  -a 数组

   declare -a indices

   #  变量indices将被视为数组

   #  -f 函数

   #  declare -f

   #  如果使用 declare -f 而不带参数的话,将会列出这个脚本中之前定义的所有函数

   #  declare -f funcation_name

   #  如果使用 declare -f function_name 这种形式的话,将只会列出这个函数的名字.

   # -x export

   # declare -x var3

   #  这种方式,将会把var3 export出来

     foo ()
     {
     FOO="bar"
     }
     
     bar ()
     {
     foo
     echo $FOO
     }
     bar
     # Prints bar.
     # 然而...
     foo (){
     declare FOO="bar"
     }
     
     bar ()
     {
     echo $FOO
     }
     
     bar # Prints nothing.
     
     
      # Thank you, Michael Iatrou, for pointing this out.



   
  
