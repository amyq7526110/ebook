#!/bin/bash 

   # 远端主机接入

   echo  -e "\033[31m  
   
     sx, rx

     sx 和 rx 命令使用 xmodem 协议, 设置服务来向远端主机传输文件
     和接收文件. 这些都是通讯安装包的一般部分, 比如 minicom.

     sz, rz
     sz 和 rz 命令使用 zmodem 协议, 设置服务来向远端主机传输文件
     和接收文件. zmodem协议在某些方面比 xmodem 强, 比如使用更快的
     的传输波特率, 并且可以对中断的文件进行续传.与 sx 一样 rx,
     这些都是通讯安装包的一般部分.

     ftp

     向远端服务器上传或下载的工具和协议. 一个 ftp 会话可以写
     到脚本中自动运行. (见Example 17-6, Example A-4, 和 Example A-13).

     uucp, uux, cu
     uucp: UNIX 到 UNIX 拷贝. 这是一个通讯安装包, 目的是为了在 
     UNIX 服务器之间传输文件. 使用 shell 脚本来处理 uucp 命令
     序列是一种有效的方法.因为互联网和电子邮件的出现, uucp 
     现在看起来已经很落伍了, 但是这个命令在互联网连接不可用或者不
     适合使用的地方, 这个命令还是可以完美的运行. uucp 的优点就是它
     的容错性, 即使有一个服务将拷贝操作中断了, 那么当连接恢复的时候,
     这个命令还是可以在中断的地方续传.
     ---
     uux: UNIX 到 UNIX 执行. 在远端系统上执行一个命令.这个命令是 uucp 包的一部分.
     ---
     cu: Call Up 一个远端系统并且作为一个简单终端进行连接. 
     这是一个 telnet 的缩减版本. 这个命令是 uucp 包的一部分.




     telnet

     连接远端主机的工具和协议.注意:telnet 协议本身包含安全漏洞, 
     因此我们应该适当的避免使用.

     wget
     wget 工具使用非交互的形式从 web 或 ftp 站点上取得或下载文件. 
     在脚本中使用正好.

     1 wget -p http://www.xyz23.com/file01.html
     2 # The -p or --page-requisite 选项将会使得 wget 取得显示指定页时
     3 #+ 所需要的所有文件.(译者: 比如内嵌图片和样式表等).
     4
     5 wget -r ftp://ftp.xyz24.net/~bozo/project_files/ -O $SAVEFILE
     6 # -r 选项将会递归的从指定站点
     7 #+ 上下载所有连接.

   \033[0m"
