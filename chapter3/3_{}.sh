#!/bin/bash
   
    echo -e "a\na\na\n"  > a.txt
    echo -e "b\nb\nb\n"  > b.txt
    echo -e "c\nc\nc\n"  > c.txt

    cat {a.txt,b.txt,c.txt} > combined_file

#   把flie1，file2，file3 连接在一起，并且重定向到combined_file中


    cp test.{txt,backup}

#   拷贝 text.txt 文件 到 text.bak    


#   一个命令可能会对大括号中的以逗号分割的文件列表起作用[1]. file globbing 将对
#   大括号中的文件名作扩展.
#   注意: 在大括号中,不允许有空白,除非这个空白是有意义的.

     echo {a.txt,b.txt}\:{\A,"B","C"}


#   {} 代码块，又被称为内部组，事实上创建了一个匿名的函数.但是与函数不同的是,在其中声明的变量,对于脚本其他部分的代码来说还是可见的

    a(){
       local a;
       a=123;
    }
     
#   bash 中的 local 申请的变量只能够用于函数中

    a=123

    { a=321; }

    echo "a=$a"  # a=321 （说明在代码块中对变量a所作的修改，影响了外面的变量a）


#   下面的代码展示了在{}结构中的i/o重定向


#   从 /etc/fstab 中读行

    File=/etc/fstab

    {
       read line1 
       read line2
    
    } < $File

    echo "First line in $File is:"
    echo "$line1"
    echo
    echo "Second line in $File is:"
    echo "$line2"
    
    exit

#   现在：你怎么分析没行的分隔域

#   暗示 awk


#   {} \;  路径名.一般都在 find 命令中使用.这不是一个 shell 内建命令.

#   注意: ";"用来结束 find 命令序列的-exec 选项.
 




 
    







    
