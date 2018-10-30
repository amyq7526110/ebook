#!/bin/bash 

  #  -u 选项将给出 UTC (译者: UTC 是协调世界时英文缩写) 时间(Universal Coordinated Time).

  date 

  date -u

  #  date 命令有许多的输出选项. 比如 %N 将以 10 亿分之一为单位表示当前时间. 
  #+ 这个选项的一个有趣的用法就是用来产生一个 6 位的随机数.

  date +%N | sed -e 's/000$//' -e 's/^0//'  

  #                 ^^^^^^^^^^^^^^^^^^^^^^
  #  去掉开头的0和结尾的0

  #  当然,还有许多其它的选项 (请查看 man date).

  date +%j

  #  显示今天是本年度的第几天(从 1 月 1 日开始计算).

  #   'Tz'参数允许改变当前的默认时区

  date    

  TZ=EST 
  
  date 
 
  # Thanks, Frank Kannemann and Pete Sjoberg, for the tip.



  SixDaysAgo=$(date --date='6 days ago')

  echo $SixDaysAgo

  OneMonthAgo=$(date --date='1 month ago') # 4 周前(不是一个月).

  echo $OneMonthAgo

  OneYearAgo=$(date --date='1 year ago')

  echo $OneYearAgo

  # zdump
  
  echo "\033[36m 查看特定时区的当前时间. \033[0m"

  zdump EST
   
  # time 

  # 输出统计出来的命令执行的时间.

  time ls -l

  # / 给出的输出大概是如下格式:

  #  0.00user 0.01system 0:00.05elapsed 16%CPU 
  # (0avgtext+0avgdata 0maxresident)k0inputs+0outputs
  # (149major+27minor)pagefaults 0swaps
  # 参见前边章节所讲的一个类似的命令 times .

  # 注意: 在 Bash 的 2.0 版本 中, time 成为了 shell 的一个保留字, 
  # 并且在一个带有管道的命令行中,这个命令的行为有些小的变化.


  # touch

  #    这是一个用来更新文件被存取或修改的时间的工具,
  #    这个时间可以是当前系统的时间,也可以是指定的时间, 
  #    这个命令也用来产生一个新文件.命令 touch zzz 将产生一个
  #    以 zzz 为名字的 0 字节长度文件, 当然前提是 zzz 文件不存在. 
  #    为了存储时间信息, 就需要一个时间戳为空的文件, 
  #    比如当你想跟踪一个工程的修改时间的时候,这就非常有用了.
  #    注意: touch 命令等价于 : >> newfile
  #    或 >> newfile (对于一个普通文件).


  #    at

  #    at 命令是一个作业控制命令, 用来在指定时间执行给定的命令集合
  #    .它有点像 cron 命令,然而, at 命令主要还是用来执行那种一次性
  #    执行的命令集合.at 2pm January 15 将会提示让你输入需要在这个
  #    时间你要执行的命令序列. 这些命令应该是可以和 shell 脚本兼容的,
  #    因为, 实际上, 在一个可执行的脚本中, 用户每次只能敲一行. 输入以 Ctl-D 结束.

  #    你可以使用-f 选项或者使用 (<)重定向操作符, 来让 at 命令从一个
  #    文件中读取命令集合. 这个文件其实就一个可执行的的脚本, 
  #    虽然它是一个不可交互的脚本. 在文件中包含一个 run-parts 命令, 
  #    对于执行一套不同的脚本来说是非常聪明的做法.
  #    bash$ at 2:30 am Friday < at-jobs.list
  #    job 2 at 2000-10-27 02:30

  #    atch

  #    batch 作业控制命令与 at 命令的行为很相像, 但 batch 命令被
  #    用来在系统平均载量降到0.8 以下时执行一次性的任务. 与 at 命
  #    令相似的是, 它也可以使用 -f 选项来从文件中读取命令


  #    cal

  #    从 stdout 中输出一个格式比较整齐的日历. 
  #    也可以指定年和月来显示那个月的日历.


  #    sleep

  #    这个命令与一个等待循环的效果一样. 你可以指定需要暂停的秒数,
  #    这段时间将什么都不干.当一个后台运行的进程需要偶尔检测一个
  #    事件时,这个功能很有用. 也可用于计时. 参见 Example 29-6.


  #    sleep 3
  #    # Pauses 3 seconds.

  #    注意: sleep 命令默认为秒, 但是你也可以指定天数, 小时数或分钟数.

  #    sleep 3 h
  #    # Pauses 3 hours!

  #    注意: 如果你想每隔一段时间来运行一个命令的话
  #    , 那么 watch 命令将比 sleep 命令好得多



  #    usleep

  #    Microsleep 睡眠微秒( "u" 会被希腊人读成 "mu", 或者是 micro- 前缀).
  #    与上边的 sleep 命令作用相同, 但这个命令是以百万分之一秒为单位的. 
  #    当需要精确计时, 或者需要非常频繁的监控一个正在运行的进程的时候, 
  #    这个命令非常有用.

  #    usleep 30

  #    # 暂停 30 microseconds.这个命令是 Red Hat initscripts / rc-scripts
  #      包的一部分.

  #    注意: 事实上 usleep 命令并不能提供非常精确的计时, 
  #    所以如果你需要一个实时的任务的话, 这个命令并不适合.

  #    hwclock, clock

  #    hwclock 命令可以存取或调整硬件时钟. 这个命令的一些选项需要 root 权限.
  #    在系统启动的时候, /etc/rc.d/rc.sysinit 这个启动文件,会使用 hwclock
  #    来从硬件时钟中读取并设置系统时间.clock at bootup.

  #    clock 命令与 hwclock 命令完全相同.





