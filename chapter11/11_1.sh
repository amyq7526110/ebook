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
    
 
#     文件系统类
#     cd
#     cd,修改目录命令,在脚本中用得最多的时候就是,命令需要在指定目录下运行时,需要用 cd 修改当前工作目录.
#     1 (cd /source/directory && tar cf - . ) | (cd /dest/directory && tar xpvf -)[之前有个例子,Alan Cox 写的]
#     -P(physical)选项的作用是忽略符号连接.
#     cd - 将把工作目录改为$OLDPWD,就是之前的工作目录.
#     注意:当我们用两个/来作为 cd 命令的参数时,结果却出乎我们的意料.
#     bash$ cd //
#     bash$ pwd
#     //
#     输出应该,并且当然是/.无论在命令行下还是在脚本中,这都是个问题.
#     pwd
#     打印当前的工作目录.这将给用户(或脚本)当前的工作目录(见 Example 11-9).使用这个 命令的结果和从内键变量$PWD 中读取的值是相同的.
#     pushd, popd, dirs
#     这几个命令可以使得工作目录书签化,就是可以按顺序向前或向后移动工作目录.
#     压栈的动作可以保存工作目录列表.选项可以允许对目录栈作不同的操作.
#     pushd dir-name 把路径 dir-name 压入目录栈,同时修改当前目录到 dir-name.
#     popd 将目录栈中最上边的目录弹出,同时修改当前目录到弹出来的那个目录.
#     dirs 列出所有目录栈的内容(与$DIRSTACK 便两相比较).一个成功的 pushd 或者 popd 将会 自动的调用 dirs 命令.
#     对于那些并没有对当前工作目录做硬编码,并且需要对当前工作目录做灵活修改的脚本来说 ,使用这些命令是再好不过的了.注意内建$DIRSTACK 数组变量,这个变量可以在脚本内存取, 并且它们保存了目录栈的内容.
