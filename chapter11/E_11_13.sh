#!/bin/bash

    #   使用'eval'的一个"rot13"的版本,(译者:rot13 就是把 26 个字母,从中间分为 2 瓣,各 13 个)

    #   与脚本"rot13.sh" 比较一下.
  
    #   "rot13" 函数

      
    setvar_rot_13(){
     
       
       local varname=$1 varvalue=$2

       eval $varname=$(echo "$varvalue" | tr a-z n-za-m )
    }

    setvar_rot_13 var "foobar"  # 用"foobar" 传递到 rot13 函数中.

    echo $var                   # # 结果是 sbbone

     # 这个例子是 Segebart Chazelas 编写的.

     # 作者又修改了一下.


#eval 命令是有风险的,如果有更合适的方法来实现功能的话,尽量要避免使用它.
#eval 命令将执行命令的内容,如果命令中有 rm -rf*这种东西,可能就不是你想要的了.
#如果在一个不熟悉的人编写的脚本中使用 eval 命令将是危险的.
    
    exit 0
