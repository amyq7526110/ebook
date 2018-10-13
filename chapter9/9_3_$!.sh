#!/bin/bash


   #  在后台运行的最后工作的pid（进程id）

   Log=$0.log


   Command1="sleep 100"

   echo "Logging PIDS background commands for script: $0" >> $Log

   #  所以它可以被监控，并且在必要的时候可以kill掉

   echo >> "$Log"

   # Logging 命令

   echo -n "PID of \"$Command1\": " >> "$Log"

   ${Command1} &

   echo $! >> "$Log"

   # PID of "sleep 100": 1506

   # Thank you, Jacques Lederer, for suggesting this.

   TIMEOUT=5   
   possibly_hanging_job(){
   while :
   do
     sleep 1
     echo haha
   done
   }
   possibly_hanging_job & { sleep ${TIMEOUT};eval 'kill -9 $!' &> /dev/null;}

   # 强制结束一个品行不良的程序.
   # 很有用,比如在 init 脚本中.


   # # Thank you,Sylvain Fourmanoit,for this creative use of the "!" variable.


   #  $_

   #  保存之前执行的命令的最后一个参数  






