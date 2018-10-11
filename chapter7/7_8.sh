#!/bin/bash


    # 检查你的test 知识

#    系统范围的 xinitrc 文件可以用来启动 X server.
#    这个文件中包含了相当多的 if/then test,就像下边的节选一样:

     if [  -f $HOME/.Xclients ];then

        exec $HOME/.Xclients

     elif [  -f /etc/X11/xinit/Xclients ];then

         exec /etc/X11/xinit/Xclients

     else

           #   故障保险设置，虽然我们永远都不会走到这里来

	   #  (我们在 Xclients 中也提供了相同的机制)它不会受伤的.

           xclock-geometry 100x100-5+5 &

	   xterm-geometry  80x50-50+150 &

	   if [ -f /usr/netscape -a -f /usr/share/doc/HTML/index.html  ];then

	        netscape /usr/share/doc/HTML/index.html &

	   fi	



      fi



      #   对上边的"test"结构进行解释,然后检查整个文件,/etc/X11/xinit/xinitrc,并分析 if/thentest 结构.
      #  你可能需要查看一下后边才能讲解到的 grep,sed 和正则表达式的知识.





       

  









  
