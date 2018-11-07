#!/bin/bash

  #  tail

  #  将一个文件的结尾输出到 stdout 中(默认为 10 行).
  #  通常用来跟踪一个系统 logfile
  #  的修改状况, 使用 -f 选项的话, tail 命令将会继续显示添加到文件中的行.

  filename=sys.log

  cat /dev/null > $filename ; echo "Creating / cleaning out file."
  
  #  如果文件不存在的话就创建文件

  #+ 然后将这个文件请空

  tail /var/log/messages > $filename

  # /var/log/messages 必须具有全局的可读权限才行

  echo "$filename contains tail end of system.log"

  # 为了列出一个文本文件的指定行数，可将head 命令的输出管道传递
  #+到tail -1 中， 

  #  比如：

  head -8 $filename  | tail -1 

  #  将会列出 sys.log 文件的第八行

  # 下面将一个文本文件的指定范围的所有行都保存到一个变量当中
  

  #  var=$(head -$m $filename | tail -$n )

  # filename = 文件名

  # m = 从文件开头到想取得的指定范围的行数的最后一行

  
  # n = 取得指定范围的行数 (从块结尾开始截断)

 
  exit 0






    
    




