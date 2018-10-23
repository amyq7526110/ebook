#!/bin/bash

  # 与 for 循环一样,while 循环也可通过(())来使用 C 风格语法.(见 Example 9-30)
  # Example 10-17 C 风格的 while 循环



  # wh-loopc.sh  循环10次的while循环

  Limit=10

  a=1

  while [  "$a" -le $Limit ]

  do

    echo -n "$a "

    let "a += 1 "

  done    # 到目前为止 都没什么令人惊奇的地方

  echo ; echo 
  


  #  现在，重复C风格的语法

  ((a = 1))  # a=1

  # 双圆括号允许赋值两边的空格，就像C语言一样


  while ((a <= Limit))  # 双圆括号，变量前面没有"$".

  do
    
     echo -n "$a "

     ((a += 1))  # let "a += 1"

     # Yes, 看到了吧.

     # 双圆括号允许像 C 风格的语法一样增加变量的值.


  done


  echo 

  exit 0
