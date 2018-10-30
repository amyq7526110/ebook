#!/bin/bash

#    type[cmd]
# 
#    与 which 扩展命令很相像,type cmd 将给出"cmd"的完整路径.与 which 命令不同的是,type 命 令是 Bash 内建命令.一个很有用的选项是-a 选项,使用这个选项可以鉴别所识别的参数是关 键字还是内建命令,也可以定位同名的系统命令.
#   bash$ type '['
#   [ is a shell builtin
# bash$ type -a '['
#   [ is a shell builtin
#   [ is /usr/bin/[
