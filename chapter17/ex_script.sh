#!/bin/bash 

 # 把所有后缀为".txt"文件
 #+ 中的"Smith"都替换成"Jones".

 ORIGINAL=Smith

 REPLACEMENT=Jones

 for word in $(fgrep -l $ORIGINAL *.txt)

 do

    ex $word <<EOF
    :%s /$ORIGINAL/$REPLACEMENT/g
    :wq

EOF
 
# :%s 是"ex"的替换命令.
 
# :wq 是保存并退出的意思.

 
# -------------------------------------

done

