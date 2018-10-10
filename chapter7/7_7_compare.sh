#!/bin/bash


   #  混合比较

    
   #  -a   逻辑与

   #       exp1 -a exp2 如果 exp1 和 exp2 都为 true 的话,
   #+      这个表达式将返回 true

   #  -o   逻辑或

   #       exp1 -o exp2 如果 exp1 和 exp2 中有一个为 true 的话,
   #+      那么这个表达式就返回 true



   #   这与 Bash 的比较操作符&&和||很相像.在[[]]中使用它.

   #   [[ condition1 && condition2 ]]

   #    -o 和-a 一般都是和 test 命令或者是[]一起工作.

   #   if [ "$exp1" -a "$exp2" ]

   #    注意事项
   #    S.C.(这家伙是个人名)指出,在使用混合比较的时候即使"$var"也可能会产生问题.
   #    如果$string 为空的话,[ -n "$string" -o "$a" = "$b" ]可能在某些版本的 Bash 中
   #    会有问题.为了附加一个额外的字符到可能的空变量中的一种安全的办法是,
   #    [ "x$string" != x -o "x$a" = "x$b" ](the "x's" cancel out)(没看懂).
   #    cancel out 是抵消的意思.




