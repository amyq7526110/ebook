#!/bin/bash 


  #  使用正则表达式的一个多用途文本搜索工具. 这个命令本来是

  #  ed 行编辑器中的一个命令/过滤器:

  #  g/re/p -- global - regular expression - print.

  #  grep pattern [file...]

  #  在文件中搜索所有 pattern 出现的位置, 
  #  pattern 既可以是要搜索的字符串,也可以是一个正则表达式.

  #  grep '[rst]ystem.$' osinfo.txt
  #  The GPL governs the distribution of the Linux operating system.

  #  如果没有指定文件参数, grep
  #  通常用在管道中对 stdout 进行过滤.

  #  ps ax | grep clock
  #  765 tty1 S 0:00 xclock
  #  901 pts/1 S 0:00 grep clock
 
  #  -i 选项在搜索时忽略大小写.

  #  -w 选项用来匹配整词.

  #  -l 选项仅列出符合匹配的文件, 而不列出匹配行.

  #  -r (递归) 选项不仅在当前工作目录下搜索匹配, 而且搜索子目录.

  #  -n 选项列出所有匹配行, 并显示行号.

  #  bash$ grep -n Linux osinfo.txt
  #  2:This is a file containing information about Linux.
  #  6:The GPL governs the distribution of the Linux operating system.

  #  -v (或者--invert-match) 选项将会显示所有不匹配的行.

  #   grep pattern1 *.txt | grep -v pattern2
  #   
  #   匹配在"*.txt"中所有包含 "pattern1"的行,
  #   而不显示匹配包含 "pattern2"的行.

  #   (--count) 选项将只会显示匹配到的行数的总数,而不会列出具体的匹配.

  #   grep -c txt *.sgml
  #   (在 "*.sgml" 文件中, 匹配"txt"的行数的总数.)
  #
  #  grep -cz .
  #           ^ 点
  # 意思是计数 (-c) 所有以空字符分割(-z) 的匹配 "."的项
  # "."是正则表达式的一个符号, 表达匹配任意一个非空字符(至少要包含一个字符).
  #
  printf 'a b\nc d\n\n\n\n\n\000\n\000e\000\000\nf' | grep -cz .

  printf 'a b\nc d\n\n\n\n\n\000\n\000e\000\000\nf' | grep -cz '$'

  printf 'a b\nc d\n\n\n\n\n\000\n\000e\000\000\nf' | grep -cz '^'

  printf 'a b\nc d\n\n\n\n\n\000\n\000e\000\000\nf' | grep -c '$'

  # 默认情况下, 是使用换行符(\n)来分隔匹配项.


  # 注意 -z 选项是 GNU "grep" 特定的选项.


  # Thanks, S.C.
 
  # 当有多个文件参数的时候, grep 将会指出哪个文件中包含具体的匹配.

  #  bash$ grep Linux osinfo.txt misc.txt
  #  osinfo.txt:This is a file containing information about Linux.
  #  osinfo.txt:The GPL governs the distribution of the Linux operating system.
  #  misc.txt:The Linux operating system is steadily gaining in popularity.

  #  注意: 如果在 grep 命令只搜索一个文件的时候, 
  #  那么可以简单的把 /dev/null 作为第 2个文件参数传给 grep .

  #  bash$ grep Linux osinfo.txt /dev/null
  #  osinfo.txt:This is a file containing information about Linux.
  #  osinfo.txt:The GPL governs the distribution of the Linux operating system.


  #  如果存在一个成功的匹配, 那么 grep 命令将会返回 0 作为
  #  退出状态 ,这样就可以将grep 命令的结果放在脚本的条件测
  #  试中来使用, 尤其和 -q (禁止输出)选项组合时特别有用.

  SUCCESS=0

  #  如果 grep 匹配成功

  word=Linux

  filename=data.file

  grep -q "$word" "$filename"

  if [ $? -eq $SUCCESS ]
  # if grep -q "$word" "$filename"

  # "-q" 选项将使得什么都不输出到 stdout 上.
  # 这句话可以代替行 5 - 7.9 
  then

    echo "$word found in $filename"

  else

    echo "$word not found in $filename"

  fi
  # Example 29-6 展示了如何使用 grep 命令来在一个系统 logfile 中进行一个单词的模式匹配.
 
#  如何使用 grep 命令来搜索两个(或两个以上)独立的模式? 

#  如果你想显示在一个或多个文 #  件中既匹配"pattern1" 
#  又匹配 "pattern2"的所有匹配行又该如何做呢?(译者: 这是取交
#  集的情况, 如果取并集该怎么办呢?)

#  一个方法是通过 管道 来将 grep pattern1 的结果传递到 grep pattern2 中 .

#  例如, 给定如下文件:

#  # Filename: tstfile
#  This is a sample file.
#  This is an ordinary text file.
#  This file does not contain any unusual text.
#  This file is not unusual.
#  Here is some text.

#  现在, 让我们在这个文件中搜索既包含 "file" 又包含 "text" 的所有行

#  bash$ grep file tstfile

#  # Filename: tstfile
#  This is a sample file.
#  This is an ordinary text file.
#  This file does not contain any unusual text.
#  This file is not unusual.

#  bash$ grep file tstfile | grep text

#  This is an ordinary text file.
#  This file does not contain any unusual text.
#  --
#  egrep - 扩展的 grep - 这个命令与 grep -E 等价. 这个命令用起来有些不同, 由于正
#  则表达式扩展, 将会使得搜索更具灵活性.
#  fgrep - 快速的 grep - 这个命令与 grep -F 等价. 这是一种按照字符串字面意思进行
#  的搜索(即不允许使用正则表达式), 这样有时候会使搜索变得容易一些.
#  注意: 在某些 linux 发行版中, egrep 和 fgrep 都是 grep 命令的符号连接或者是别名,
#  只不过调用的时候分别使用 -E 和 -F 选项罢了.



#  agrep (近似 grep) 扩展了 grep 近似匹配的能力. 

#  搜索的字符串可能会与最终匹配结果所找到字符串有些不同.
#  这个工具并不是核心 Linux 发行版的一部分.

#  注意: 为了搜索压缩文件, 应使用 zgrep, zegrep, 或 zfgrep.
#  这些命令也可以对未压缩的文件进行搜索, 只不过会比一般的 
#  grep, egrep, 和 fgrep 慢上一些. 当然, 在你要搜索的文件
#  中如果混合了压缩和未压缩的文件的话, 那么使用这些命令是非常方便的. 

#  如果要搜索 bzipped类型的文件, 使用 bzgrep.


#  look
#  命令 look 与命令 grep 很相似, 但是这个命令只能做字典查询, 也就是它所搜索的文件
#  必须已经排过序的单词列表. 默认情况下, 如果没有指定搜索那个文件, 那就默认搜索
#  /usr/dict/words 文件(译者: 感觉好像应该是/usr/share/dict/words),
#   当然也可以指定其他目录下的文件进行搜索.





   
