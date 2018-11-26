#!/bin/bash

# rot13a.sh: 与"rot13.sh"脚本相同, 但是会将输出写道"安全"文件中

# usage: ./rot13a.sh filename
# 或  ./rot13a.sh < filename
# 或  ./rot13a.sh  -  stdin 

   umask 177  # 文件创建掩码
              # 被这个脚本创建的文件 将具有600的权限
  
   OUTFILE=decrypted.txt  # 结果保留在 decrypted.txt 中

                          #+ 这个文件只能被调用者或者or root 所读写

   cat "$@" | tr 'a-zA-Z' 'n-za-mN-ZA-M'   > $OUTFILE

   # ^^ 从 stdin 或文件中输入.             ^^^^^^^^^^ 输出重定向到文件中.

   exit 0 



