#!/bin/bash2 # 一个 Bash 脚本的正确的开头部分.
################################StartScript################################
#Example 2-2 清除:一个改良的清除脚本
# Cleanup, 版本 2

# 当然要使用 root 身份来运行.
# 在此处插入代码,来打印错误消息,并且在不是 root 身份的时候退出.

  LOG_DIR=/var/log

# 如果使用变量,当然比把代码写死的好.


cd $LOG_DIR
cat /dev/null > messages
cat /dev/null > wtmp
echo "Logs cleaned up."
exit
# 这个命令是一种正确并且合适的退出脚本的方法.
################################EndScript#######################################
