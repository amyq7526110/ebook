#!/bin/bash

  #  pr

  #   格式化打印过滤器. 这个命令会将文件(或 stdout)分页, 
  #   将它们分成合适的小块以便于硬拷贝打印或者在屏幕上浏览.
  #   使用这个命令的不同的参数可以完成好多任务, 比如对行和列的操作,
  #   加入行, 设置页边, 计算行号, 添加页眉, 合并文件等等.
  #   pr 命令集合了许多命令的功能, 比如 nl, paste, fold, column, 和 expand.


  pr -o 5 --width=65 text | more

  # 这个命令对 fileZZZ 进行了比较好的分页,并且打印
  # 到屏幕上.文件的缩进被设置为 5, 总宽度设置为 65.

  # 一个特定的使用选项 -d, 强制隔行打印 (与 sed -G 效果相同).

  #  gettext
  #    
  #   GNU gettext 包是专门用来将程序的输出翻译或者本地化
  #   为不同国家语言的工具集.在最开 始的时候仅仅支持 C 语言,
  #   现在已经支持了相当数量的其它程序语言和脚本语言. 
  #   要想查看 gettext 程序 如何在 shell 脚本中工作. 参见 info 页.


  #  msgfmt   

  #    一个产生 2 进制消息目录的程序. 这个命令主要用来 本地化.


  #  iconv

  #   一个可以将文件转化为不同编码格式(字符集)的工具. 
  #  这个命令主要用来 本地化.


  # 将字符符串由 UTF-8 格式转换为 UTF-16 并且打印到 BookList 中
  
  function write_utf8_string {
  STRING=$1
  BOOKLIST=$2
  echo -n "$STRING" | iconv -f UTF8 -t UTF16 | cut -b 3- | tr -d \\n >> "$BOOKLIST"
  }
  
  # 来自于 Peter Knowles' "booklistgen.sh" 脚本
  #+ 目的是把文件转换为 Sony Librie 格式.
  # (http://booklistgensh.peterknowles.com)

  # recode

  #   可以认为这个命令时上边 iconv 命令的一个空想家版本. 
  #   这个非常灵活的并可以把整个文件都转换为不同编码格式
  #   的工具并不是 Linux 标准安装的一部分. 

  # TeX, gs

  # TeX 和 Postscript 都是文本标记语言, 用来对打印和格式化的视频显示进行预拷贝.
  # TeX 是 Donald Knuth 精心制作的排版系统. 通常情况下, 
  # 通过编写脚本的手段来把所有的选项和参数封装起来一起传
  # 到标记语言中是一件很方便的事情. 
  # Ghostscript (gs) 是一个 遵循 GPL 的 Postscript 解释器.

  # enscript

  # 将纯文本文件转换为 PostScript 的工具
  # 比如, enscript filename.txt -p filename.ps 产生一个 PostScript 输出文件filename.ps.groff, tbl, eqn


  #  另一种文本标记和显示格式化语言是 groff. 这是一个对传统 UNIX roff/troff 显示和排 版包的 GNU 增强版本.Man 页 使用的就是 groff.  tbl 表处理工具可以认为是 groff 的一部分, 它的功能就是将表标记转化到 groff 命令中.  eqn 等式处理工具也是 groff 的一部分, 它的功能是将等式标记转化到 groff 命令中.

 
   #  lex, yacc

   #  lex 是用于模式匹配的词汇分析产生程序. 在 Linux 系统上这个命令已经被 flex 取代了.  yacc 工具基于一系列的语法规范生成语法分析程序. 在 Linux 系统上这个命令已经被 bison 取代了.

  #  注意事项: [1] 对于 GNU 版本的 tr 命令来说这是唯一一处比那些商业 UNIX 系统上的一般版本合适的地方.

