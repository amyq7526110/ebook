#!/bin/bash


  #  Bash 支持超多的字符串操作,操作的种类和数量令人惊异.但不幸的是,这些工具缺乏集中性.一些是参数替换的子集,但是另一些则属于 UNIX 的 expr 命令.这就导致了命令语法的不一致和功能的重叠,当然也会引起混乱.

  #  字符串长度

  string=12345678

     expr length $string

     expr "$string":'.*'

  stringZ=abcABC123ABCabc

  echo "${#stringZ}"            # 15

  echo `expr length $stringZ`   # 15

  echo `expr "$stringZ":'.*'`   # abcABC123ABCabc:.* 

  expr match "$string" '.*'
  
                    #  $substring 是一个正则表达式
   
  expr "$string" : '[0-9]*'

  echo `expr match "$stringZ" 'abc[A-Z]*.2'`     # 8

  echo `expr "$stringZ" : 'abc[A-Z]*.2'`         # 8

#  索引

  expr index $stringZ A   

   
  #  匹配到子串的第一个字符的位置.

   echo `expr index "$stringZ" 1c`

  # 'c' (in #3 position) matches before '1'.

  # 在 C 语言中最近的等价函数为 strchr().  

  #  提取子串

  #  ${string:position}

  #  在 string 中从位置$position 开始提取子串.

  #  如果$string 为"*"或"@",那么将提取从位置$position 开始的位置参数,[1]

  #  ${string:position:length}

  #  在 string 中从位置$position 开始提取$length 长度的子串.

  
   
  exit 0 




      


