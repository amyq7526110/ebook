#!/bin/bash

#  doexec
#  doexec 命令允许将一个随便的参数列表传递到一个二进制可执行文件中. 特别的, 甚至
#  可以传递 arg[0] (相当于脚本中的 $0 ), 这样可以使用不同的名字来调用这个可执行
#  文件, 并且通过不同的调用的名字, 可以让这个可执行文件执行不同的动作. 这也可以
#  说是一种将参数传递到可执行文件中的比较绕圈子的做法.
#  比如, /usr/local/bin 目录可能包含一个 "aaa" 的二进制文件. 使用
#  doexec /usr/local/bin/aaa list 可以 列出 当前工作目录下所有以 "a" 开头的的文
#  件, 而使用 doexec /usr/local/bin/aaa delete 将会删除这些文件.
#  注意: 可执行文件的不同行为必须定义在可执行文件自身的代码中, 可以使用如下的
#  shell 脚本作类比:
#  
#  
#  
#  
#  
#  
#  case `basename $0` in
#  "name1" ) do_something;;
#  "name2" ) do_something_else;;
#  "name3" ) do_yet_another_thing;;
#  *
#  ) bail_out;;
#  esac
#  dialog
#  dialog 工具集提供了一种从脚本中调用交互对话框的方法. dialog 的更好的变种版本是
#  -- gdialog, Xdialog, 和 kdialog -- 事实上是调用的 X-Windows 的界面工具集. 参
#  见 Example 33-19.sox
#  sox 命令, "sound exchange" (声音转换)命令, 可以进行声音文件的转换. 事实上,可执
#  行文件 /usr/bin/play (现在不建议使用) 只不过是 sox 的一个 shell 包装器而已.
#  举个例子, sox soundfile.wav soundfile.au 将会把一个 WAV 声音文件转换成一个
#  (Sun 音频格式) AU 声音文件.
#  Shell 脚本非常适合于使用 sox 的声音操作来批处理声音文件. 比如, 参见
#  Linux Radio Timeshift HOWTO 和 MP3do Project.
#  注意事项:
#  [1]
#  这个工具事实上是从 Debian Linux 发行版中的一个脚本借鉴过来的.
#  [2]
#  打印队列 就是"在线等待"打印的作业组.
#  [3]
#  对于本话题的一个完美的介绍, 请参见 Andy Vaught 的文章, 命名管道的介绍,
#  (http://www2.linuxjournal.com/lj-issues/issue41/2156.html), 这是
#  Linux Journal (http://www.linuxjournal.com/)1997 年 9 月的一个问题.
#  [4]
#  EBCDIC (发音是 "ebb-sid-ick") 是单词 (Extended Binary Coded Decimal
#  Interchange Code) 的首字母缩写. 这是 IBM 的数据格式, 现在已经不常见了.
#  dd 命令的 conv=ebcdic 选项的一个比较奇异的使用方法是对一个文件进行快速而
#  且容易但不太安全的编码.
#   cat $file | dd conv=swab,ebcdic > $file_encrypted
#   # 编码 (看起来好像没什么用).
#   # 应该交换字节(swab), 有点晦涩.
#  [5]
#  
#   cat $file_encrypted | dd conv=swab,ascii > $file_plaintext
#   # 解码.
#  宏 是一个符号常量, 将会被扩展成一个命令字符串或者一系列的参数操作.




