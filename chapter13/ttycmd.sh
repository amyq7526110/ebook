#!/bin/bash

# 终端类命令
# tty
# 显示当前用户终端的名字. 注意每一个单独的 xterm 
# 窗口都被算作一个不同的终端.
# $ tty
# /dev/pts/1

# stty

# 显示并(或)修改终端设置. 这个复杂命令可以用在脚本中, 
# 并可以用来控制终端的行为和其显示输出的方法. 
# 参见这个命令的 info 页, 并仔细学习它.


# 注意: 终端与模式 terminals and modes
#      一般情况下, 一个终端都是工作在 canonical(标准)模式下. 
#      当用户按键后, 事实上所产生的字符并没有马上传递到运行
#      在当前终端上的程序. 终端上的一个本地的缓存保存了这些
#      按键. 当用按下 ENTER 键的时候, 才会将所有保存的按键信息
#      传递到运行的程序中. 这就意味着在终端内部存在一个基本的行编辑器.

#  stty -a
#       speed 9600 baud; rows 36; columns 96; line = 0;
#       intr = ^C; quit = ^\; erase = ^H; kill = ^U; 
#       eof = ^D; eol = <undef>; eol2 =<undef>;
#       start = ^Q; stop = ^S; susp = ^Z; rprnt = ^R; 
#       werase = ^W; lnext = ^V; flush = ^O;
#       ...
#       isig icanon iexten echo echoe echok -echonl -noflsh -xcase -tostop -echoprt
#      
#      在使用 canonical 模式的时候, 可以对本地终端行编辑器所定义
#      的特殊按键进行重新定义.bash$ cat > filexxx
#      wha<ctl-W>I<ctl-H>foo bar<ctl-U>hello world<ENTER>
#      <ctl-D>
#      bash$ cat filexxx
#      hello world
#      bash$ wc -c < filexxx
#      12
#      控制终端的进程只保存了 12 个字符(11 个字母加上一个换行), 虽然用户敲了 26 个按键.
#      在 non-canonical ("raw") 模式, 每次按键(包括特殊定义的按键, 比如 ctl-H)将会
#      立即发送一个字符到控制进程.
#      Bash 提示符禁用了 icanon 和 echo, 因为它用自己的更好的行编辑器代替了终端的基本
#      行编辑器. 比如, 当你在 Bash 提示符下敲 ctl-A 的时候, 终端将不会显示 ^A, 但是
#      Bash 将会获得\1 字符, 然后解释这个字符, 这样光标就移动到行首了.
#      Stéphane Chazelas



#    setterm
#    设置特定的终端属性. 这个命令将向它的终端的 stdout 写一个字符串, 这个字符串将修改
#    终端的行为.
#    bash$ setterm -cursor off
#    bash$
#    setterm 命令可以被用在脚本中来修改写到 stdout 的文本的外观, 虽然如果你仅仅只想完
#    成这个目的, 还有特定的更好的工具可以用.
#    setterm -bold on
#    echo bold hello
#    setterm -bold off
#    echo normal hello



#  tset
#  显示或初始化终端设置. 可以说这是 stty 的功能比较弱的版本.
#  bash$ tset -r
#  Terminal type is xterm-xfree86.
#  Kill is control-U (^U).
#  Interrupt is control-C (^C).
#  
#  setserial
#  设置或者显示串口参数. 这个脚本只能被 root 用户来运行, 并且通常都在系统安装脚本
#  中使用.
#  # 来自于 /etc/pcmcia/serial 脚本:
#  
#  IRQ=`setserial /dev/$DEVICE | sed -e 's/.*IRQ: //'`
#  setserial /dev/$DEVICE irq 0 ; setserial /dev/$DEVICE irq $IRQ

#  getty, agetty
#  一个终端的初始化过程通常都是使用 getty 或 agetty 来建立, 这样才能让用户登录. 这些
#  命令并不用在用户的 shell 脚本中. 它们的行为与 stty 很相似.
#  mesg
#  使能或禁用当前用户终端的存取权限. 禁用存取权限将会阻止网络上的另一用户向这个终
#  端写消息.
#  注意: 当你正在编写文本文件的时候, 在文本中间突然来了一个莫名其妙的消息, 这对你
#  来说是非常烦人的. 在多用户的网络环境下, 当你不想被打断的时候, 你可能因此希
#  望禁用对你终端的写权限.

#  wall
#  这是一个缩写单词 "write all", 也就是, 向登录到网络上的任何终端的所有用户都发送
#  一个消息. 最早这是一个管理员的工具, 很有用, 比如, 当系统有问题的时候, 管理可以
#  警告系统上的所有人暂时离开 (参见 Example 17-1).

# 注意: 如果某个特定终端使用 mesg 来禁止了写权限, 那么 wall 将不会给它发消息.


























