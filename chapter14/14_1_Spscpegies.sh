#!/bin/bash 


  # stupid-script-tricks.sh: 朋友, 别在家这么做.
  # 来自于"Stupid Script Tricks," 卷 I.

  dangerous_variable=`cat /boot/vmlinuz` # 这是压缩过的linux 内核本身

  echo "string-length of \$dangerous_variable = ${dangerous_variable}"

  # 这个字符串变量的长度是 $dangerous_variable = 794151

  # 不要 wc -c /boot/vmlinuz 来计算长度

  echo "$dangerous_variable"

  # 千万别这么尝试 浙江爱嗯挂起这个脚本


  # 文档# 文档作者已经意识到将二进制文件设置到
  #+ 变量中是一个没用的应用.
  
  exit 0

  注意, 在这里是不会发生缓冲区溢出错误. 因为这是一个解释型语言的实例, Bash 就是一
  种解释型语言, 解释型语言会比编译型语言提供更多的对程序错误的保护措施.
  变量替换允许将一个循环的输出放入到一个变量中.这么做的关键就是将循环中 echo 命令的输
  出全部截取.
