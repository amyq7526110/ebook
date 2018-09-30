#!/bin/bash


#    | 

#    管道 分析前边命令的输出,并将输出作为后边命令的输入.这是一种产生命令链的好方法.

     echo  ls -l | sh

#    传递"echo ls -l" 的输出到shell中

#+  与一个简单的'ls -l' 结果相同

     cat *.sh | sort | uniq

 
#   合并和排序所有的".sh" 文件，然后删除所有重复行

#   管道是进程间通讯的一个典型办法,将一个进程的 stdout 放到另一个进程的 stdin 中.标准的方法是将一个一般命令的输出,比如 cat 或 echo,传递到一个过滤命令中(在这个过滤命令中将处理输入),得到结果,如:


#    cat $filename1 | $filename2 | grep $search_word

 
#    现在输送 ls -l 的 输出到 3_abchange.sh 中

     
     ls -l | ./3_abchange.sh

#    注意：管道中的一个进程的 stdout 必须被下一个进程作为 stdin 读入.否则,数据流会阻塞,并且管道将产生非预期的行为.

#   如:

#   cat file1 file2 | ls -l | sort

#   # 从"cat file1 file2"中的输出并没出现

#   作为子进程的运行的管道,不能够改变脚本的变量.

   variable="initial_value"
   echo "new_value" | read variable
   echo "variable = $variable"  #  variable = initial_value



#   如果管道中的某个命令产生了一个异常,并中途失败,那么这个管道将过早的终止.
#   这种行为被叫做 a broken pipe,并且这种状态下将发送一个 SIGPIPE 信号.



#   >|

#   强制重定向(即使设置了 noclobber 选项--就是-C 选项).这将强制的覆盖一个现存文件.

#    || 或-逻辑操作.



