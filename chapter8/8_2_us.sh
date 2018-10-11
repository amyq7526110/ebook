#!/bin/bash 


#    +=       加等于(通过常量增加变量)
#             let "var += 5" #var 将在本身值的基础上增加 5

#    -=       减等于

#    *=       乘等于
#             let "var *= 4"

#    /=       除等于

#    %=       取模赋值,算术操作经常使用 expr 或者 let 表达式.



#    Example 8-2 使用算术操作符

  
     #  Counting to 11 in 10 different ways


     n=1; echo -n "$n "


     let "n = $n + 1"   # let  "n = n + 1" 这么写也可以

     echo -n "$n "

     


     : $((n = $n + 1))

     #  : 是必须的，因为如果没有：的话 ,Bash 将
     
     #+ 尝试把"$((n = $n + 1))"解释成一个命令

     echo -n "$n "


     (( n = n + 1 ))


     #  对于上边的方法的一个更简单的选则

     #  Thanks, David Lombard , for pointing this out

     echo -n "$n "

     n=$(($n + 1))

     echo -n "$n "

     : $[  n = $n + 1  ]

     #  : 是必须的，因为如果没有：的话 ,Bash 将
     
     #+ 尝试把"$[ n = $n + 1 ]"解释成一个命令

     # 即使"n" 被初始化成为一个字符串

     echo -n "$n "

     n=$[  $n +1 ]

     # 即使"n" 被初始化成为一个字符串

     #     * Avoid this type of construct, since it is obsolete and nonportable.

     #  尽量避免这种类型的结果,因为这已经被废弃了,并且不具可移植性

     echo -n "$n "

     # 现在来一个C风格的增量操作

     let "n++"     #  let "++n"  also works

     echo -n "$n "


     (( n++ ))     #  (( ++n )) also works.

     echo -n "$n "

     : $[ n++ ]     #  :$[ ++n ] also works.

     echo -n "$n "

     echo 

     exit 0


















