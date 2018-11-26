#!/bin/bash 

#  第 14 章 命令替换
#  ================
#  命令替换将会重新分配一个命令甚至是多个命令的输出; 它会将命令的输出如实地添加到另一个上下文中. 
#  使用命令替换的典型形式是使用后置引用(`...`). 后置引用形式的命令(就是被反引号括起来) 将会产生命令行文本.

 script_name=`basename $0`
 echo "The name of this script is $script_name."

#  这样的话, 命令的输出可以被当成传递到另一个命令的参数, 或者保存到变量中, 甚至可以用
#  来产生 for 循环的参数列表.

 # rm `cat filename` # filename 包含了需要被删除的文件列表

 # S.C. 指出使用这种的形式。可能会产生“参数列表太长”的错误

 # 更好的方法  

 # ( -- 同时覆盖了那些以"-"开头的文件所产生的特殊情况 )

 texfile_listing=`ls *.txt`

 # 变量中包含了当前工作目录的所有的*.txt 文件

 echo $texfile_listing  

 texfile_listing=$(ls *.txt)

 # 这是命令替换的另一种形式 
  
 echo $texfile_listing

 # 同样的结果


 # 将文件列表放入到一个字符串中的一个可能的问题就是

 # 可能会混进一个新行

 # 一个安全的将文件列表传递到参数中的方法就是使用数组

 shopt -s nullglob  # 如果不匹配，那么不进行文件名的拓展

 texfile_listing=( * .txt )

 #  Thanks, S.C.

 # 注意: 命令替换将会调用一个 subshell.
 # 注意: 命令替换可能会引起 word splitting.

 echo  `echo a b`   # 两个参数： a and b

 echo  "`echo a b`" # 一个参数 "a b"

 echo  `echo`       # 无参数

 echo  "`echo`"     # 一个空的参数


  # 即使没有引起 word splitting, 命令替换也会去掉多余的新行.

  #   cd "`pwd`"  这句话总会正常的工作

  # 然而。。
  
  # mkdir 'dir with trailing newline
  # '
  # cd  'dir with trailing newline
  # '
  # 
  # cd "`pwd`"  # 错误消息

  # # cd: /tmp/file with trailing newline: No such file or directory

  # cd "$PWD"  # 运行良好

  old_tty_setting=$(stty -g)  # 保留老的终端设置

  echo "Hit a key "

  stty -icanon -echo   # 对终端禁用'caninical' 模式

  key=$(dd bs=1 count=1 2>/dev/null ) # 使用'dd' 命令来取得一个按键

  stty "$old_tty_setting"  # 保存老的设置

  echo "You hit ${#key} key"  # ${#variable} = number of characters in $variable
   
  # 按键任何键除了回车, 那么输出就是"You hit 1 key."
  # 按下回车, 那么输出就是"You hit 0 key."
  # 新行已经被命令替换吃掉了.
  #
  # Thanks, S.C.  注意: 当一个变量是使然后使用 echo 命令来输出这个变量
  # (并且不引用这个变量, 就是不用引号括起来), 那么命令替换将会从最终的输
  # 出中删掉换行符. 这可能会引起一些异常情况.


  dir_listing=`ls -l`
  
  echo $dir_listing   # 未引用就是没用引号括起来

  # 打出来一个有序的目录列表.Expecting a nicely ordered directory listing.
  
  # 可惜，新行消失了

  # 

  echo  "$dir_listing"   # 用引号阔起来

  # 得到想要结果
  
  variable1=`< file1`  # 将 file1 的内容放到变量中，可以使用重定向或者cat命令年

  variable2=`cat file2` # 将 file2 的内容放到变量中

  # 但是这回fork一个新的进程

  # 所以这行代码会执行的满
 
  # 注意:
  # 变量中是可以包含空白的,
  #+ 甚至是 (厌恶至极的), 控制字符.1 # 摘录自系统文件, /etc/rc.d/rc.sysinit
  #+ (这是红帽安装中使用的)

  if [ -f /fsckoptions ];then
        
        fsckoptions=`cat /fsckoptions`
 
  if        


  if [ -e "/proc/ide/${disk[$device]}/media"];then

        hdmedia=`/proc/ide/${disk[$device]}/media`

  fi

  if [ ! -n "`uname -r | grep --"-"`" ];then
        
        ktag="`cat /proc/version`"

  fi


  if [ $usb = "1" ];then
        
        sleep 5

            mouseoutput=`cat /proc/bus/usb/device 2>/dev/null | egrep "^|.*Cls=0.3*Port=02"`

            kbdoutput=`cat /proc/bus/usb/devices 2>/dev/null |egrep "^|.*Cls=03.*Port=01"`

  fi 


  # 注意: 不要将一个非常长的文本文件的内容设置到一个变量中, 除非你有一个非常好的原因非要这么做不可. 不要将 2 进制文件的内容保存到变量中.

   

    

 


  



















