#!/bin/bash

   # badname.sh

   # 删除当前目录下的文件名包含一些特殊字符的文件

   

   for filename in * 

   do
     
     badname=`echo $filename | sed -n /[\+\{\;\"\\\=\?~\(\)\<\>\&\*\|\$]/p`

     # badname `echo filename | sed -n '/[+{;"\=?~()<>&*|$]/p'` 这句也行

     echo "$badname"  2> /dev/null

                      # 错误信息将被抛弃
   done

   # 现在，处理文件名中以任何方式包含空白的文件

   find . -name "* *" -exec rm -f {} \;

   # "find" 命令匹配到的目录将会替换到{}的位置

   # '\' 是为了保证 ';'被正确的转义, 并且放到命令的结尾.

   exit 0


   # -----------------------------

   # 下面的命令将不会运行

   # 这句是上面脚本可以使用的一个可选方法

   find . -name '*[+{+;"\\=?~()<>&*|$ ]*' -exec rm -f '{}'  \;

  
