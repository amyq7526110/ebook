#!/bin/bash 

# # secret-pw.sh: 保护密码不被显示

  echo 

  echo -n "Enter password "

  read passwd

  echo "Password is $passwd"

  echo -n "if someone had been looking over your shoulder."
  echo "your password would have been comparmised."

  echo && echo # 在一个制表符中产长两个环行

  stty -echo   # 关闭屏幕的echo

  echo -n "Enter password again "

  read passwd

  echo "password is $passwd"

  echo 

  stty echo # 恢复屏幕的显示

  exit 0

  # 详细的阅读 stty 命令的 info 页, 以便于更好的掌握这个有用并且狡猾的工具.
