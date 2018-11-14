#!/bin/bash 

  #  factor 将一个正数分解为多个素数.

  factor 27417
  
  #  27417: 3 13 19 37 


  #  bc  Bash 不能处理浮点运算, 并且缺乏特定的一些操作,
  #  这些操作都是一些重要的计算功能.幸运的是, bc 可以解决这个问题.
  #  bc 不仅仅是个多功能灵活的精确的工具, 而且它还提供许多编程语言
  #  才具备的一些方便的功能.bc 比较类似于 C 语言的语法.
  #  因为它是一个完整的 UNIX 工具, 所以它可以用在管道中, 
  #  bc 在脚本中也是很常用的.
  #  这里有一个简单的使用 bc 命令的模版可以用来在计算脚本中的变量.
  #  用在命令替换中.
   
  #  variable=$(echo "OPTIONS; OPERATIONS" | bc)

     echo "6 *  2" | bc 

     # 12









    
