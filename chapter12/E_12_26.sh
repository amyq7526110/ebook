#!/bin/bash

  # manview.sh 将 man 页源文件格式化以方便查看.

  #   当你想阅读 man 页的时候, 这个脚本就有用了.
  #   它允许你在运行的时候查看
  #+  中间结果.

  E_WrongArgs=65

  if [ -z "$1" ]

  then 
    
     echo "Usage: `basename $0` filename"

     exit $E_WrongArgs

  fi


  man $1 | groff -Tascii   | less
  # 来自于 groff man 页.

  # ---------------------------

  # 如果 man 业中包括表或者等式,

  #+ 那么上边的代码就够呛了.

  # 下边的这行代码可以解决上边的这个问题.

  # gtbl < "$1" | geqn -T latin1 | groff -T latin1 -mtty-char -man

  # Thanks, S.C.
  
  exit 0
  #######


   
  






