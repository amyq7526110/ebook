#!/bin/bash 


# 作业控制

#  ps
#  进程统计: 通过进程所有者和 PID(进程 ID)来列出当
#  前执行的进程. 通常都是使用 ax 选项
#  来调用这个命令, 并且结果可以通过管道传递到 grep 
#   或 sed 中来搜索特定的进程
#  (参见 Example 11-12 和 Example 27-2).
#  如果想使用"树"的形式来显示系统进程: ps afjx 或者 ps ax --forest.
#  ps ax | grep sendmail
#  295 ?  S 0:00 sendmail: accepting connections on port 25

# pgrep, pkill
# ps 命令与 grep 或 kill 结合使用.

# ps a | grep mingetty

# pgrep mingetty

# pstree

# 使用"树"形式列出当前执行的进程. -p 选项显示 PID,和进程名字.a

# top
# 连续不断的显示 cpu 使用率最高的进程. -b 选项将会
# 以文本方式显示, 以便于可以在脚本中分析或存取.


# nice
# 使用修改后的优先级来运行一个后台作业. 
# 优先级从 19(最低)到-20(最高). 只有 root 用
# 户可以设置负的(比较高的)优先级. 相关的命令是 renice, snice, 和 skill.


# nohup
# 保持一个命令的运行, 即使用户登出系统. 这个命令做为前台进程来运行, 除非前边加 &.
# 如果你在脚本中使用 nohup 命令, 最好和 wait 命令一起使用, 这样可以避免创建一个
# 孤儿进程或僵尸进程.

# pidof
# 取得一个正在运行的作业的进程 ID(PID). 因为一些作业控制命令,
# 比如 kill 和 renice 只能使用进程的 PID(而不是它的名字), 所以
# 有时候必须的取得 PID. pidof 命令与$PPID 内部变量非常相似.





#  fuser
#  取得一个正在存取某个或某些文件(或目录)的进程 ID. 使用-k 选项将会杀掉这些进程. 对
#  于系统安全来说, 尤其是在脚本中想阻止未被授权的用户存取系统服务的时候, 这个命令
#  就显得很有用了.
#  bash$ fuser -u /usr/bin/vim
#  /usr/bin/vim:
#  3207e(bozo)
#  bash$ fuser -u /dev/null
#  /dev/null:
#  3009(bozo) 3010(bozo) 3197(bozo)
#  3199(bozo)
#  当正常的插入或删除保存的媒体, 比如 CD ROM 或者 USB 闪存设备的时候, fuser 的应用也显
#  得特别重要. 有时候当你想 umount 一个设备失败的时候(出现设备忙的错误消息), 这意味
#  着某些用户或进程正在存取这个设备. 使用 fuser -um /dev/device_name 可以搞定这些,
#  这样你就可以杀掉所有相关的进程.
#  bash$ umount /mnt/usbdrive
#  umount: /mnt/usbdrive: device is busy
#  bash$ fuser -um /dev/usbdrive
#  /mnt/usbdrive:
#  1772c(bozo)
#  bash$ kill -9 1772
#  bash$ umount /mnt/usbdrive
#  fuser 的-n 选项可以获得正在存取某一端口的进程. 当和 nmap 命令组合使用的时候尤其
#  有用.
#  root# nmap localhost.localdomain
#  PORT
#  STATE SERVICE
#  25/tcp
#  open smtp
#  root# fuser -un tcp 25
#  25/tcp:
#  2095(root)
#  root# ps ax | grep 2095 | grep -v grep
#  2095 ?
#  Ss
#  0:00 sendmail: accepting connections

#  cron
#  管理程序调度器, 执行一些日常任务, 比如清除和删除系统 log 文件, 或者更新 slocate 命
#  令的数据库. 这是 at 命令的超级用户版本(虽然每个用户都可以有自己的 crontab 文件, 并
#  且这个文件可以使用 crontab 命令来修改). 它以幽灵进程 T 的身份来运行, 并且从
#  /ect/crontab 中获得执行的调度入口.注意: 一些 Linux 的风格都使用 crond, Matthew Dillon 的 cron.
#  














