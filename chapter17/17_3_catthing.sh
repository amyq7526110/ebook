#!/bin/bash 

  # 'echo' 对于打印单行消息是非常好的,
  #+ 但是在打印消息块时可能就有点问题了.
  # 'cat' here document 可以解决这个限制.

  cat <<EOF
----------------------

This is line 1 of the message.
This is line 2 of the message.
This is line 3 of the message.
This is line 4 of the message.
This is the last line of the message.
-------------------------------------
EOF

  # 用下边这行代替上边的第 7 行
  #+ cat > $Newfile <<End-of-message
  #+ ^^^^^^^^^^
  #+ 那么就会把输出写到文件$Newfile 中, 而不是 stdout.
 
  exit 0

  #--------------------------------------------
  # 下边的代码不会运行, 因为上边的"exit 0".
 
  # S.C. 指出下边代码也可以运行.
 
  echo "-------------------------------------
  This is line 1 of the message.
  This is line 2 of the message.
  This is line 3 of the message.
  This is line 4 of the message.
  This is the last line of the message.
  -------------------------------------"
  # 然而, 文本可能不包含双引号, 除非它们被转义.
