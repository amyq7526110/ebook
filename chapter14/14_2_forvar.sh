#!/bin/bash

# csubloop.sh 从循环中产生一个变量

variable1=`for i in $(seq  1 5)        
do 
echo -n "$i"                           # 对于这里的命令替换来讲
done`                                  # ‘echo’ 这个命令是非常关键的
printf "variable1 = $variable1\n"      # variable1 = 12345

i=0

variable2=`while [ "$i" -lt 10 ]
do
    echo -n "$i"            # 在来一个
    let "i += 1"            # 递增
done
`
printf "variable2 = %s\n"  $variable2  # variable2 = 0123456789

# 这就证明了在一个变量声明中
# 潜入一个循环是可行的

exit 0 












