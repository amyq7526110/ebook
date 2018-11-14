#!/bin/bash 

#   通过仔细学习 dc 命令的 info 页, 可以更深入的理解这个
#   复杂的命令. 但是, 有一些精通 dc 巫术 的小组经常会炫耀
#   他们使用这个强大而又晦涩难懂的工具时的一些技巧,
#   并以此为乐.
    

echo "16i[q]sa[ln0=aln100%Pln100/snlbx]sbA0D68736142snlbxq" | dc

    # factr.sh 分解约数

    MIN=2 # 如果比这个数小就不行了.

    E_NOARGS=65

    E_TOOSMALL=66

    E_BADARGS=67

    if [ -z $1 ]

    then 

        echo "Usage: $0 number"

	exit $E_NOARGS

    fi	

    
    if [ "$1"  -lt "$MIN" ]

    then 

        echo "Number to factor must be $MIN or greater."

	exit $E_TOOSMALL

    fi	

    echo "Factors of $1:"

    echo "$1[p]s2[lip/dli%0=1dvsr]s12sid2%0=13sidvsr[dli%0=1lrli2+dsi!>.]ds.xd1<2" | dc 

    # ---------------------------------------------------------------------------------
    # 上边这行代码是 Michel Charpentier 编写的<charpov@cs.unh.edu>.
    # 在此使用经过授权 (thanks).

    exit 0
