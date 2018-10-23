#!/bin/bash


#   对代码块进行操作是有组织的结构化的 shell 脚本的关键.为了达到这个目的,循环和分支提供帮助.

   # 循环就是重复一些命令的代码块,如果条件不满足就退出循环.

   #  for loops
   #  for arg in [list]

   #  这是一个基本的循环结构.它与 C 的相似结构有很大不同.

   #  for arg in [list]
   #  do
   #  command(s)...
   #  done


   # 注意:在循环的每次执行中,arg 将顺序的存取 list 中列出的变量.
   # 
   # 
   # 
   # 
   # for arg in "$var1" "$var2" "$var3" ... "$varN"
   # # 在第 1 次循环中, arg = $var1
   # # 在第 2 次循环中, arg = $var2
   # # 在第 3 次循环中, arg = $var3
   # # ...
   # # 在第 n 次循环中, arg = $varN
   # 
   # # 在[list]中的参数加上双引号是为了阻止单词分离.
   # list 中的参数允许包含通配符.
   # 如果 do 和 for 想在同一行出现,那么在它们之间需要添加一个";".
   # for arg in [list]; do


   #  while

   #  这种结构在循环的开头判断条件是否满足,如果条件一直满足,那就一直循环下去(0 为退出码).与 for 循环的区别是,这种结构适合用在循环次数未知的情况下.

   #  while [condition]

   #  do

      #  command...

   #  done

   #  和 for 循环一样,如果想把 do 和条件放到同一行上还是需要一个";".
   #  while [condition]; do
#  注意一下某种特定的 while 循环,比如 getopts 结构,好像和这里所介绍的模版有点脱节.


   #  注意:while 循环的 stdin 可以用<来重定向到文件.whild 循环的 stdin 支持管道.


   #  until

   #  这个结构在循环的顶部判断条件,并且如果条件一直为 false 那就一直循环下去.(与 while  相反)


   #  until [condition-is-true]

   #  do

       #  command...
   
   #  done

   #  注意: until 循环的判断在循环的顶部,这与某些编程语言是不同的.

   #  与 for 循环一样,如果想把 do 和条件放在一行里,就使用";".

   #  until [condition-is-true]; do

