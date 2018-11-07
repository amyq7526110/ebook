#!/bin/bash 

   # Du.sh : DOS 到 UNIX 文本文件的转换

   E_WrongArgs=65

   if [ -z "$1" ]

   then 
       
       echo "Usage:`basename $0` filename-to-convent"

       exit $E_WrongArgs

   fi

   NewFilename=${1}.unx

   CR='\015'  # 回车 Carriage return

              # 015 是 8 进制的ASCLL

	      # DOS 中文本文件的行结束符是CR-LF

	      # UNIX 中的文本文件的行只是LF

   tr -d $CR < $1 >	 $NewFilename      

   #  删除回车并写入到新文件中

   echo "Original DOS text file is \"$1\"."

   echo "Converted UNIX text file is \"$NewFilename\"."

   exit 0

