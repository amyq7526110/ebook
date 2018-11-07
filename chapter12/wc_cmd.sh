#!/bin/bash

   # wc 

   #  wc 可以统计文件或I/O 流中的单词数量

   #  wc /usr/share/doc/sed-4.1.2/README

   #  13 70 447 README

   #  [13 lines 70 words 447 characters]

   # wc -c 统计单词数量

   # wc -l 统计行数量

   # wc -c 统计字节数量.

   # wc -m 统计字符数量.

   # wc -L 给出文件中最长行的长度.

   # 使用 wc 命令来统计当前工作目录下有多少个 .txt 文件.

   # ls *.txt | wc -l

   # 因为列出的文件名都是以换行符区分的,所以使用 -l 来统计.

   # 另一种达到这个目的的方法:

   #                find . -maxdepth 1 -name \*.txt -print) | grep -cz .

   #                (shopt -s nullglob; set -- *.txt; echo $#)

   #  使用 wc 命令来统计所有以 d - h 开头的文件的大小.

   #  wc [d-h]* | grep total | awk '{print $3}'

   #  使用 wc 命令来查看指定文件中包含 "Linux" 的行一共有多少.

   #  grep Linux abs-book.sgml | wc -l

   #  参见 Example 12-35 和 Example 16-8.
   #  某些命令的某些选项其实已经包含了 wc 命令的部分功能.

   #  ... | grep foo | wc -l

   # 这个命令使用得非常频繁, 但事实上它有更简便的写法.
   
   #  ... | grep -c foo

   # 只要使用 grep 命令的 "-c" (或 "--count")选项就能达到同样的目的.
   
   # Thanks, S.C.
