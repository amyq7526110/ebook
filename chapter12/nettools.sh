#!/bin/bash 

   echo -e "\033[36m
     
     lynx
     lynx 是一个网页浏览器, 也是一个文件浏览器. 
     它可以(通过使用 -dump 选项)在脚本中
     使用. 它的作用是可以从 Web 或 ftp 站点上非交互的获得文件.

      lynx -dump http://www.xyz23.com/file01.html >$SAVEFILE

     使用 -traversal 选项, lynx 将从参数中指定的 HTTP URL 开始,
     遍历指定服务器上的所有链接. 如果与 -crawl 选项一起用的话,
     将会把每个输出的页面文本都放到一个 log文件中.

     rlogin

     远端登陆, 在远端的主机上开启一个会话. 这个命令存在安全隐患,
     所以要使用 ssh 来代替a

     rsh
     远端 shell, 在远端的主机上执行命令. 这个命令存在安全隐患,
     所以要使用 ssh 来代替.

     rcp
     远端拷贝, 在网络上的不同主机间拷贝文件.

     rsync
     远端同步, 在网络上的不同主机间(同步)更新文件.

     rsync -a ~/sourcedir/*txt /node1/subdirectory/
     

   \033[0m"
