#!/bin/bash 

  #  影响控制台或终端的命令

  echo -e "\033[36m  
  
   tput
   初始化终端或者从 terminfo data 中取得终端信息. 不同的选项
   允许特定的终端操作.tput clear 与下边的 clear 等价. tput reset
   与下边的 reset 等价. tput sgr0 也可以重置终端, 但是并不清除屏幕.

   $ tput longname
   xterm terminal emulator (XFree86 4.0 Window System)

   使用 tput cup X Y 将会把光标移动到当前终端的(X,Y)坐标上.
   使用这个命令之前一边都要先使用一下 clear 命令, 把屏幕清除一下.
   注意: stty 提供了一个更强力的命令专门用来设置如何控制终端.


   infocmp
   这个命令会打印出大量的当前终端的信息. 事实上它是引用了 terminfo 数据库.
   $ infocmp
   #
   通过来自于文件的 infocmp 显示出来:
   /usr/share/terminfo/r/rxvt
   rxvt|rxvt terminal emulator (X Window System),
   am, bce, eo, km, mir, msgr, xenl, xon,
   colors#8, cols#80, it#8, lines#24, pairs#64,
   acsc=``aaffggjjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~,
   bel=^G, blink=\E[5m, bold=\E[1m,
   civis=\E[?25l,
   clear=\E[H\E[2J, cnorm=\E[?25h, cr=^M,
   ....


   reset

   重置终端参数并且清除屏幕. 与 clear 命令一样, 光标和提示符
   将会重新出现在终端的左上角.

   clear
   clear 命令只不过是简单的清除控制台或者 xterm 的屏幕.
   光标和提示符将会重新出现在屏幕或者 xterm window 的左
   上角. 这个命令既可以用在命令行中也可以用在脚本中.

   参见 Example 10-25.

   script
   这个工具将会记录(保存到一个文件中)所有的用户在控制台
   下的或在 xterm window 下的按键信息. 这其实就是创建了一个会话记录.
    
    
  
  
  \033[0m"
   

