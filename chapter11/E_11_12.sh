#!/bin/bash

#   强制登出(log-off)

    # 脚本应该以根用户的身份来运行

    # 结束 ppp 进程来强制登出 log-off.

    killppp="eval kill -9 `ps aux | awk '/ppp/{ print $1}'`"

    #                    -------- ppp 的进程 ID    ------

    $killapp          #  这个变量现在成为了一个命令.

    chmod 666 /dev/ttyS3   # 恢复读写权限,否则什么?

    # 因为在 ppp 上执行一个 SIGKILL 将会修改串口的权限,

    #+ 我们把权限恢复到之前的状态.

    rm /var/lock/LCK.ttyS3   # 删除串口琐文件.为什么?


    # 1) 编写一个脚本来验证是否跟用户正在运行它.
    # 2) 做一个检查,检查一下将要杀掉的进程
    #+ 再杀掉这个进程之前,它是否正在运行.
    # 3) 基于'fuser'来编写达到这个目的的另一个版本的脚本
    #+ if [ fuser -s /dev/modem ]; then . . .


   exit 0
