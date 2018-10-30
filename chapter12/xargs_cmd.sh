#!/bin/bash 

   
  # xargs 
  
  #    这是给命令传递参数的一个过滤器, 也是组合多个命令的一个工具.
  # 它把一个数据流分割为一些足够小的块, 以方便过滤器和命令进行处理. 
  # 由此这个命令也是后置引用的一个强有力的替换. 在一般使用过多参数
  # 的命令替换失败的时候,用 xargs 来替换它一般都能成功.


  #    通常情况下, xargs 从管道或者 stdin 中读取数据, 
  # 但是它也能够从文件的输出中读取数据.


  #    xargs 的默认命令是 echo. 这意味着通过管道传递给 xargs 
  # 的输入将会包含换行和空白, 不过通过 xargs 的处理, 换行和空白将被空格取代.


  ls -l

  ls -l | xargs

  find  /root -type f | xargs grep "Linux" 

  # ls | xargs -p -l gzip  使用gzip 压缩当前目录下的每个文件，一次压缩一个

  # 并且在每次压缩都提示用户

  # 注意：一个有趣的 xargs 选项是 -n NN, NN 是限制每次传递进来参数的个数.

  # ls | xargs -n 8 echo 以每行 8 列的形式列出当前目录下的所有文件.
 
  # 注意: 另一个有用的选项是 -0, 使用 find -print0 或 
  # grep -lZ 这两种组合方式. 这允许处理包含空白或引号的参数.

  find / -type f -printf | xargs -O grep -liwZ GUI | xargs -O rm -f 

  grep -rliwZ GUI / | xargs -O rm -f 

  # 上边两行都可用来删除任何包含 "GUI" 的文件. (Thanks, S.C.)

