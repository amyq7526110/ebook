#!/bin/bash

   #  ${var/#Pattern/Replacement/}

   #    如果var的前缀匹配到了Pattern,那么就用Replacement来替换Pattern

   #  ${var/%Pattern/Replacement}

   #    如果var的后缀匹配到了Pattern,那么就用Replacement来替换Pattern

   # var-match.sh

   #  对字符串的前后缀使用匹配替换的一个样本

   v0=abc1234zip1234abc         # 原始变量

   echo "v0 = $v0"              # abc1234zip1234abc

   echo 


   # 匹配字符串的前缀

   v1=${v0/#abc/ABCDEF}         

   echo "v1 = $v1"              # ABCDEF1234zip1234abc

   # 匹配字符串的后缀

   v2=${v0/%abc/ABCDEF}
 
   echo "v1 = $v2"              # abc1234zip1234ABCDEF


   echo 

   # -------------------------------

   # 必须在开头或结尾匹配,否则

   #+将不会产生替换结果

   # ------------------------------
   #


   v3=${v0/#123/000}            # 匹配上了，但不是在字符串的开头

   echo "v3 = $v3"              #  abc1234zip1234abc

                                # 没替换


   # ${!varprefix*},${!varprefix@}


   xyz23=whatever

   xyz24=


   a=${!xyz*}           #  以"xyz"作为前缀,匹配所有前边声明的变量


   echo "a = $a"        #  a= xyz23 xyz24

   a=${!xyz@}           #  以"xyz"作为前缀,匹配所有前边声明的变量


   echo "a = $a"        #  a= xyz23 xyz24
  
   eval echo "a= \$$a"

   exit 0				



