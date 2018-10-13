#!/bin/bash


   stringZ=abcABC123ABCabc

   #     0123456789......

   #     0-based indexing.

   echo ${stringZ:0}         # abcABC123ABCabc

   echo ${stringZ:1}         # bcABC123ABCabc

   echo ${stringZ:7}         # 23ABCabc

   echo ${stringZ:7:3}       # 23A

                             # 3个字符长度的字串

   #  有没有可能从字符结尾开始,反向提取子串?

   echo ${stringZ:-4}        # abcABC123ABCabc

   #  以${parameter:-default}方式,默认是提取完整地字符串

   #  然而  ...

   echo ${stringZ:(-4)}      # Cabc

   echo ${stringZ: -4}       # Cabc


   # 现在,它可以工作了
   
   # 使用圆括号或者添加一个空格来转义这个位置参数

   # # Thank you, Dan Jacobson, for pointing this out.
    
   echo ${*:2}    #  echo 出第二个和后边的所有的位置参数

   echo ${@:2}    #   与前面相同

   echo ${*:2:3}  #   从第2个开始,echo 出后边3个位置参数


   echo `expr substr $stringZ 1 2`    # ab

   echo `expr substr $stringZ 4 3`    # ABC

   echo `expr  match "$stringZ"  '\(....\)'` 

   #   从$string 的开始位置提取$substring,$substring 是一个正则表达式.

   echo `expr "$stringZ" : '\(....\)'`

   #   从$string 的开始位置提取$substring,$substring 是一个正则表达式.

   
   #         ========

   echo `expr match "$stringZ" '\(.[b-c]*[A-Z]..[0-9]\)'`  

   #  abcABC1

   echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`

   #  abcABC1

   echo `expr "$stringZ" : '\(.......\)'`

   #  abcABC1

   #  ll of the above forms give an identical resul



