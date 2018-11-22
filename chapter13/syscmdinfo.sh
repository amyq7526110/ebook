#!/bin/bash

# free
# 使用表格形式来显示内存和缓存的使用情况. 这
# 个命令的输出非常适合于使用 grep, awk
# 或者 Perl 来分析. procinfo 命令将会显示 free
# 命令所能显示的所有信息, 而且更多.

# 显示未使用的 RAM 内存:
# bash$ 

free | grep Mem | awk '{ print $4 }'


# procinfo
#    从/proc pseudo-filesystem 中提取和显示所有信息和统计资料.
#    这个命令将给出更详细的信息.

# lsdev
#    显示设备, 也就是显示安装的硬件.

#  du
#  递归的显示(磁盘)文件的使用状况. 除非指定, 默认是当前工作目录.

du -ach
du -sh    # 
#  df
#  使用列表的形式显示文件系统的使用状况.
df -hT

#  dmesg
#  将所有的系统启动消息输出到 stdout 上. 方便出错,
#  并且可以查出安装了哪些设备驱动和察看使用了哪些
#  系统中断. dmesg 命令的输出当然也可以在脚本中使用 
#  grep, sed, 或awk 来进行分析.

#  dmesg | grep hda

#  stat
#  显示一个或多个给定文件(也可以是目录文件或设备文件)
#  的详细的统计信息.

stat 

#  如果目标文件不存在, stat 将会返回一个错误信息.

#  vmstat
#  显示虚拟内存的统计信息.

vmstat


##  netstat
##  显示当前网络的统计和信息, 比如路由表
##  和激活的连接. 这个工具存取/proc/net(第 27 章)
##  中的信息. 参见 Example 27-3.
#   netstat -r 等价于 route 命令.

#   uptime
#   显示系统运行的时间, 还有其他一些统计信息.bash$ uptime
#   10:28pm up
#   1:57, 3 users,
#   load average: 0.17, 0.34, 0.27
#   注意: load average 如果小于或等于 1, 那么就意味着系统会马上处理. 如果
#   load average 大于 1, 那么就意味着进程需要排队. 如果 load average 大于 3,
#   那么就意味着, 系统性能已经显著下降了.

#  hostname
#  显示系统的主机名字. 这个命令在 /etc/rc.d 安装脚本(/etc/rc.d/rc.sysinit
#  或类似的)中设置主机名. 等价于 uname -n, 并且与$HOSTNAME 内部变量很相像.




#  与 hostname 命令很相像的命令还有 domainname, 
#  dnsdomainname, nisdomainname, 和ypdomainname 命令.
#  使用这些来显示或设置系统 DNS 或者 NIS/YP 域名. 对于 hostname
#  命令来说使用不同的选项一样可以达到上边这些命令的目的.


#  hostid
#  显示主机的 32 位的 16 进制 ID.
#  bash$ hostid
#  7f0100
#  注意: 这个命令据说对于特定系统可以获得一个"唯一"的序号. 某些产品的注册过程可能
#  会需要这个序号来作为用户的许可证. 不幸的是, hostid 只会使用字节转换的方法
#  来用 16 进制显示机器的网络地址.
#  一个没有网络的 Linux 机器的典型的网络地址设置在/ect/hosts 中.
#  bash$ cat /etc/hosts
#  127.0.0.1
#  localhost.localdomain localhost
#  碰巧, 通过对 127.0.0.1 进行字节转换, 我们获得了 0.127.1.0, 用 16 进制表示就是
#  007f0100, 这就是上边 hostid 返回的结果. 这样几乎所有的无网络的 Linux 机器都会
#  得到这个 hostid.

#  sar
#  sar (System Activity Reporter 系统活动报告) 命令将会给出系统统计的一个非常详细的
#  概要. Santa Cruz Operation("老" SCO)公司在 1999 年 4 月份以开源软件的形式发布了 sar.这个命令并不是基本 Linux 发行版的一部分, 但是你可以从 Sebastien Godard 写的
#  sysstat utilities 包中获得这个工具.

   sar 

#  readelf
#  显示指定的 elf 格式的 2 进制文件的统计信息. 
#  这个工具是 binutils 工具包的一部分.


#  size
#  size [/path/to/binary] 命令可以显示 2 进制可执
#  行文件或归档文件每部分的尺寸. 这个
#  工具主要是程序员使用.

size /bin/bash


#   logger
#   附加一个用户产生的消息到系统日之中 (/var/log/messages). 不是 root 用户也可以调用
#   logger.
#    logger Experiencing instability in network connection at 23:10, 05/21.
#    # 现在, 运行 'tail /var/log/messages'.
#   通过在脚本中调用一个 logger 命令, 就可以将调试信息写到/var/log/messages 中.
#    logger -t $0 -i Logging at line "$LINENO".
#    # "-t" 选项可以为长的入口指定标签.
#    # "-i" 选项记录进程 ID.
#   
#    # tail /var/log/message
#    # ...
#    # Jul 7 20:48:58 localhost ./test.sh[1712]: Logging at line 3.


#  logrotate
#  这个工具用来管理系统的 log 文件, 可以在合适的时候轮换, 压缩, 删除, 和(或)e-mail
#  它们. 这个工具将从老的 log 文件中取得一些杂乱的记录保存在/var/log 中. 通常使用
#  cron 来每天运行 logrotate.
#  在/etc/logrotate.conf 中添加合适的入口就可以管理自己的 log 文件了, 就像管理系统
#  log 文件一样.
#  注意: Stefano Falsetto 创造了 rottlog, 他认为这是 logrotate 的改进版本.






