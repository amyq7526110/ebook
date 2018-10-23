#!/bin/bash

   # 一个 while 循环可以有多个判断条件,但是只有最后一个才能决定是否退出循环.然而这需要一种有点不同的循环语法.


   # 多条件的 while 循环


   var1=unset

   previous=$var1

   while echo "previous-variable = $previous"

         echo

	 previous=$var1

	 [ "$var1" != end ]  # 记录之前的$var1

	 # 这个"while" 循环有四个条件，但是只有最后一个能够控制循环

   do


      echo "input variable #1(end to exit)"

      read var1 
      

      echo "variable #1 = $var1"

   done

   # 尝试理解这个脚本的运行过程.
   # 这里还是有点小技巧的.

   exit  0

