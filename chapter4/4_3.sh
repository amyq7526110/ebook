#!/bin/bash


    a=23   #  Simple case

    echo $a 

    b=$a

    echo $b

    # 现在 让我们来点小变化

    a=`echo hello`

    echo $a

    #  注意，如果在命令拓展结构中使用一个(!)的话，在命令行中将不能工作

    #+ 因为这触发了Bash的”历史机制“

    #  但是，在shell脚本里使用的话，历史功能是被关闭的，所以能够正常运行

    a=`ls -l` #  把ls -l 的结果赋予a

    echo $a   #  别忘了，这么引用的话，ls 的结果中的所有空白都没了，包括 /n

    echo 

    echo "$a"  # 这么引用就正常了

#   使用$(...)机制进行的变量赋值(除去使用``来赋值的另外一种新方法).事实上这两种方法都是 命令替换的一种形式. 使用$(...)机制进行的变量赋值(除去使用``来赋值的另外一种新方法).事实上这两种方法都是 命令替换的一种形式. 

    # 来自于/etc/rc.d/rc.local  

    R=$(cat /etc/rc.d/rc.local)

    arch=$(uname -m)

    echo $R

    echo $arch

    exit  0












