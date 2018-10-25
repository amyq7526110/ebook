#!/bin/bash

  
#  通常情况下,在使用 read 命令时,输入一个\然后回车,
#+ 将会阻止产生一个新行.-r 选项将会让\转义

   #  read 命令的多行输入

   echo 


   echo "Enter a string terminated by a \\ , then press <Enter>"

   echo "Then, enter a second string, and again press <ENTER>."

   read var1      # "\"将会阻止产生新行,当 read $var1 时.

                  #   first line  \

                  #   second line

   echo "var1 = $var1"

   #    var = first line second line 

   #    For each line terminated by a "\"
  
   #    对于每个一个"\"结尾的行

   #+   你都会看到一个下一行的提示符,让你继续向 var1 输入内容.


   echo;echo

   echo "Enter another string terminated by a \\ , then press <Enter>"

   read  -r var2 #  -r 选项会让 "\"转义

                 #   first line \

   echo  "var2 = $var2"		 

   #  var2 = first line \

   # 第一个<ENTER>就会结束 var2 变量的录入.
   
   echo
   
   exit 0


