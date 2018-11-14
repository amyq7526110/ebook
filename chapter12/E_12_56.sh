#!/bin/bash


# tempfile-name.sh  # 临时文件名产生器

Base_str=`mcookie`  # 32-字符的 magic cookie

Pos=11              # 字符串中随便的一个位置

Len=5               # 取得$Len 长度的连续字符串

prefix=temp         # 最终的一个临时文件

                    # 如果想让这个文件更加唯一

                    # 可以对这个前缀也使用下边的方法来生成.

suffix=${Base_str:Pos:Len}  
                     
                    # 提取从第 11 个字符之后的长度为 5 的字符串.

temp_filename=$prefix.$suffix

echo  " Temp filename =  $temp_filename  "

#  Temp filename =  ”temp.85f17"

# 与使用 'date' 命令(参考 ex51.sh)来创建唯一文件名
#+ 的方法相比较.

exit 0





