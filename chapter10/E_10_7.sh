#!/bin/bash

#  下边是一个用命令替换来产生[list]的更复杂的例子.

# bin-grep.sh  在一个二进制文件中定位匹配字串.

  E_BadArgs=65

  E_NoFile=66

  if [  $#  -ne 2 ]

  then

      echo  "Usage:`basename $0` search _string filename"

      exit $E_BadArgs

  fi

  if [  ! -f "$2" ]

  then 

       echo "File \"$2\" does not exist"

       exit $E_NoFile

  fi


  IFS="\n"

  for word in $( strings "$2"| grep "$1" )


  do

      echo $word

  done


  # S.C. 指出, 行 23 - 29 可以被下边的这行来代替,

  # strings "$2" | grep "$1" | tr -s "$IFS" '[\n*]'

  # 试试用"./bin-grep.sh mem /bin/ls"来运行这个脚本.


  exit 0


