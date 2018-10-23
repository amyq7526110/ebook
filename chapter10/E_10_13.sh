#!/bin/bash

# Faxing('fax'必须已经被安装过了)


  Expected_Args=2

  E_BadArgs=65

  if [ $#  -ne $Expected_Args ]

  # 检查命令行参数的个数是否正确

  then 

      echo "Usage:`basename $0` phone# text-file"

      exit $E_BadArgs

  fi



  fax make $2   # 从文本文件中创建传真格式的文件

  for file in `ls $2.0*`  #  链接转换过的文件

  do

    fil="$fil $file"

  done


  efax -d /dev/ttyS3 -o1 -t "T$1"$fil  # 干活的地方

  # S.C. 指出, 通过下边的命令可以省去 for 循环.
  #
  efax -d /dev/ttyS3 -o1 -t "T$1" $2.0*
  # 但这并不十分有讲解意义[嘿嘿].

  exit 0



