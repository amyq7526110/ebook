#!/bin/bash

  # 使用'xargs'将文本行分解为单词

  # 于后边的"wf.sh" 脚本相比

  # 检查命令行上的输入文件

  Args=1

  E_BadArgs=65

  E_NoFile=66

  if [  $# -ne $Args ]

  then 
      
      echo "Usage: `basename $0` filename"

      exit $E_BadArgs
   
  fi



  if [ ! -f "$1" ]

  then 
     
      echo "File \"$1\" does not exist."

      exit $E_NoFile

  fi 


  # ---------------------------------------------------


  cat "$1"  | xargs  | \
  # 列出文件，每行一个单词
  tr A-Z a-z | \
  # 将字符转化成小写
  sed -e 's/\.//g' -e 's/\,//g' -e 's/ /\
  /g'| \

  # 过滤句号和逗号

  #+并将单词间的空间修改为换行

  sort | uniq -c | sort -nr 

  # 最后统计出现的次数，把数字显示在第一列,然后显示单词,并按数字排序.

  # 这个例子的作用与"wf.sh"的作用是一样的,
  #+ 但是这个例子比较臃肿, 并且运行起来更慢一些(为什么?).
  
  exit 0
  ######

