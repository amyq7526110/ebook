#!/bin/bash 

# 一个具有创造性的 stty 命令的用法, 检测用户所按的键(不用敲回车).

# # keypress.sh: 检测用户按键 ("hot keys").


  old_tty_settings=$(stty -g)  # 保存老的设置为什么

  stty -icanon 

  Keypress=$(head -c3)         # 或者 $(dd bs=1 count=1 2>/dev/null)

                               # 在非GNU的系统上

  echo 

  echo "Key pressed was \"$Keypress\"."

  echo 

  stty "$old_tty_settings" # 恢复老的设置

  exit  0






