#!/bin/bash

#   默认情况下始终有 3 个"文件"处于打开状态, 
#   stdin (键盘), stdout (屏幕), and stderr(错误消息输出到屏幕上). 
#   这3 个文件和其他打开的文件都可以被重定向. 对于重定向简单的
#   解释就是捕捉一个文件, 命令, 程序, 脚本, 或者甚至是脚本中的代码块
#   (参见 Example 3-1和 Example 3-2)的输出, 然后将这些输出作为输入
#   发送到另一个文件, 命令, 程序, 或脚本中.

#   每个打开的文件都会被分配一个文件描述符.[1]stdin, stdout,
#   和 stderr 的文件描述符分别是 0, 1, 和 2. 对于正在打开的额外文件, 
#   保留了描述符 3 到 9. 在某些时候将这些格外的文件描述符分配给 
#   stdin, stdout, 或者是 stderr 作为临时的副本链接是非常有用的. [2] 在经过
#   复杂的重定向和刷新之后需要把它们恢复成正常的样子 (参见 Example 16-1).

  echo '测试' > file

              # 重定向stdout 到一个文件里

              # 如果没有这个文件就创建，否则覆盖

 ls -lR > dir-tree.list

                # 创建一个目录树文件

 : > filename   

   # > 会把文件截断到0长度
   # 如果文件不存在，那么就创建一个长度为0的文件 与 touch 的 效果相同
   # : 是一个占位符 ， 不产生任何输出

   > filename 

   # > 会把文件"filename"截断为 0 长度.
   # 如果文件不存在, 那么就创建一个 0 长度的文件(与'touch'的效果相同).
   # (与上边的": >"效果相同, 但是在某些 shell 下可能不能工作.)

   echo  "测试" >> file
         
   # 重定向stdout到一个文件
   # 如果文件不存在就创建它，如果存在那么就追加到文件的后面
   # 单行重定向命令（只会影响它们所在的行）
   # ——————————————————————————————---------

 >filename
   # 重定向 stdout 到文件"filename".
 
 1>>filename
   # 重定向并追加 stdout 到文件"filename".
 
 2>filename
   # 重定向 stderr 到文件"filename".
 
 2>>filename
   # 重定向并追加 stderr 到文件"filename".
 
 &>filename
   # 将 stdout 和 stderr 都重定向到文件"filename".

 
# 重定向 stdout, 一次一行.
LOGFILE=script.log
echo "This statement is sent to the log file, \"$LOGFILE\"." 1>$LOGFILE
echo "This statement is appended to \"$LOGFILE\"." 1>>$LOGFILE
echo "This statement is also appended to \"$LOGFILE\"." 1>>$LOGFILE
echo "This statement is echoed to stdout, and will not appear in \"$LOGFILE\"."
# 每行过后, 这些重定向命令会自动"reset".
# 重定向 stderr, 一次一行.
ERRORFILE=script.errors
bad_command1 2>$ERRORFILE   # 错误消息发到$ERRORFILE 中.
bad_command2 2>>$ERRORFILE  # 错误消息添加到$ERRORFILE 中.
bad_command3                # 错误消息 echo 到 stderr,

#+ 并且不出现在$ERRORFILE 中.

# 每行过后, 这些重定向命令也会自动"reset".


 2>&1 
    
    # 重定向 stderr 到 stdout

    # 得到的错误消息与stdout 一样，发送到一个地方

 i>&j
    
    # 重定向文件描述符 i 到 j.

    # 指向i文件的所有输出都发送到j中去

  >&j
    
    # 默认的，重定向文件描述符1(stdout) 到 j
    # 所有传递到stdout的输出都送到j 中去

  0 < filename 

    < filename

    # 从文件 中接受输入

    # 与">"是成对命令,并且通常都是结合使用

    #  grep search-word < filename
 
  [j]<>filename

    # 为了读写"filename",把文件"filename"打开,并且分配文件描述符“j” 给它

    # 如果文件"filename" 不存在，那么就创建他

    # 如果文件描述符"j"没有指定，那默认是fd 0 .stdin

    # 这种应用通常是为了写到一个文件指定的地方

    echo > File # 写字符串到"File"

    exec 3<>File   # 打开“File”并且给它分配fd 3

    read -n 4 <&3  # 只读4个字符

    echo -n . >&3  # 写一个小数点

    exec 3>&-      # 关闭fd 3 

    cat File       # ===> 1234.67890


    #   |
    #   管道.
    #   通用目的的处理和命令链工具.
    #   与">"很相似, 但是实际上更通用.
    #   对于想将命令, 脚本, 文件和程序串连起来的时候很有用.

        cat *.txt | sort | uniq > result-file
 
    # 对所有的.txt 文件的输出进行排序, 并且删除重复行,
    # 最后将结果保存到"result-file"中.可以将输入输出重定向和(或)管道的多个实例结合到一起写在一行上.
     command < input-file > output-file
    
     command1 | command2 | command3 > output-file

    #  参见 Example 12-28 和 Example A-15.

  # 可以将多个输出流重定向到一个文件上.

  ls -yz >> command.log 2>&1

  # 将错误选项"yz"的结果放到文件"command.log"中.
  # 因为 stderr 被重定向到这个文件中,
  #+ 所有的错误消息也就都指向那里了.
  # 注意, 下边这个例子就不会给出相同的结果.

  ls -yz 2>&1 >> command.log

  # 输出一个错误消息, 但是并不写到文件中.
  # 如果将 stdout 和 stderr 都重定向,
  #+ 命令的顺序会有些不同.



   # 关闭文件描述符

   n<&-       #       关闭输入文件描述符 n.  
   0<&-, <&-  #       关闭 stdin.
   n>&-       #       关闭输出文件描述符 n.
   1>&-, >&-  #       关闭 stdout.

   子进程继承了打开的文件描述符. 这就是为什么管道可以工作. 
   如果想阻止 fd 被继承, 那么可以关掉它.
   # 只重定向 stderr 到一个管道.
   
   exec 3>&1
   ls -l 2>&1 >&3 3>&- | grep bad 3>&-
   #
   exec 3>&-
   # 保存当前 stdout 的"值".
   # 对'grep'关闭 fd 3(但不关闭'ls').
   # 现在对于剩余的脚本关闭它.
   
   # Thanks, S.C.
   # 如果想了解关于 I/O 重定向更多的细节参见 附录 E.
                   





   








              
 
