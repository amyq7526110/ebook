#!/bin/bash 

echo -e "\033[36m

  lsmod
  列出所有安装的内核模块
  注意: 使用 cat /proc/modules 可以得到同样的结果.


  insmod 
           强制一个内核模块的安装(如果可能的话, 使用 modprobe 来代替) 
        必须以 root 身份调用

  rmmod
           强制卸载一个内核模块. 必须以 root 身份调用.

  modprobe
           模块装载器, 一般情况下都是在启动脚本中自动调用. 必须以 root 身份调用.

  depmod
           创建模块依赖文件, 一般都是在启动脚本中调用.

  modinfo
           出一个可装载模块的信息.
  

  


\033[0m"
