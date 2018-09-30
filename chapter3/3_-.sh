#!/bin/bash

#    -  选项,前缀.在所有的命令内如果想使用选项参数的话,前边都要加上"-".


#    command -[option1][option2][...]

     filename=heng.txt

     cat /etc/passwd  > heng.txt

     ls -al 

     sort -dfu $filename
    
     set -- $variable

     a=1 
     b=1
     c=24
     d=47


     if [ "$a" -eq "$b"    ]

     then

         echo "\$a is equal to \$b."

     fi   	 


     if [ "$c"  -eq  24 -a "$d"  -eq 47 ]

     then

         echo "\$c equals 24 and \$d equals 47."

     fi

#   -  用于重定向 stdin 或 stdout


     sourdir=/source/directory

     destdir=/dest/directory
 
     [ ! -d $sourdir ] && mkdir  -p  $sourdir
 
     [ ! -f  $sourdir/haha.txt ] && touch $sourdir/haha.txt

     [ ! -d $destdir ] && mkdir  -p  $destdir

     ( cd /source/directory && tar cf - .) | ( cd /dest/directory && tar xpvf -)


#    cd /source/directory  源目录

#    &&                    与操作
 
#    tar cf - .            'c'创建一个新文档,'f'后边跟'-'指定目标文件作为 stdout
#                          '-'后边的'f'(file)选项,指明作为 stdout 的目标文件.
#                           并且在当前目录('.')执行.

#    |                      管道

#   （...）                 一个子shell

#    cd /dest/directory     目标目录

#    &&                     与操作  

#    tar xpvf -             'x'解档，'p' 保证所有权和文件属性,
#                           'v'发完整消息到 stdout
#                           'f'后边跟'-',从 stdin 读取数据

#    注意:'x' 是一个命令, 'p', 'v', 'f' 是选项.


#    Whew!

#    优雅的写法

#    cd /source/directory 
#    tar cf - . | (cd /dest/directory;tar xpvf -)

#    当然也可以这么写

#    cp -a /source/directory/*  /dest/directory

#    -a, --archive
#              复制时,尽可能保持文件的结构和属性.(但不保持目录结构)等同于
#              -dpR。

#    或者：

#    cp -a /source/directory/*  /source/directory/.[^.]*  /dest/directory/  

#    如果在 /source/directory/ 中有隐藏文件

#    注意:以"-"开头的文件名在使用"-"作为重定向操作符的时候,可能会产生问题.
#    应该写一个脚本来检查这个问题,并给这个文件加上合适的前缀.如:

#    ./-FILENAME, $PWD/-FILENAME,或$PATHNAME/-FILENAME.

#    如果变量的值以"-"开头,可能也会引起问题.

#     var="-n"
#     echo $var
#     #具有"echo -n"的效果了,这样什么都不会输出的.

#    -    之前工作的目录."cd -"将回到之前的工作目录,具体请参考"$OLDPWD"环境变量.
#    注意:一定要和之前讨论的重定向功能分开,但是只能依赖上下文区分.


#    -    减号



