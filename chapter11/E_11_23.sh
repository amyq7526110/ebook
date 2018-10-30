#!/bin/bash 

#   Example 11-23 一个 exec 自身的脚本
    

     # self-exec.sh

     echo "This line appears ONCE in the script , yet it keeps echoing"

     echo "The PID of this inst ance of the script is still $$"

     #    上面的话用来证明更本没有产生子进程

     echo "==================Hit Citl-C to - exit =============="

     sleep 1

     exec  $0   # 产生了本脚本的另一个实列

               #+并且这个实例代替了之前的那个

     echo "The line will nerver echo!"

     exit 0 


