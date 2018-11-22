#!/bin/bash 

#  以root 身份

mkdir /mnt/cdtest  # 如果没有的话,准备一个mount 点

mount -r -t iso9660 -o loop cd-.iso /mnt/cdtest 

# mount 这个镜像

 #
 cd /mnt/cdtest
 ls -alR

# mount 这个镜像.
# "-o loop" option equivalent to "losetup /dev/loop0"
# 现在检查这个镜像.
# 列出目录树中的文件.
# 等等

