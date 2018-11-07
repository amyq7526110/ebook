#!/bin/bash 

    Args=2  # 脚本需要2个参数

    E_BadArgs=65

    E_UnReadable=66

    if [ $# -ne "$Args" ]

    then 

         echo "Both files to be compared must exist and be readable." >&2

	 exit $E_BadArgs

    fi

    cmp $1 $2 &> /dev/null  # /dev/null 将会禁止 "cmp" 命令的输出

    # cmp -s $1 $2 与上面的效果相同("-s" 是安静的标志)

    # Thank you Anders Gustavsson for pointing this out.

    # 用diff命令也可以，比如，diff $1 $2 &>/dev/null

    if [ $? -eq 0  ]   # 测试“cmp”的退出码

    then 

         echo "File \"$1\"  is identical to file \"$2\" "

    else 
  
         echo "File \"$1\"  differs from file \"$2\" ."

    fi	 

    exit 0

      



