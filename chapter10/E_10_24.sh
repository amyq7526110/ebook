#!/bin/bash

   # 测试字符范围

   echo ; echo "Hit a key,then hit retrun."

   read Keypress

   case   "$Keypress" in 

   [[:lower:]]) echo "Lowercase letter" ;;

   [[:upper:]]) echo "Uppercase letter" ;;

   [0-9]      ) echo "Digit" ;;

   *          ) echo "Pubctuation,whitespace or other" ;;

   esac       # Allows ranges of characters in [square brackets],

              # 允许字符串的范围出现在[]中,

	      #+ or POSIX ranges in [[double square brackets.

	      #+ 或者 POSIX 范围在[[中.


  # 在这个例子的第一个版本中,

  #+ 测试大写和小写字符串使用的是

  #+ [a-z] 和 [A-Z].

  # 这种用法将不会在某些特定的场合或 Linux 发行版中正常工作.

  # POSIX 更具可移植性.

  # 感谢 Frank Wang 指出这点.


  # -----

  # 就像这个脚本所表现的,它只允许单个按键,然后就结束了.
  # 修改这个脚本,让它能够接受重复输入,
  #+ 报告每个按键,并且只有在"X"被键入时才结束.
  # 暗示: 将这些代码都用"while"循环圈起来.
  
   exit 0
