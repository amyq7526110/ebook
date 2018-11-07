#!/bin/bash

   # gzip  
      
        # 标准的 GNU/UNIX 压缩工具, 取代了比较差的 compress 命令.

	# 相应的解压命令是 gunzip,gzip -d 是等价的.


   # zcat 
   
        # 过滤器可以将一个 gzip 文件解压到 stdout, 所以尽可能的
	# 使用管道和重定向. 这个命令事实上就是一个可以工作于压缩
	# 文件(包括一些的使用老的compress 工具压缩的文件)的 cat 
	# 命令. zcat 命令等价于 gzip -dc.

  #   注意: 在某些商业的 UNIX 系统上, zcat 与 uncompress -c 等价, 
  #         并且不能工作于 gzip 文件.
 
  #  bzip2

  #       用来压缩的一个可选的工具, 通常比 gzip 命令压缩率更高(所以更慢),
  #       适用于比较大的文件. 相应的解压命令是 bunzip2.

  #   注意: 新版本的 tar 命令已经直接支持 bzip2 了.

  #  compress, uncompress

  #       这是一个老的, 私有的压缩工具, 一般的商业 UNIX 发行版都会有这个工具. 
  #       更有效率的gzip 工具早就把这个工具替换掉了. Linux 发行版一般也会包含
  #       一个兼容的 compres 命令, 虽然 gunzip 也可以加压用 compress 工具压缩的
  #       文件. 

  #    注意: znew 命令可以将 compress 压缩的文件转换为 gzip 压缩的文件  

  #   sq

  #       另一种压缩工具, 一个只能工作于排过序的 ASCII 单词列表的过滤器.
  #       这个命令使用过滤器标准的调用语法, sq < input-file > output-file.
  #       速度很快, 但是效率远不及gzip. 相应的解压命令为 unsq, 调用方法与 
  #       sq 相同.

  #    注意: sq 的输出可以通过管道传递给 gzip 以便于进一步的压缩.

  #   zip,unzip

  #       跨平台的文件归档和压缩工具, 与 DOS 下的 pkzip.exe 兼容. zip 
  #       归档文件看起来在互联网上比 tar 包更流行.

  #   unarc, unarj, unrar

  #       这些 Linux 工具可以用来解档那些用 DOS 下的 arc.exe, arj.exe, 
  #       和 rar.exe 程序进

  #   文件信息

  #   file

  #       确定文件类型的工具. 命令 file file-name 将会用 ascii 文本或数
  #       据的形式返回file-name 文件的详细描述. 这个命令会使用 
  #       /usr/share/magic, /etc/magic, 或/usr/lib/magic 中定义的 魔法数字
  #       来标识包含某种魔法数字的文件, 上边所举出的这3个文件需要依赖于具体
  #       的 Linux/UNIX 发行版.

  #     -f 选项将会让 file 命令运行于批处理模式, 
  #        也就是说它会分析 -f 后边所指定的文件,
  #        从中读取需要处理的文件列表, 然后依次执行 file 命令. 
  
  #     -z 选项, 当对压缩过的目标文 件使用时, 将会强制分析压缩的文件类型.
  #              行归档的文件.

  #     Unix
  #     bash file -z test.tar.gz
  #     test.tar.gz: GNU tar archive (gzip compressed data, 
  #+    deflated, last modified: Sun Sep 1613:34:51 2001, os: Unix)









   


