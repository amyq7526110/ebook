#!/bin/bash 
 
echo -e "\033[36m
   通讯命令
   -------------
   下边命令中的某几个命令你会在 "追踪垃圾邮件" 练习中找到其用法,
   用来进行网络数  据的转换和分析.

   host 通过名字或 IP 地址来搜索一个互联网主机的信息, 使用 DNS.

   host www.baidu.com
   www.baidu.com is an alias for www.a.shifen.com.
   www.a.shifen.com has address 14.215.177.38
   www.a.shifen.com has address 14.215.177.39

   ipcalc 

   显示一个主机 IP 信息. 使用 -h 选项, ipcalc 将会做一个 D
   NS 的反向查询, 通过 IP地址找到主机(服务器)名.

   ipcalc -h 14.215.177.38
   ipcalc: cannot find hostname for 14.215.177.38: Unknown host
   HOSTNAME=www.baidu.com

   nslookup
   通过 IP 地址在一个主机上做一个互联网的 "名字服务查询". 
   事实上这与 ipcalc -h 或dig -x 等价. 这个命令既可以交互
   运行也可以非交互运行, 换句话说, 就是在脚本中运行.
   nslookup 命令据说已经慢慢被"忽视"了, 但是它还是有它的用处.

   nslookup -sil 66.97.104.180
   nslookup kuhleersparnis.ch
   Server:
   135.116.137.2
   Address:
   135.116.137.2#53
   Non-authoritative answer:
   Name:
   kuhleersparnis.ch

   dig
   域信息查询. 与 nslookup 很相似, dig 在一个主机上做一个互联网的 
   "名字服务查询".这个命令既可以交互运行也可以非交互运行, 
   换句话说, 就是在脚本中运行.下边是一些 dig 命令有趣的选项, 
   +time=N 选项用来设置查询超时为 N 秒, 
   +nofail选项用来持续查询服务器直到收到一个响应, 
   -x 选项会做反向地址查询.
   
   比较下边这 3 个命令的输出, dig -x , ipcalc -h 和 nslookup.

   dig -x 81.9.6.2

   ;; Got answer:
   ;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 11649
   ;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 0
   ;; QUESTION SECTION:
   ;2.6.9.81.in-addr.arpa.
   IN
   ;; AUTHORITY SECTION:
   6.9.81.in-addr.arpa.
   3600
   IN
   2002031705 900 600 86400 3600
   PTR
   SOA
   ns.eltel.net. noc.eltel.net.
   Query time: 537 msec
   SERVER: 135.116.137.2#53(135.116.137.2)
   WHEN: Wed Jun 26 08:35:24 2002
   MSG SIZE rcvd: 91
   
   traceroute

   跟踪包发送到远端主机过程中的路由信息. 这个命令在 LAN, WAN, 
   或者在 Internet 上都可以正常工作. 远端主机可以通过 IP 地址
   来指定. 这个命令的输出也可以通过管道中的
   grep 或 sed 命令来过滤.

   traceroute store.steampowered.com


   ping
   广播一个 "ICMP ECHO_REQUEST" 包到其他主机上,
   既可以是本地网络也可以使远端网络.这是一个测试网络连接的诊断工具,
   应该小心使用.一个成功的 ping 返回的 退出码 为 0. 可以用在脚本的测试语句中.

   ping localhost
   PING localhost.localdomain (127.0.0.1) from 127.0.0.1 : 56(84) bytes of data.
   64 bytes from localhost.localdomain (127.0.0.1): icmp_seq=0 ttl=255 time=709 usec
   64 bytes from localhost.localdomain (127.0.0.1): icmp_seq=1 ttl=255 time=286 usec
   --- localhost.localdomain ping statistics ---
   2 packets transmitted, 2 packets received, 0% packet loss
   round-trip min/avg/max/mdev = 0.286/0.497/0.709/0.212 ms
 
   whois
   执行 DNS (域名系统) 查询 lookup. -h 选项允许指定需要查询的
   特定的 whois 服务器.

   参见 Example 4-6 和 Example 12-36.

   finger

   取得网络上的用户信息. 另外这个命令可以显示一个用户的~/.plan, ~/.project, 和
   ~/.forward 文件, 如果存在的话.a

   处于安全上的考虑, 许多网络都禁用了 finger 以及和它相关的幽灵进程. [1]


   chfn

   修改 finger 命令所显示出来的用户信息.

   vrfy

   验证一个互联网的 e-mail 地址.



    

\033[0m"
