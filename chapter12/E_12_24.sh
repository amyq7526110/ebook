#!/bin/bash 

#  这是"column" man 页中的一个例子, 作者对这个例子做了很小的修改.

   (printf "Permissions links owner Group size month day HH:MM prog-name\n";  ls -l | sed 1d ) | column -t

   #  管道中的 "sed 1d" 删除输出的第一行,

   #+ 第一行将是 "totalN",

   #+ 其中 "N" 是 "ls -l" 找到的文件总数.


   # "column" 中的 -t 选项用来转化为易于打印的表形式.
   
   exit 0


