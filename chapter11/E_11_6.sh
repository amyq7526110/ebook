#!/bin/bash

  #  read 命令有些有趣的选项,这些选项允许打印出一个提示符,

  #+ 然后在不输入<ENTER>的情况下,可以读入你的按键字符.

  # Read a keypress without hitting ENTER.

  # 不敲回车,读取一个按键字符.

  read -s -n1 -p "Hit a key " keypress

  echo ; echo "Keypress was \"$keypress\"."

  
  
  
  echo; echo "Keypress was "\"$keypress\""."

  # -s 选项意味着不打印输入.
  # -n N 选项意味着直接受 N 个字符的输入.
  # -p 选项意味着在读取输入之前打印出后边的提示符.
  
  # 使用这些选项是有技巧的,因为你需要使用正确的循序来使用它们.

  
  # ------------------------------------

  # arrow-detect.sh  检测方向键,和一些非打印字符的按键

  # ------------------------

  # 按键产生的字符编码

  arrowup='\[A'

  arrowdown='\[B'

  arrowrt='\[C'

  arrowleft='\[D'

  insert='\[2'

  delete='\[3'

  # --------------------


  Success=0

  Other=65

  echo -n "Press a key... "

  # 如果不是上边列表所列出的按键,可能还是需要按回车.(译者:因为一般按键是一个字符)
  read -n3 key    # 读三个字符

   # 检查输入字符是否匹配


   case "$key"  in

   *$arrowup*) 
         
	 echo "Up-arrow key pressed."

	 exit  $Success ;;
   *$arrowdown*) 
         
	 echo "Down-arrow key pressed."

	 exit  $Success ;;
   *$arrowrt*) 
         
	 echo "Right-arrow key pressed."

	 exit  $Success ;;
   *$arrowleft*) 
         
	 echo "Left-arrow key pressed."

	 exit  $Success ;;
   *$insert*) 
         
	 echo "Insert  key pressed."

	 exit  $Success ;;
   *$delete*) 
         
	 echo "Delete key pressed."

	 exit  $Success ;;
    *)
         echo " Some other key pressed."

	 exit $Other ;;

   esac	 

 	 


  
















