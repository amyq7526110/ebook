#!/bin/bash

 # 嵌入一个换行?

 echo "Why doesn't this string \n split on two lines?"

 #  上边这句的 \n 将被打印出来,达不到换行的目的

 #  让我们在试一试其他方法

 echo 

 echo $"A line of text containing
 a linefeed."

 # 打印出 2 个独立的行,(潜入换行成功了).
 # 但是,"$"前缀是否是必要的?

 echo 

 echo "This string splits
 on two lines"

 # 不是非得有$""前缀

 echo 
 
 echo

 echo "--------------"

 echo 

 echo

 # 然而,下面的代码就没能像期望的那样运行

 # Why not ? Hint: Assignment to a variable

 # 为什么失败? 提示: 因为分配到了变量.

 string1=$"Yet another line of text containing 
 a linefeed(meybe)."

 echo $string1

 # Yet another line of text containing  a linefeed(meybe)

 # 换行变成了空格

 # Thanks, Steve Parker, for pointing this out.




