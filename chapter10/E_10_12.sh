#!/bin/bash 


  # 两种循环到10的方法

  echo 


  # 标准语法


  for i in `seq 10`

  do

    echo -n "$i "

  done 


  echo;echo

  # +==========================================+

  # 现在，让我们用C风格的语法做同样的事情

  Limit=10

  for ((a=1;a<=Limit;a++)) # 双圆括号, 并且"LIMIT"变量前边没有 "$".

                           # Double parentheses,and "Limit"变量前边没有"$"


  do

     echo -n "$a "

  done 

  echo ;echo 


  for ((a=1,b=1;a<=Limit;a++,b++))  # 逗号将同时进行 2 条操作.

  do

    echo -n "$a-$b "

  done

  echo ;echo 

  exit 0


