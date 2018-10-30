#  shopt
#  这个命令允许 shell 在空闲时修改 shell 选项(见 Example 24-1 和 Example 24-2).它经常出现在启动脚本中,但是在一般脚本中也可用.需要 Bash 2.0 版本以上.

#   shopt -s cdspell

#   # Allows minor misspelling of directory names with 'cd'

#   # 使用'cd'命令时,允许产生少量的拼写错误.

#  
#   cd /hpme # 噢! 应该是'/home'.

#   pwd

# /home
# 拼写错误被纠正了.

