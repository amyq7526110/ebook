#!/bin/bash

echo -e "\033[0m

   ulimit
   设置使用系统资源的上限. 通常情况下都是使用-f 选项来调用, -f 用来设置文件尺寸的限
   制(ulimit -f 1000 就是将文件大小限制为 1M). -c(译者注: 这里应该是作者笔误, 作者
   写的是-t)选项来限制 coredump(译者注: 核心转储, 程序崩溃时的内存状态写入文件)尺寸(ulimit -c 0 就是不要 coredumps). 一般情况下, ulimit 的值应该设置在
   /etc/profile 和(或)~/.bash_profile 中(参见 Appendix G).
   注意: Judicious 使用 ulimit 可以保护系统免受可怕的 fork 炸弹的迫害

    #!/bin/bash
    # 这个脚本只是为了展示用.
    # 你要自己为运行这个脚本的后果负责 -- 它*将*凝固你的系统.
   
   while true
   do
   
   $0 &
   
  
   done
   者注:巫师的厢房?没看懂)
  
    exit 0
   # 死循环.
   #
   #+
   #+
   #
   这个脚本调用自身 . . .
   fork 无限次 . . .
   直道系统完全不动, 因为所有的资源都耗尽了.
   这就是臭名卓著的 "sorcerer's appentice" 剧情.<rojy bug>(译
   # 这里不会真正的推出, 因为这个脚本不会终止.
   当这个脚本超过预先设置的限制时, 在/etc/profile 中的 ulimit -Hu XX (XX 就是需
   要限制的用户进程) 可以终止这个脚本的运行.


   quota
   显示用户或组的磁盘配额.
   setquota
   从命令行中设置用户或组的磁盘配额.
   umask
   设定用户创建文件时权限的缺省 mask(掩码). 也可以用来限制特定用户的默认文件属性.
   所有用户创建的文件属性都是由 umask 所指定的. The (octal) 传递给 umask 的 8 进制的值定
   义了文件的权限. 比如, umask 022 将会使得新文件的权限最多为 755(777 与非 022) [7]
   当然, 用户可以随后使用 chmod 来修改指定文件的属性. 用户一般都是将 umask 设置值的地
   方放在/etc/profile 和(或) ~/.bash_profile 中 (参见 Appendix G




   rdev
   取得 root device, swap space, 或 video mode 的相关信息, 或者对它们进行修改. 通常
   说来 rdev 都是被 lilo 所使用, 但是在建立一个 ram disk 的时候, 这个命令也很有用. 小心
   使用, 这是一个危险的命令.

\033[0m"
