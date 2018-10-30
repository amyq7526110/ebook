#!/bin/bash 

# exit
#    绝对的停止一个脚本的运行.exit 命令有可以随便找一个整数变量作为退出脚本返回 shell 时的退出码.使用 exit 0 对于退出一个简单脚本来说是种好习惯,表明成功运行
  
#    注意: 如果不带参数的使用 exit 来退出,那么退出码将是脚本中最后一个命令的退出码.
#    等价于 exit $?.
#    exec
#    这个 shell 内建命令将使用一个特定的命令来取代当前进程.一般的当 shell 遇到一个命令, 它会 fork off 一个子进程来真正的运行命令.使用 exec 内建命令,shell 就不会 fork 了,并 且命令的执行将会替换掉当前 shell.因此,当我们在脚本中使用它时,当命令实行完毕, 它就会强制退出脚本.

    exec echo "Exiting \"$0\""    # 脚本将在此退出

    # ---------------------

    #  下面的部分将执行不到

    echo "This echo will nerver echo."


    exit 99

    # 脚本不会在这退出.
    
    # 脚本退出后检查一下退出码
    
    #+ 使用'echo $?'命令.
   
    # 肯定不是 99.

