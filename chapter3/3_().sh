#!/bin/bash


#   命令组 如：

    (a=hello;echo $a)

#   在() 中的命令列表，将作为一个子shell来运行

#   在()中的变量,由于是在子 shell 中,所以对于脚本剩下的部分是不可用的.


    a=123

    (a=321;)
    
    echo  "a=$a"  # a=123

#   用在数组初始化，如

    Array=(element1,element2,element3)

    echo ${Array[@]}



  
