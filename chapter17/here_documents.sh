#!/bin/bash

第 17 章 Here Documents
======================
here document 就是一段特殊目的的代码块. 他使用 I/O 重定向的形式来将一个命令序列传递
到一个交互程序或者命令中, 比如 ftp, cat, 或者 ex 文本编辑器.
COMMAND <<InputComesFromHERE
  ...
InputComesFromHERE
limit string 用来划定命令序列的范围(译者注: 两个相同的 limit string 之间就是命令序列)
. 特殊符号 << 用来表识 limit string. 这个符号具有重定向文件的输出到程序或命令的输入的作用. 与 interactive-program < command-file 很相象, command-file 包含:
  command #1
  command #2
  ...
用来表识 
而 here document 的形式看上去是如下的样子:
 
 
#!/bin/bash
interactive-program <<LimitString
command #1
command #2
...
LimitString
选择一个名字非常诡异的 limit string 将会避免命令列表和 limit string 重名的问题.
注意,某些时候 here document 用在非交互工具和命令上的时候也会有好的效果, 比如, wall.
