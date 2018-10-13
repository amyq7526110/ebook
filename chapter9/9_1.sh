#!/bin/bash


    #  Builtin variable

    #      这些内建的变量将影响bash脚本的行为

    #  $BASH

    #     这个变量将指向 Bash 的二进制执行文件的位置.
    
       echo $BASH     #   /bin/bash

    #  $BASH_ENV

    #  这个环境变量将指向一个 Bash 启动文件,这个启动文件将在调用一个脚本时被读取

       echo $BASH_ENV

    #  $BASH_SUBSHELL

    #  这个变量将提醒 subshell 的层次,这是一个在 version3 才被添加到 Bash 中的新特性.见 Example 20-1
 
       echo  $BASH_SUBSHELL

    #  $BASH_VERSINFO[n]

    #  记录 Bash 安装信息的一个 6 元素的数组.与下边的$BASH_VERSION 很像,但这个更加详细

    #  Bash version info:

    for n in 0 1 2 3 4 5

    do

      echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"

    done

    # BASH_VERSINFO[0] = 3          # 主版本号
    # BASH_VERSINFO[1] = 00         # 次版本号
    # BASH_VERSINFO[2] = 14         # Patch 次数.
    # BASH_VERSINFO[3] = 1          # Build version.
    # BASH_VERSINFO[4] = release    # Release status.
    # BASH_VERSINFO[5] = i386-redhat-linux-gnu # Architecture


    # $BASH_VERSION

    #  安装在系统上的 Bash 的版本号.

    echo $BASH_VERSION

    #    BASH_VERSINFO[0] = 4
    #    BASH_VERSINFO[1] = 2
    #    BASH_VERSINFO[2] = 46
    #    BASH_VERSINFO[3] = 2
    #    BASH_VERSINFO[4] = release
    #    BASH_VERSINFO[5] = x86_64-redhat-linux-gnu
    #    4.2.46(2)-release


    # 使用这个变量对于判断系统上到底运行的是那个 shll 来说是一种非常好的办法.$SHELL有时将不能给出正确的答案.


    #  $DIRSTACK

    #  在目录栈中最上边的值(将受到 pushd 和 popd 的影响).
    #  这个内建的变量与 dirs 命令是保持一致的,但是 dirs 命令将显示目录栈的整个内容

    echo $DIESTACK


    #  $EDITOR

    #  脚本调用的默认编辑器,一般是 vi 或者是 emacs.

    echo $EDITOR


    #   $EUID
    #   "effective"用户 ID 号.
    #   当前用户被假定的任何 id 号.可能在 su 命令中使用.
    #   注意:$EUID 并不一定与$UID 相同.

    #  su - lisi 

    #  echo "$EUID"   # 1000


    #  $FUNCNAME
    
    #  当前函数名字
   
    xy123(){
    
        echo "$FUNCNAME now executing" 
    
    }

    xy123
  
    echo "FUNCNAME = $FUNCNAME"  #  FUNCNAME = 

                                 #  出了函数就变为NUll值

   				 
       
     #  $GLOBIGNORE

     #  一个文件名的模式匹配列表,如果在 file globbing 中匹配到的文件包含这个列表中的某个文件,那么这个文件将被从匹配到的文件中去掉.

     #  $GROUPS

     #  当前用户属于的组.
     #  这是一个当前用户的组 id 列表(数组),就像在/etc/passwd 中记录的一样.
     
     
     echo $GROUPS            #  0
     
     echo ${GROUPS[1]}       #  1

     echo ${GROUPS[5]}       #  6


     #  $HOME

     #  用户的 home 目录,一般都是/home/username

     echo $HOME     #  /root


     #  $HOSTNAME

     #  hostname 命令将在一个 init 脚本中,在启动的时候分配一个系统名字.
     #  gethostname()函数将用来设置这个$HOSTNAME 内部变量.(见 Example 9-14)

     echo $HOSTNAME   

     #  $HOSTTYPE

     #  主机类型
     #  就像$MACHTYPE,识别系统的硬件

     echo $HOSTTYPE # x86_64

     #  $IFS

     #  内部域分隔符.
     #  这个变量用来决定 Bash 在解释字符串时如何识别域,或者单词边界.
     #  $IFS 默认为空白(空格,tab,和新行),但可以修改,比如在分析逗号分隔的数据文件时.
     #  注意:$*使用$IFS 中的第一个字符,具体见 Example 5-1.


     echo $IFS | cat -vte

     bash -c 'set w x y z ;IFS=":-;";echo "$*"'

     # 注意:$IFS 并不像它处理其它字符一样处理空白.见E_9_1.sh

     #  $IGNOREEOF

     #  忽略 EOF: 告诉 shell 在 log out 之前要忽略多少文件结束符(control-D).  

     echo $IGNOREEOF

     #  $LC_COLLATE

     #  常在.bashrc 或/etc/profile 中设置,这个变量用来在文件名扩展和模式匹配校对顺序.
     #  如果$LC_COLLATE 被错误的设置,那么将会在 filename globbing 中引起错误的结果.
     #  注意:在 2.05 以后的 Bash 版本中,filename globbing 将不在对[]中的字符区分大小写.
     #  比如:ls [A-M]* 将即匹配 File1.txt 也会匹配 file1.txt.为了恢复[]的习惯用法,
     #  设置$LC_COLLATE 的值为 c,使用 export LC_COLLATE=c 在/etc/profile 或者是~/.bashrc 中.

     #    $LINENO


     last_cmd_arg=$_   # Save it

     v1=haha

     echo "At line number $LINENO,variable \"v1\" = $v1"

     echo "last command argument processed = $last_cmd_arg"

     #  $MACHTYPE

     #  系统类型
     #  提示系统硬件

     echo $MACHTYPE    #  x86_64-redhat-linux-gnu

     #  $OLDPWD

     # 老的工作目录("OLD-print-working-directory",你所在的之前的目录)

     cd ~-   #  = cd $OLDPWD

     #  $OSTYPE

     #  操作系统类型.


     echo $OSTYPE    #  linux-gnu

     #   $PATH
     #   指向 Bash 外部命令所在的位置,一般为/usr/bin,/usr/X11R6/bin,/usr/local/bin 等.
     #   当给出一个命令时,Bash 将自动对$PATH 中的目录做一张 hash 表.$PATH 中以":"分隔的目录列表将被存储在环境变量中.一般的,系统存储的$PATH 定义在/ect/processed 或 ~/.bashrc 中(见 Appendix G).


      echo $PATH

     #   /bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin:/sbin:/usr/sbin

     #   PATH=${PATH}:/opt/bin 将把/opt/bin 目录附加到$PATH 变量中.在脚本中,这是一个添加目录到$PATH 中的便捷方法.这样在这个脚本退出的时候,$PATH 将会恢复(因为这个

     #   shell 是个子进程,像这样的一个脚本是不会将它的父进程的环境变量修改的)aa

     #   注意:当前的工作目录"./"一般都在$PATH 中被省去.

     #  $PIPESTAUS

     #  数组变量将保存最后一个运行的前台管道的退出码.有趣的是,这个退出码和最后一个命令运行的退出码并不一定相同


     ls -al | bogus_command

     echo $PIPESTATUS   # 0

     ls -al | bogus_command

     echo $?            # 127

     #    $PIPESTATUS 数组的每个成员都会保存一个管道命令的退出码,$PIPESTATUS[0]保存第一个管道命令的退出码,$PIPESTATUS[1]保存第 2 个,以此类推.


     who | grep nobody | sort

     echo ${PIPESTATUS[@]}

     # 包含在脚本中的上边这行将会产生一个期望的输出 
     # 0 1 0

     # 注意:在某些上下文$PIPESTATUS 可能不会给出正确的结果.

    ls | bogus_command | wc

    #  bash: bogus_command: command not found
    #  0 0 0\

    echo ${PIPESTATUS[@]}

    # 141 127 0

    #  $PPID

    #  一个进程的$PPID 就是它的父进程的进程 id(pid).[1]
    #+ 使用 pidof 命令对比一下.

    #  $PROMPT_COMMAND

    #   这个变量保存一个在主提示符($PS1)显示之前需要执行的命令.

    #   $PS1

    #   主提示符,具体见命令行上的显示.

    #   $PS2

    #   第 2 提示符,当你需要额外的输入的时候将会显示,默认为">".

    #   $PS3

    #   第 3 提示符,在一个 select 循环中显示(见 Example 10-29).

    #   $PS4

    #   第 4 提示符,当使用-x 选项调用脚本时,这个提示符将出现在每行的输出前边.

    #   默认为"+".

    #   $PWD

    #   工作目录(你当前所在的目录).

    #   与 pwd 内建命令作用相同. 见 E_9_pwd.sh

    #   $REPLY

    #   read 命令如果没有给变量,那么输入将保存在$REPLY 中.在 select 菜单中也可用,但是只提供选择的变量的项数,而不是变量本身的值.  见E_9_reply.sh


    #   $SECONDS

    #     这个脚本已经运行的时间(单位为秒)

    #     见 E_9_seconds.sh


    #   $SHELLOPTS 

    #       这个变量里保存shell 允许的选项。这个变量是只读

    echo  $SHELLOPTS

    #  braceexpand:emacs:hashall:histexpand:history:interactive-comments:monitor
     
    #   $SHLVL

    #   Shell 层次就是 shell 层叠的层次,如果是命令行那$SHLVL 就是 1,如果命令行执行的脚本中,$SHLVL 就是 2,以此类推

    #   $TMOUT 

    #   $TMOUT
    #   如果$TMOUT 环境变量被设置为一个非零的时间值,那么在过了这个指定的时间之后,shell 提示符将会超时,这会引起一个 logout.

    #   在 2.05b 版本的 Bash 中,已经支持在一个带有 read 命令的脚本中使用$TMOUT 变量.

    # 需要使用 Bash v2.05b 或者以后的版本上
    
    #  见 E_9_tmout.sh

    #  $UID

    #  用户 ID 号.
    #  当前用户的 id 号,在/etc/passwd 中记录.
    #  这个值不会因为用户使用了 su 命令而改变.$UID 是只读变量,不容易在命令行或者是脚本中被修改,并且和内建的 id 命令很相像 

    #  见E_9_5.sh

    #   注意:变量$ENV,$LOGNAME,$MAIL,$TERM,$USER,和$USERNAME 并不是 Bash 的内建变量.它们经常被设置成环境变量,它们一般都放在 Bash 的安装文件中.$SHELL,用户登录的shell 的名字,可能是从/etc/passwd 设置的,也可能是在一个"init"脚本中设置的,同样的,它也不是 Bash 的内建变量

     echo $ENV 

     echo $SHELL

     echo $TERM

     echo $LOGNAME

     echo $USER

     echo $MAIL


      

   
     








  


















