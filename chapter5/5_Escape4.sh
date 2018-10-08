#!/bin/bash


   #   转义符也提供续行功能.一般,每一行都包含一个不同的命令,但如果在行尾加上\,那就会接受新行的输入,作为这一行的补充.

(cd /source/directory && tar cf - . ) | \
(cd /dest/directory && tar xpvf -)

# 重复了 Alan Cox 的目录树拷贝命令4 # 为了增加可读性分成 2 行.

# 也可以使用如下方式:

  tar cf - -C /source/directory . |
  tar xpvf - -C /dest/directory

#   察看下边的注意事项

#   注意:如果一个脚本以|(管道字符)结束.那么一个\(转义符),就不用非加上不可了.

#   但是一个好的 shell 脚本编写风格,还是应该在行尾加上\,以增加可读性.


    echo "foo
bar"

               #foo
               #bar
    echo

    echo 'foo
bar'           # 没区别
                    
               #foo
               #bar

    echo

    echo foo\
bar            # 续行

               # foobar

    echo

    echo "foo\
bar"           # 与上边一样,\还是作为续行符

               # foobar

    echo 'foo\
bar'           # # 由于是强引用,所以\没被解释成续行符
               #foo\
               #bar


  


















