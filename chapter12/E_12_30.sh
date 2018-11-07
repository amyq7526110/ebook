#!/bin/bash  

  #  在/usr/X11R6/bin 中的所有神秘的二进制文件都是什么东西


  Directory="/usr/bin"

  #  也试一试"/bin" ,"/usr/local/bin" 等等

  for file in `ls $Directory/*`

  do 
     
     whatis  $file  # 将会 echo 出这两个2进制文件的信息

  done 

   
  exit 0

 # 你可能希望将这个脚本的输出重定向, 像这样:
 # ./what.sh >>whatis.db
 # 或者一页一页的在 stdout 上查看,
 # ./what.sh | less
     
