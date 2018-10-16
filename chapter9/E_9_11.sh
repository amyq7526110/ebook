#!/bin/bash 


  #  cvt.sh

  #  把一个目录下的所有MavPaint 格式的图片文件都转化为
  #+ pbm格式的图片

  # 使用来自"netpbm"包的"macptopbm"程序,
  #+ 这个程序主要是由 Brian Henderson(bryanh@giraffe-data.com)来维护的.
  # Netpbm 是大多数 Linux 发行版的标准部分.

  Operation=macptopbm

  Suffix=pbm

  if [ -d "$1" ]

  then
        
      directory=$1

  else   

      directory=$PWD

  fi

  
  # 假设在目标目录中的所有文件都是 MacPaint 格式的图片文件,
  #+ 以".mac"为文件名的后缀.


  for file in $directory/* #  # Filename globbing.

  do
      filename=${file.*c}     #  去掉文件文件名的".mac"后缀

                              #  + ('.*c' matches everything

			      # + ('.*c' 将匹配'.'和'c'之间的任何字符串).
    $OPERATION $file > "$filename.$SUFFIX" # 转换为新的文件名.
    rm -f $file                            # 转换完毕后删除原有的文件.
    echo "$filename.$SUFFIX" # 从 stdout 输出反馈.
    done
   
    exit 0
       






