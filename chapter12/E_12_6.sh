#!/bin/bash

   # 在 find 命令中, 一对大括号就一个文本替换的位置.

   # copydir.sh

   #  拷贝(verbose) 当前目录($PWD)下的所有文件到
   #+ 命令行中指定的另一个目录下.

   E_NoArgs=65

   if [ -z "$1" ]  # 如果没有参数就退出

   then
     
       echo "Usage: `basename $0` directory-to-copy-to"

       exit $E_NoArgs

   fi


   ls . | xargs -i -t cp ./{} $1

   #             ^  ^      ^^      
   #  -t 是 "varbose" 输出命令行到stderr 选项

   #  -i 是 "替换字符串"选项

   #  {} 是输出文本中的替换点

   #   这跟"find"命令中使用的情况很相似

   #  # 列出当前目录下的所有文件(ls .),

   #+ 将 "ls" 的输出作为参数传递到 "xargs"(-i -t 选项) 中,

   #+ 然后拷贝(cp)这些参数({})到一个新目录中($1).

   #  最终的结果和下边的命令等价,

   #+ cp * $1
   #+ 除非有文件名中嵌入了"空白"字符.
   
   exit 0


