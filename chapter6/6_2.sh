#!/bin/bash



  
   #   $?对于测试脚本中的命令的结果特别有用(见 Example 12-32 和 Example 12-17).

   #   注意: !逻辑非操作,将会反转 test 命令的结果,并且这会影响 exit 状态.


   true  # true 是shell 内建命令，什么是都不做，就是 shell 返回 0

   echo  "exit status of \"true\"=$?"     # 0

   ! true

   echo  "exit status of \"! true\"=$?"   # 1


   #   注意:"!" 需要一个空格

   #   !true   将导致一个"command not found" 错误
   
   #   如果一个命令以'!'开头,那么将使用 Bash 的历史机制.就是显示这个命令被使用的历史.

   true

   !true

   #  这次没有错误

   #  不过是重复了之前的命令true

   #   注意事项:
   #   特定的退出码都有预定的含义(见附录 D),用户不应该在自己的脚本中指定他.

 
