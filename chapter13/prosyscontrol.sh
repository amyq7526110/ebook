#!/bin/bash 

进程控制和启动类
init
init 命令是所有进程的父进程. 在系统启动的最后一步调用, init 将会依据
/etc/inittab 来决定系统的运行级别. 只能使用 root 身份来运行它的别名 telinit.
telinit
init 命令的符号链接, 这是一种修改系统运行级别的一个手段, 通常在系统维护或者紧急
的文件系统修复的时候才用. 只能使用 root 身份调用. 调用这个命令是非常危险的 - 在
你使用之前确定你已经很好地了解它.
runlevel
显示当前和最后的运行级别, 也就是, 确定你的系统是否终止(runlevel 为 0), 还是运行
在单用户模式(1), 多用户模式(2), 或者是运行在 X Windows(5), 还是正在重启(6). 这
个命令将会存取/var/run/utmp 文件.
halt, shutdown, reboot
设置系统关机的命令, 通常比电源关机的优先级高.
service
开启或停止一个系统服务. 启动脚本在/etc/init.d 中, 并且/etc/rc.d 在系统启动的时候
使用这个命令来启动服务.
root# /sbin/service iptables stop
Flushing firewall rules:
Setting chains to policy ACCEPT: filter
Unloading iptables modules:

