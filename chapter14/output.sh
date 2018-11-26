#!/bin/bash 

output=$(sed -n /"$1"/p $file )  # 来自于"grp.sh"例子

# 将一个文本的内容保存到变量里

File_contents1=$(cat $file1)
File_contents2=$(<$file2)   # Bash 能够这么做

# $(....) 形式的命令替换在处理反斜线的时候与``不同

echo `echo \\`

echo $(echo \\)


# $(...) 允许嵌套

word_cound=$(wc -w $(ls -l | awk '{print $9}'))

printf "$word_cound\n"

exit 0 


