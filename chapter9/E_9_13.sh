#!/bin/bash


   # 使用 awk 来操作字符串

   # substring-extraction.sh

   String=23skidoo1

   #     012345678   bash

   #     123456789   awk

   #  注意,对于 awk 和 Bash 来说,它们使用的是不同的 string 索引系统:

   #  Bash 的第一个字符是从'0'开始记录的.

   #  Awk 的第一个字符是从'1'开始记录的.


   echo ${String:2:4}    #  位置3（0-1-2）,四个字符长

                         #  skid

  # awk 中等价于${string:pos:length}的命令是 substr(string,pos,length).

  echo | awk '
  { print substr("'$String'",3,4)    
  }
  '       
  #  使用一个空的"echo"通过管道给awk 一个假的输入

  #+  这样可以不用提供一个文件名

  exit 0

