#!/bin/bash 

# 广播: 发送消息给每个登录上的用户

wall <<zzz23EndOfMessagezzz23
 E-mail your noontime orders for pizza to the system administrator.
(Add an extra dollar for anchovy or mushroom topping.)
 # 额外的消息文本写在这里.
 # 注意: 'wall' 会打印注释行.
zzz23EndOfMessagezzz23
echo haha > message-file
wall <  message-file
  # 然而将消息模版嵌入到脚本中
  #+ 是一种"小吃店"(快速但是比较脏)的只能使用一次的解决办法.
 
  exit 0
