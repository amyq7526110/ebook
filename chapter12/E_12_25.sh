#!/bin/bash

   #  line-number.sh

   #  这个脚本将会echo自身两次,并显示行号

   # 'nl' 命令显示的时候你将会看到，本行是第四行，因为它不计空行

   #  'cat -n' 命令显示的时候你将会看到，本行时第6行

   nl `basename $0`

   echo;echo  # 下边，让我们试一试 cat -n

   cat -n `basename $0`

   #  区别就是 'cat -n' 对空行也进行计数.

   #  注意 'nl -ba' 也会这么做.

   exit 0
