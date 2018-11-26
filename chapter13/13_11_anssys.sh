#!/bin/bash


 # --> 
 # --> 本书作者所作的注释全部以"# -->"开头.

 # --> 这是由 Miquel van Smoorenburg 所编写的
 # --> 'rc'脚本包的一部分, <miquels@drinkel.nl.mugnet.org>.

 # --> 这个特殊的脚本看起来是是为 Red Hat / FC 所特定的,
 # --> (在其它的发行版中可能不会出现).
 #     停止所有正在运行的不必要的服务
 #+ (there shouldn't be any, so this is just a sanity check)

 for i in /var/lock/subsys/*;do

               # --> 标准的 for/in 循环, 但是由于"do"在同一行上,
               
               # --> 所以必须添加";".
               
               # 检查脚本是否在那.

   [ ! -f  "$i" ] && continue
         
               # --> 这是一种使用"与列表"的聪明的方法, 等价于:
               
               # --> if [ ! -f "$i" ]; then continue

  subsys=${i#/var/lock/subsys/}
               
               # 匹配变量名。在这里就是文件名

               # 与 subsys=`basename $i`  等价

               # --> 从锁定文件名中获得
               # -->+ (如果那里有锁定文件的话,
               # -->+ 那就证明进程正在运行).
               # --> 参考一下上边所讲的"锁定文件"的内容.

   # 终止子程序

   if [ -f /etc/rc.d/init.d/$subsys.init ];then
     
         /etc/rc.d/inid.d/$subsys.init stop
   else
         /etc/rc.d/inid.d/$subsys stop

               # --> 挂起运行的作业和幽灵进程.
               # --> 注意"stop"只是一个位置参数,
               # -->+ 并不是 shell 内建命令.
   fi 



 done 

 exit 0 

 这个没有那么糟. 除了在变量匹配的地方玩了一点花样, 其它也没有别的材料了.
 练习 1. 在/etc/rc.d/init.d 中, 分析 halt 脚本. 比脚本 killall 长一些, 但是概念上很相近.
 对这个脚本做一个拷贝, 放到你的 home 目录下并且用它练习一下(不要以 root 身份运
 行它). 使用-vn 标志来模拟运行一下(sh -vn scriptname). 添加详细的注释. 将
 "action"命令修改为"echos".
 练习 2. 察看/etc/rc.d/init.d 下的更多更复杂的脚本. 看看你是不是能够理解其中的一些脚
 本. 使用上边的过程来分析这些脚本. 为了更详细的理解, 你可能也需要分析在usr/share/doc/initscripts-?.??目录下的文件 sysvinitfile, 这些都是
 "initscript"文件的一部分.
 注意事项:

 这是在 Linux 机器上或者在带有磁盘配额的 UNIX 系统上的真实情况.

 如果正在被删除的特定的用户已经登录了主机, 那么 userdel 命令将会失败.

 对于烧录 CDR 的更多的细节, 可以参见 Alex Withers 的文章, 创建 CD, 在
 Linux Journal 的 1999 年的 10 月文章列表中.

 mke2fs 的-c 选项也会进行坏块检查.

 因为只有 root 用户才具有对/var/lock 目录的写权限, 一般的用户脚本是不能在那里
 设置一个锁定文件的.

 单用户的 Linux 系统的操作更倾向于使用简单的备份工具, 比如 tar.

 NAND(与非)是一种逻辑操作. 这种操作的效果和减法很相像.
                       



