#!/bin/bash 

#  杂项类 

echo -e "\033[36m

    env
       使用设置过的或修改过(并不是修改整个系统环境)的环境变量来运行一个程序或脚本. 使 用 [varname=xxx] 形式可以在脚本中修改环境变量. 如果没有指定参数, 那么这个命令将会列出所有设置的环境变量.
    注意: 在 Bash 和其它的 Bourne shell 衍生物中, 
    是可以在单一命令行上设置多个变量的.


    var1=value1 var2=value2 commandXXX
    # \$var1 和 \$var2 只设置在'commandXXX'的环境中.
    注意: 当不知道 shell 或解释器的路径的时候, 脚本的第一行(#!行)可以使用 env.
    #! /usr/bin/env perl
    print This Perl script will run,\n
    print even when I don't know where to find Perl.\n;
    # 便于跨平台移植,
    # Perl 程序可能没在期望的地方.
    # Thanks, S.C.

#    watch
#    以指定的时间间隔来重复运行一个命令.
#    默认的时间间隔是 2 秒, 但时刻以使用-n 选项来修改.
#    1 watch -n 5 tail /var/log/messages
#    2 # 每隔 5 秒钟显示系统 log 文件的结尾, /var/log/messages.
#    strip
#    从可执行文件中去掉调试符号引用. 这样做可以减小尺寸, 但是就不能调试了.
#    这个命令一般都用在 Makefile 中, 但是很少用在 shell 脚本中.
#    nm
#    列出未 strip 过的编译后的 2 进制文件的符号.
#    rdist
#    远程文件分布客户机程序: 在远端服务器上同步, 克隆, 或者备份一个文件系统


\033[0m"

