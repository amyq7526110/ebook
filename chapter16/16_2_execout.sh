#!/bin/bash

#  reassign-stdout.sh 

Logfile=logfile.txt    

exec 6>&1   # 将 fd #6 与 stdout 相链接

            # 保存stdout

exec  > $Logfile  # stdout 就被文件"logfile.txt"所代替了

               
# -----------------------------------------------# 

# 在这块中所有命令的输出就都发向文件 $Logfile

echo -n "Logfile"

date 

echo "----------------------------------"


echo 


echo "Output of \"ls -al\" command "

echo 

ls -al 

echo ;echo

echo "Output of \"df\" command"

echo 

df

# ----------------------------


exec 1>&6 6>&-   # 恢复stdin ，然后关闭文件描述符 #6


echo

echo "== stdout now restored to default == "


echo 

echo 

ls -al

echo 


exit 0

                    




