#!/bin/bash 

echo -e "\033[32m

Users 和 Groups 类命令

users

显示所有的登录的用户. 这个命令与 who -q 基本一致.

\033[0m"

users   
  
who -q  

echo  -e "\033[32m

groups


列出当前用户和他所属于的组. 这相当于 $GROUPS 内部变量, 但是这个命令将会给出组名字, 而不是数字


\033[0m"

groups

echo $GROUPS
echo -e "\033[32m
chown, chgrp
chown 命令将会修改一个或多个文件的所有权. 对于 root 来说这是一种非常好的将文件的 所有权从一个用户换到另一个用户的方法. 一个普通用户不能修改文件的所有权, 即使他 是文件的宿主也不行. [1]
 root# chown bozo *.txt
chgrp 将会修改一个或个文件党组所有权. 你必须是这些文件的宿主, 并且是目的组的成
员(或者 root), 这样才能使用这个操作.
\033[0m"

 # chgrp --recursive dunderheads *.data
 # "dunderheads"(译者: 晕,蠢才...) 组现在拥有了所有的"*.data"文件.
 #+ 包括所有$PWD 目录下的子目录中的文件(--recursive 的作用就是包含子目录).

# useradd, userdel
# useradd 管理命令将会在系统上添加一个用户帐号, 并且如果指定的话,
# 还会为特定的用户创建 home 目录. 相应的 userdel 命令将会从系统上
# 删除一个用户帐号,
 
# [2] 并且删除相应的文件.

# 注意: adduser 命令与 useradd 是相同的, adduser 通常都是一个符号链接.

#   usermod
#   修改用户帐号. 可以修改密码, 组身份, 截止日期, 或者给定
#   用户帐号的其他的属性. 使用这个命令, 用户的密码可能会被
#   锁定, 因为密码会影响到帐号的有效性.


#  groupmod
#  修改指定组. 组名字或者 ID 号都可以使用这个命令来修改.
#  id
#  id 将会列出当前进程的真实和有效用户 ID, 还有用户的组 ID. 这与 Bash 的内部变量
#  $UID, $EUID, 和 $GROUPS 很相像.
#  bash$ id
#  uid=501(bozo) gid=501(bozo) groups=501(bozo),22(cdrom),80(cdwriter),81(audio)
#  bash$ echo $UID501

#  who
#  显示系统上所有已经登录的用户.
#  bash$ who 
#  bozo  tty1   Apr 27 17:45
#  bozo  pts/0  Apr 27 17:46
#  bozo  pts/1  Apr 27 17:47
#  bozo  pts/2  Apr 27 17:49




#  -m 选项将会只给出当前用户的详细信息. 
#  将任意两个参数传递到 who 中 都等价于 who -m,
#  就像 who am i 或者 who The Man.
#  bash$ who -m
#  localhost.localdomain!bozo
#  pts/2
#  Apr 27 17:49
#  whoami 与 who -m 很相似, 但是只列出用户名.
#  bash$ whoami
#  bozo 


#  w
#  显示所有的登录的用户和属于它们的进程. 这是一个 who 的扩展版本. 
#  w 的输出可以通过管
#  道传递到 grep 中, 这样就可以查找指定的用户或进程.
#  bash$ w | grep startx
#  bozo tty1 - 4:22pm 6:41 4.47s 0.45s startx


# logname
# 显示当前用户的登录名(可以在/var/run/utmp 中找到). 这与上边的 whoami 很相近.



#  logname
#  显示当前用户的登录名(可以在/var/run/utmp 中找到). 这与上边的 whoami 很相近.
#  bash$ logname
#  bozo
#  bash$ whoami
#  bozo
#  然而...
#  bash$ suPassword: ......
#  bash# whoami
#  root
#  bash# logname
#  bozo
#  注意: logname 只会打印出登录的用户名, 而 whoami 将会给出附着到当前进程的用户名.
#  就像我们上边看到的那样, 这两个名字有时会不同.



#  
#  su
#  使用一个代替的用户来运行一个程序或脚本. su rjones 将会以 rjones 来启动一个
#  shell. 一个不加参数的 su 默认就是 root. 参见 Example A-15.
#  sudo
#  以 root(或其他用户)的身份来运行一个命令. 这个命令可以运行在脚本中, 这样就允许以
#  正规的用户身份来运行脚本.
#   #!/bin/bash
#  
#  # 一些命令.
#   sudo cp /root/secretfile /home/bozo/secret
#  # 一些命令.
#  文件 /etc/sudoers 持有允许调用 sudo 的用户名.



#  passwd
#  设置, 修改, 或者管理用户的密码.
#  passwd 命令可以用在脚本中, 但可能你不想这么用.
#  passwd 命令的 -l, -u, 和 -d 选项允许锁定,
#  解锁,和删除一个用户的密码. 只有 root
#  用户可以使用这些选项.


# ac
# 显示用户登录的连接时间, 就像从 /var/log/wtmp 
# 中读取一样. 这是 GNU 的一个统计工具.


# last
# 用户最后登录的信息, 就像从/var/log/wtmp 中读出来一样.
#  这个命令也可以用来显示远端登录.
# 比如, 显示最后几次系统的重启信息:


# newgrp
# 不用登出就可以修改用户的组 ID. 并且允许存取新组的文件.
# 因为用户可能同时属于多个组, 这个命令很少被使用.



# ac
#   显示用户登录的连接时间, 就像从 /var/log/wtmp 中读取一样.
#   这是 GNU 的一个统计工具.

# last
# 用户最后登录的信息, 就像从/var/log/wtmp 中读出来一样.
# 这个命令也可以用来显示远端登录.
# 比如, 显示最后几次系统的重启信息:

#root     pts/0        :0               Fri Oct 12 09:30 - 09:30  (00:00)    
#root     pts/0        :0               Fri Oct 12 09:29 - 09:29  (00:00)    
#root     :0           :0               Fri Oct 12 09:28 - 09:30  (00:01)    
#reboot   system boot  3.10.0-693.el7.x Fri Oct 12 17:27 - 09:30  (-7:-57)   
#reboot   system boot  3.10.0-693.el7.x Fri Sep 28 01:15 - 17:16  (-7:-59)   
#root     pts/0        :0               Mon Mar 19 19:03 - 19:03  (00:00)    
#root     :0           :0               Mon Mar 19 19:02 - down   (00:00)    
#reboot   system boot  3.10.0-693.el7.x Tue Mar 20 02:49 - 19:03  (-7:-46)   
#root     pts/0        :0               Mon Mar 19 18:47 - 18:49  (00:02)    
#root     :0           :0               Mon Mar 19 18:47 - 18:49  (00:02)    
#reboot   system boot  3.10.0-693.el7.x Tue Mar 20 02:46 - 19:03  (-7:-42)   
#root     pts/1        :0               Mon Mar 19 18:42 - 18:46  (00:04)    
#root     pts/0        :0               Mon Mar 19 18:39 - 18:46  (00:07)    
#root     :0           :0               Mon Mar 19 18:38 - 18:46  (00:08)    
#reboot   system boot  3.10.0-693.el7.x Tue Mar 20 00:29 - 19:03  (-5:-25)   
#root     pts/0        :0               Mon Mar 19 16:16 - 16:27  (00:11)    
#root     :0           :0               Mon Mar 19 16:16 - down   (00:11)    
#reboot   system boot  3.10.0-693.el7.x Tue Mar 20 00:13 - 16:27  (-7:-45)


#  newgrp
#  不用登出就可以修改用户的组 ID. 并且允许存取新组的文件. 
#  因为用户可能同时属于多个组, 这个命令很少被使用.

















