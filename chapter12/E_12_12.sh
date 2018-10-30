#!/bin/bash

  #  script-delector.sh : 在一个目录检索所有脚本文件

  #   

  TestChars=2  # 测试前两个字节

  ShaBang='#!' # 脚本都是以"sha-bang" 开头的

  for file in *  #  遍历当前目录下的所有文件

  do 

   if [[ `head -c$TestChars "$file"` = "$ShaBang" ]]

   #      head -c2                       #!
   #      '-c' 选项将从文件头输出指定个数的字符,
   #+     而不是默认的行数








