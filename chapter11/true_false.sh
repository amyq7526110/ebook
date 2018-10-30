#!/bin/bash


#     ture
#   一个返回成功(就是返回 0)退出码的命令,但是除此之外什么事也不做.

#    # 死循环

#   while true # 这里的 true 可以用":"替换
#   do
#   
#     operation-1
#   
#     operation-2
#   
#     ...
#   
#     operation-n
#   
#         # 需要一种手段从循环中跳出来,或者是让这个脚本挂起.

#   done



#   flase

#   一个返回失败(非 0)退出码的命令,但是除此之外什么事也不做.

#    # 测试 "false"
#   
#    if false

#    then
#      echo "false evaluates \"true\""
#    else
#      echo "false evaluates \"false\""
#    fi

#    # 失败会显示"false"
#   
#   
#   # while "false" 循环 (空循环)

#    while false

#    do         # 这里边的代码将不会走到.
#   
#       operation-1
#       operation-2
#       ...
#       operation-n
#       # 什么事都没发生!
#    done
