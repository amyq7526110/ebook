#!/bin/bash

   

#       控制字符

#       修改终端或文本显示的行为.控制字符以 CONTROL + key 组合.
#       控制字符在脚本中不能正常使用.

#       Ctl-B

#       光标后退,这应该依赖于 bash 输入的风格,默认是 emacs 风格的.

#       Ctl-C

#       Break,终止前台工作.

#       Ctl-D

#       从当前 shell 登出(和 exit 很像)

#       "EOF"(文件结束符).这也能从 stdin 中终止输入.

#       在 console 或者在 xterm window 中输入的时候,Ctl-D 将删除光标下字符.当没有字符时,Ctrl-D 将退出当前会话.在 xterm window 也有关闭窗口的效果.


#       Ctl-G

#       beep.在一些老的终端,将响铃.

#       Ctl-H

#       backspace,删除光标前边的字符.如:

#       在一个变量中插入Crtl-H


    a="^H^H"   # 两个Crtl-H (backspaces).
 
    echo "abcdef"   # abcdef

    echo -n "abcdef$a"  

    echo 
 

#     abcd f  ^ 两个 twice.
#     abcdef   没有 backspace 的效果了(why?).
#     结果并不像期望的那样
#     11 echo; echo


#     Ctrl-I   就是 tab 键.
 
#     Ctrl-J   新行.

#     Ctrl-K   垂直 tab.(垂直 tab?新颖,没听过)作用就是删除光标到行尾的字符.

#     Ctrl-L   clear,清屏.

#     Ctrl-M   回车



   read -n 1 -s -p $'Concrol-M leaves oursor at beginning  of this  line.Press.Enter.\x0d'
   
                                            # '0d' 二进制回车

   echo >&2          # '-s' 参数使的任何输入，都将不回显出来
                     #+ 所以明确的重起一行是必要的


###  

   read -n 1 -s -p $'And Control-j leaves cursor on next line. \x0a'

   echo >&2          #  Control-J 是换行

###

   read -n 1 -s -p $'And Control-K \x0bgoes straight down.'

   echo >&2          #  Control-K 垂直制表符

#  关于垂直制表符 一个更好的例子

   var=$'\x0aThis is the bottom line \x0b this is the top line\x0a'

   echo $var

#  这句话与上边的例子使用的是相同的用法 然而

   echo "$var"  | col

#  这将造成垂直制表符右边的 部分在左边的上面
#  这也解释了为什么我们要在行首和行未加上一个换行符。
#+ 避免一个混乱屏幕输出

#  来自 Lee Maschmeyer 解释：


# In the [first vertical tab example] . . . the vertical tab
# 在这里[第一个垂直制表符的例子中] . . . 这个垂直制表符30
#+ makes the printing go straight down without a carriage return.
# This is true only on devices, such as the Linux console,
#+ that can't go "backward."
# The real purpose of VT is to go straight UP, not down.
# It can be used to print superscripts on a printer.
# 它可以用来在一个打印机上打印上标.
# col 的作用,可以用来模仿 VT 的合适的行为.

   exit 0

   
  
   
   


 



    




