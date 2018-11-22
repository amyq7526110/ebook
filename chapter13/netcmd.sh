#!/bin/bash 
echo -e "\033[1m

ifconfig
网络的接口配置和调试工具.

iwconfig
这是为了配置无线网络的命令集合. 可以说是上边的 ifconfig 的无线版本.

route
显示内核路由表信息, 或者查看内核路由表的修改.

chkconfig
检查网络配置. 这个命令负责显示和管理在启动过程中所开启的网络服务(这些服务都是
从/etc/rc?.d 目录中开启的).
最开始是从 IRIX 到 Red Hat Linux 的一个接口, chkconfig 在某些 Linux 发行版中并不是核心安装的一部分.


tcpdump
网络包的"嗅探器". 这是一个用来分析和调试网络上传输情况的工具, 它所使用的手段是
把匹配指定规则的包头都显示出来.
显示主机 bozoville 和主机 caduceus 之间所有传输的 ip 包.
bash$ tcpdump ip host bozoville and caduceus
当然,tcpdump 的输出可以被分析, 可以用我们之前讨论的文本处理工具来分析结果.



\033[0m"
