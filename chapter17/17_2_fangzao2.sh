#!/bin/bash 

# 17-2 仿造文件: 创建一个两行的仿造文件
 # 用非交互的方式来使用'vi'编辑一个文件.
 # 模仿'sed'.

 E_BadArgs=65

 if [ -z "$1" ]

 then

    echo "Usage:`basename $0` filename"

    exit $E_BadArgs

 fi

 Targetfile=$1

 # 在文件中插入两行 然后保存

 # -----------Begin here document -------#

 vi $Targetfile << EOF
i
This is line 1 of the example file
This is line 1 of the example file

ZZ
EOF
 
 # -----------END here document--------- #



# ctrl+v <Esc>就行,
#+ 事实上它是<Esc>键.
 
  # Bram Moolenaar 指出这种方法不能正常地用在'vim'上, (译者注: Bram Moolenaar 是 vim 作者)
  #+ 因为可能会有终端的相互影响问题.
 
  exit 0
