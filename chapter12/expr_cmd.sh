#!/bin/bash

   expr 3 + 5
   
   #  return 8

   expr 5 % 3

   #  return 2

   expr 1 / 0

   # 返回错误消息， expr: division by zero

   expr 5 \* 3

   #  return 15

   #+   在算术表达式 expr 中使用乘法操作时, 乘法符号必须被转义.

   y=`expr $y + 1`

   # 增加变量的值, 与 let y=y+1 和 y=$(($y+1)) 的效果相同. 这是使用算术表达式的
   # 一个例子.
 
   string=abcdefghijk

   position=3
 
   length=3

   z=`expr substr $string $position $length`

   echo $z

   # 在位置$position 上提取$length 长度的子串.

   exit 0

   


  


