#!/bin/bash 


  # upperconv.sh
  # 将一个指定的输入文件转换为大写.

  E_File_Access=70

  E_Wrong_Args=71

  if [ ! -r "$1"  ]    # 判断文件是否可读

  then
      
      echo "Can't read from input file!"

      echo "Usgae:`basename $0` input-file output-file "

      exit $E_File_Access
   
  fi                     # 即使输入文件($1) 没被指定

                         #+ 也还是会以相同的错误退出 为什么


  if [ -z "$2" ]

  then 
     
      echo "Need to specify output file"

      echo "Usage:`basename $0` input-file output-file "

      exit $E_Wrong_Args
  
  fi

  exec 4<&0  

  exec < $1          # 将会从文件中读取

  exec 7>&1        

  exec > $2          # 将会写到输出文件中

                     # 假设输出文件是可写的

 # --------------------------------

  cat - | tr a-z A-Z  # 转化为大写

 #^^^^^^^^            # 将从stdin 中读取Reads from stdin

                      # 写到stdout 上

  # 然而。stdin 和 stdout 都被重定向了

  exec 1>&7 7>&-  # 恢复 stdout

  exec 0<&4 4<&-  # 恢复 stdin

  # 恢复之后 下边这行代码将会如期望的一样打印到stdout上

  echo "File \"$1\" written to \"$2\" as uppercase conversion"


  exit 0 



    
    











