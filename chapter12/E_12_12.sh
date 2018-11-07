#!/bin/bash

  #  script-delector.sh : 在一个目录检索所有脚本文件

  #   

  TestChars=2  # 测试前两个字节

  ShaBang='#!' # 脚本都是以"sha-bang" 开头的

 
  for file in $1/*  #  遍历当前目录下的所有文件

  do 

   if [[ `head -c$TestChars "$file"` = "$ShaBang" ]]

   #      head -c2                       #!
   #      '-c' 选项将从文件头输出指定个数的字符,
   #+     而不是默认的行数

   then 
    
       echo "File \"$file\" is a script."

   else   

       echo "File \"$file\" is *not* a script"

   fi
   
  done   


  exit 0

  #  1) 将这个脚本修改为可以指定目录
  #+    来扫描目录下的脚本.
  #+    (而不是只搜索当前目录).
 
  #  2) 就目前看来, 这个脚本将不能正确识别出
  #+    Perl, awk, 和其他一些脚本语言的脚本文件.
  #     修正这个问题. 




