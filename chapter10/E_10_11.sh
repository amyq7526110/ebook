#!/bin/bash

 #  symlinks.sh 列出目录中所有的符号连接文件.

   #   循环的输出可以重定向到文件中,我们对上边的例子做了一点修改.
   #   Example 10-11 将目录中的符号连接文件名保存到一个文件中


  OutFile=symlinks.list    # 保存的文件

  directory=$(1-`pwd`)

  #  如果没用其他的特殊指定

  #+ 默认为当前的工作目录

  echo "symbolic links in directory \"$directory\""  > "$OutFile"

  echo "--------------------------"  >> "$OutFile"

  for file in "$(find $directory -type l)"   # -type l 为符号链接

  do

     echo "$file"

  done | sort >> $OutFile                      # 循环输出

  # 

  exit 0
