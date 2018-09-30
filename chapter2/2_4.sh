#!/bin/bash 

#      要注意,在每个脚本的开头都使用"#!",这意味着告诉你的系统这个文件的执行需要指定一个解释器.#!实际上是一个 2 字节[1]的魔法数字,这是指定一个文件类型的特殊标记, 换句话说, 在这种情况下,指的就是一个可执行的脚本(键入 man magic 来获得关于这个迷人话题的更多详细信息).在#!之后接着是一个路径名.这个路径名指定了一个解释脚本中命令的程序,这个程序可以是 shell,程序语言或者是任意一个通用程序.这个指定的程序从头开始解释并且执行脚本中的命令(从#!行下边的一行开始),忽略注释.[2]
#      如:
#      #!/bin/sh
#      #!/bin/bash
#      #!/usr/bin/perl
#      #!/usr/bin/tcl
#      #!/bin/sed -f
#      #!/usr/awk -f




#     上边每一个脚本头的行都指定了一个不同的命令解释器,如果是/bin/sh,那么就是默认 shell(在 Linux 系统中默认是 Bash).[3]使用#!/bin/sh,在大多数商业发行的 UNIX 上,默认是 Bourneshell,这将让你的脚本可以正常的运行在非 Linux 机器上,虽然这将会牺牲 Bash 一些独特的特征.脚本将与 POSIX[4] 的 sh 标准相一致.注意: #! 后边给出的路径名必须是正确的,否则将会出现一个错误消息,通常是"Command not found",这将是你运行这个脚本时所得到的唯一结果.当然"#!"也可以被忽略,不过这样你的脚本文件就只能是一些命令的集合,不能够使用 shell 内建的指令了,如果不能使用变量的话,当然这也就失去了脚本编程的意义了.

# 注意:这个例子鼓励你使用模块化的方式来编写脚本,平时也要注意收集一些零碎的代码,

# 这些零碎的代码可能用在你将来编写的脚本中.这样你就可以通过这些代码片段来构造一个较大的工程用例. 以下边脚本作为序,来测试脚本被调用的参数是否正确.


    E_WRONG_ARGS=65
   
    script_parameters="-a -h -m -z"

#   -a = all -h = help,等等

    Number_of_expected_args=1

    if [ $# -ne $Number_of_expected_args ] 
  
    then  

        echo "Usage: `basename $0` $script_parameters"  

        #  `basename $0` 脚本的文件名

        exit $E_WRONG_ARGS

    fi















