#!/bin/bash

#   内建命令指的就是包含在 Bash 工具集中的命令.这主要是考虑到执行效率的问题--内建命令将比外部命令的执行得更快,外部命令通常需要 fork 出一个单独的进程来执行.另外一部分原因是特定的内建命令需要直接存取 shell 内核部分.

#   当一个命令或者是 shell 本身需要初始化(或者创建)一个新的子进程来执行一个任务的时候,这种行为被称为 forking.这个新产生的进程被叫做子进程,并且这个进程是从父进程中分离出来的.当子进程执行它的任务时,同时父进程也在运行.

#   注意:当父进程取得子进程的进程 ID 的时候,父进程可以传递给子进程参数,而反过来则不行.

#   这将产生不可思议的并且很难追踪的问题.

#    一般的,脚本中的内建命令在执行时将不会 fork 出一个子进程.但是脚本中的外部或过滤命令 通常会 fork 一个子进程.  一个内建命令通常与一个系统命令同名,但是 Bash 在内部重新实现了这些命令.比如,Bash 的  echo 命令与/bin/echo 就不尽相同,虽然它们的行为绝大多数情况下是一样的.
   
    echo "This line uses the \"echo\" builtin."
   /bin/echo "This line uses the /bin/echo system command."

#   关键字的意思就是保留字.对于 shell 来说关键字有特殊的含义,并且用来构建 shell 的语法结构.
#   比如,"for","while","do"和"!"都是关键字.与内建命令相同的是,关键字也是 Bash 的骨干部分,
#   但是与内建命令不同的是,关键字自身并不是命令,而是一个比较大的命令结构的一部分.[1]

#     I/O 类
#     echo

#     打印(到 stdout)一个表达式或变量(见 Example 4-1).
#     1 echo Hello
#     2 echo $a
#     echo 需要使用-e 参数来打印转移字符.见 Example 5-2.
#     一般的每个 echo 命令都会在终端上新起一行,但是-n 选项将会阻止新起一行.注意:echo 命令可以用来作为一系列命令的管道输入.
#     1 if echo "$VAR" | grep -q txt
#     # if [[ $VAR = *txt* ]]
#     2 then
#     3
#     echo "$VAR contains the substring sequence \"txt\""
#     4 fi
#     注意:echo 命令与命令替换相组合可以用来设置一个变量.
#     a=`echo "HELLO" | tr A-Z a-z`
#     参见 Example 12-19,Example 12-3,Example 12-42,和 Example 12-43.
#     注意:echo `command`将会删除任何有命令产生的换行符.
#     $IFS(内部域分隔符)一般都会将\n(换行符)包含在它的空白字符集合中.Bash 因此会根据
#     参数中的换行来分离命令的输出.然后 echo 将以空格代替换行来输出这些参数.
#     bash$ ls -l /usr/share/apps/kjezz/sounds
#     -rw-r--r--
#     1 root
#     root
#     1407 Nov 7 2000 reflect.au
#     -rw-r--r--
#     1 root
#     root
#     362 Nov 7 2000 seconds.au
#     bash$ echo `ls -l /usr/share/apps/kjezz/sounds`
#     total 40 -rw-r--r-- 1 root root 716 Nov 7 2000 reflect.au -rw-r--r-- 1 root root 362 Nov 7 2000
#     seconds.au
#     所以,我们怎么才能在一个需要 echo 出来的字符串中嵌入换行呢?
    
 
 
