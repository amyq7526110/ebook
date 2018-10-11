#!/bin/bash


   #   等号操作符

   #   变量赋值
 
   #       初始化或者修改变量的值

   #    =

   #       无论在算术运算还是字符串运算中，都是赋值语句

   var=27

   category=minerais #  NO spaces allow ed after the "=".

   #   注意：不要和"="test操作符混淆

       #  = as a test operator

       if [ "$string1"  = "$string2"  ] 

       #  if [ "X$string1" = "X$string2" ] is safer.

       #  to prevent an error message should one of the variables be empty.

       # (The prepended "X" characters caancel out.)

       then

            echo "haha"


       fi	      



#      算术操作符


#      +     加法
#      -     减法
#      *     乘法
#      /     除法
#      **    幂运算 
#            1 # Bash, version 2.02, introduced the "**" exponentiation operator.
#            2
#            3 let "z=5**3"
#            4 echo "z = $z"
#            # z = 125

#     % 取模

#      bash$ expr 5 % 3
#      5/3=1 余 2
#      模运算经常用在其它的事情中,比如产生特定的范围的数字(Example 9-24,Example 9-27)和格式化程序的输出(Example 26-15,Example A-6).它甚至可以用来产生质数,(Example A-16).事实上取模运算在算术运算中使用的频率惊人的高

   
