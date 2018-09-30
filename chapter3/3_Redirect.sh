#!/bin/bash

#   > , &> , >&2 , >>

#    重定向

#    

   scriptname > filename  # 重定向脚本的输出到文件中，覆盖源文件内容

   command  &> filename   # 重定向stdout 和 stderr 到文件中

   command  >&2 filename  # 重定向command的stdout 到 stderr

   scriptname >> filename # 重定向脚本的输出到文件中，添加到文件的尾端如果没有文件,则创建这个文件.


#  进程替换，具体"进程替换部分"，跟命令替换极其类似 

   (command) >

   <(command)

   #  <和>  可用来做字符串的比较

   #  <和>  可用来作数字计算的比较

#   << 

#      重定向 用在"here document"
 
#   <<<

#      重定向 用在"here string"   





