#!/bin/bash

# dd 命令可以在数据流上做随即存取.


 #  echo -n . | dd bs=1 seek=4 of=file conv=notrunc

 # "conv=notrunc" 选项意味着输出文件不能被截短.

 # Thanks, S.C


 #  dd 命令可以将数据或磁盘镜像拷贝到设备中,
 #  也可以从设备中拷贝数据或磁盘镜像, 比
 #  如说磁盘或磁带设备都可以 (Example A-5). 通常用来创建启动盘.
 #  dd if=kernel-image of=/dev/fd0H1440
 #  同样的, dd 可以拷贝软盘的整个内容(甚至是其他操作系统的磁盘格式) 
 #  到硬盘驱动器上(以镜像文件的形式).

 #  dd if=/dev/fd0 of=/home/bozo/projects/floppy.img
 #  dd 命令还有一些其他用途, 包括可以初始化临时交换文件 (Example 28-2) 和 
 #  ramdisks (内存虚拟硬盘) (Example 28-3). 
 #  它甚至可以做一些对整个硬盘分区的底层拷贝, 虽然
 #  不建议这么做.

 #  一些(可能是比较无聊的)人总会想一些关于 dd 命令的有趣的应用.

 #  安全的删除一个文件

 #  blot-out.sh 删除一个文件所有的记录.

 # 这个脚本会使用随即字节交替的覆盖

 #+ 目标文件, 并且在最终删除这个文件之前清零.

 # 这么做之后, 即使你通过传统手段来检查磁盘扇区

 #+ 也不能把文件原始数据重新恢复.

 Passes=7      # 破坏文件的次数

               # 提高这个数字会减慢脚本的运行速度

	       # + 尤其是对比较大的目标文件进行操作的时候
 BlockSize=1   # 带有 /dev/urandom 的 I/O 需要单位块尺寸,	
               # 否则你可能将会获得奇怪的结果
 E_BadArgs=70  # 不同的错误码

 E_NOT_Found=71   

 E_Changed_mind=72

 if [ -z "$1" ] # 没指定文件名

 then 

    echo "Usage: `basename $0` filename "

    exit $E_BadArgs

 fi 

 file=$1

 if [ ! -e "$file" ]

 then

     echo "File '$file' not found."

     exit  $E_NOT_Found 
 fi     



 echo; echo -n "Are you absolutely sure you want to blot out \"$file\" (y/n)? "

 read  answer

 case "$answer" in
 [nN]) echo "Changed your mind, huh?"
 exit $E_CHANGED_MIND
 ;;
 *)
 echo "Blotting out file \"$file\".";;
 esac

 flength=`ls -l "$file" | awk '{print $5}'`  # 5是文件长度

 pass_count=1

 chmod u+w "$file"  # Allow overwriting/deleting the file.


 echo 


 while [  "$pass_count" -lt "$Passes"  ]

 do 

   echo "Pass # $pass_count"

   sync       # 刷新buffer

   dd if=/dev/urandom of=$file bs=$BlockSize count=$flength 
                             # 使用随机的字节进行填充
   sync			     # 在刷新buffer
   
   dd if=/dev/zero of=$file bs=$BlockSize count=$flength
                              
			     # 用0填充
   sync			     # 在刷新buffer

   let "pass_count += 1"

   echo 

done 

rm -f $file   # 最后在删除这个已经破坏的不成样子的文件

sync   # 最后一次刷新buffer

echo "File '$file' blotted out and deleted." ;echo 


exit 0

# 这是一种真正安全的删除文件的办法,
#+ 但是效率比较低, 运行比较慢.
# GNU 的文件工具包中的 "shred" 命令,
#+ 也可以完成相同的工作, 不过更有效率.

 # 使用普通的方法是不可能重新恢复这个文件了.
 # 然而 . . .
 #+ 这个简单的例子是不能够抵抗
 #+ 那些经验丰富并且正规的分析.

 #  这个脚本可能不会很好的运行在日志文件系统上.(译者注: JFS) 
 #  练习 (很难): 像它做的那样修正这个问题.
 




 # Tom Vier 的文件删除包可以更加彻底
 #+ 的删除文件, 比这个简单的例子厉害得多.
 # http://www.ibiblio.org/pub/Linux/utils/file/wipe-2.0.0.tar.bz2

 # 如果想对安全删除文件这一论题进行深度的分析,
 #+ 可以参见 Peter Gutmann 的页面,
 #+ "Secure Deletion of Data From Magnetic and Solid-State Memory".
 # http://www.cs.auckland.ac.nz/~pgut001/pubs/secure_del.html

                






