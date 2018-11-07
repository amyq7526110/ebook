#!/bin/bash 

  #  比较命令

  #   diff,path

  #     diff: 一个非常灵活的文件比较工具. 这个工具将会以一
  #  行接一行的形式来比较目标文件.在某些应用中, 比如说比较单词
  #  词典, 在通过管道将结果传递给 diff 命令之前, 使用诸
  #  如 sort 和 uniq 命令来对文件进行过滤将是非常有用的.
  #  diff file-1 file-2 将会输2 个文件不同的行,并会通过符号标识
  #  出每个不同行所属的文件.
      
  
  #   diff 命令的 --side-by-side 选项将会把 2 个比较中的文件全部输出,
  #   按照左右分隔的形式, 并会把不同的行标记出来. -c 和 -u 选项也会
  #   使得 diff 命令的输出变得容易解释一些.

  #  还有一些 diff 命令的变种, 比如 sdiff, wdiff, xdiff, 和 mgdiff.

  #  注意: 如果比较的两个文件是完全一样的话, 那么 diff 命令会返回 0 作为退出码,
  #  如果不同的话就返回 1 作为退出码. 这样 diff 命令就可以用在 shell 脚本的
  #  测试结构中了. (见下边)

  #  diff 命令的一个重要用法就是产生区别文件, 这个文件将用作 patch 命令的
  #  -e 选项的参数, -e 选项接受 ed 或 ex 脚本

  #  patch: 

  #  灵活的版本工具.给出一个用 diff 命令产生的区别文件, patch 命令可以将一个
  #  老版本的包更新为一个新版本的包. 因为你发布一个小的区别文件远比重新发布
  #  一个大的软件包来的容易得多.对于频繁更新的 Linux 内核来说, 使用补丁包的
  #  形式来发布将是一种很好的方法.
  
   patch =p1 < patch-file

   # 在'patch-file'中取得所有的修改列表
   # 然后把它们应用于其中索引到的文件上.
   # 那么这个包就被更新为新版本了.

  #  更新 kernel:
  
     cd /usr/src

     gzip -cd patchxx.gz | patch -p0

     #  使用'patch' 来更新内核原文件

     # 来自于匿名作者(Alan Cox?)的

     # Linux 内核文档 "README".

     # 注意: diff 命令也可以递归的比较目录下的所有文件(包含子目录).

     diff -r ~/notes1 ~/notes2

     # Only in /home/bozo/notes1: file02
     # Only in /home/bozo/notes1: file03
     # Only in /home/bozo/notes2: file04

     # 注意: 使用 zdiff 来比较 gzip 文件.



     #  diff3
     #  一个 diff 命令的扩展版本, 可以同时比较 3 个文件. 
     #  如果成功执行那么这个命令就返回 0,
     #  但是不幸的是这个命令不给出比较结果的信息.
     #  bash$ diff3 file-1 file-2 file-3
     #  ====
     #  1:1c
     #  This is line 1 of "file-1".
     #  2:1c
     #  This is line 1 of "file-2".
     #  3:1c
     #  This is line 1 of "file-3"

     # sdiff 

     #  比较 和/或 编辑 2 个文件, 将它们合并到一个输出文件中. 
     #  因为这个命令的交互特性, 所以在脚本中很少使用这个命令.


     # cmp
     # cmp 命令是上边 diff 命令的一个简单版本. diff 命令会报告
     # 两个文件的不同之处, 而cmp 命令仅仅指出那些位置有不同, 而
     # 不会显示不同的具体细节.
     # 注意: 与 diff 一样,如果两个文件相同 cmp 返回 0 作为退出码, 
     # 如果不同返回 1. 这样就可以用在 shell 脚本的测试结构中了.


     # comm 
      
     #    多功能比较工具，使用这个命令之前必须先排序

     #   comm -option first-file second-file 

     #   comm file-1 file-2  将会输出三列

     #  * 第 1 列 = 只在 file-1 中存在的行
     #  * 第 2 列 = 只在 file-2 中存在的行
     #  * 第 2 列 = 两边相同的行.

     #   下列选项可以禁止 1 列或多列的输出.
     #   
     #   
     #   *-1 禁止显示第一栏 (译者: 在 File1 中的行)
     #   *-2 禁止显示第二栏 (译者: 在 File2 中的行)
     #   *-3 禁止显示第三栏 (译者: File1 和 File2 公共的行)
     #   *-12 禁止第一列和第二列, (就是说选项可以组合)

    



  
  
 



    
