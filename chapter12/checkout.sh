#!/bin/bash 

   # sum cksun md5sum sha1sum

   #  这些都是用来产生 checksum 的工具. checksum 的目的是用来检验
   # 文件的完整性, 是对文件的内容进行数学计算而得到的. 出于安全目的
   # 一个脚本可能会有一个 checksum 列表,这样可以确保关键系统文件的内
   # 容不会被修改或损坏. 对于需要安全性的应用来说,
   # 应该使用 md5sum (message digest 5 checksum) 命令, 或者更好的更新的 
   # sha1sum(安全 Hash 算法).

   cksum text.c

   echo  -n "Top Secret"  | cksum

   #  33910003827 10

   md5sum text.c


   #  

   echo -n "Top Secret"  | md5sum

   #注意: cksum 命令将会显示目标的尺寸(字节), 目标可以使文件或 stdout.
   #      md5sum 和 sha1sum 命令在它们收到 stdout 的输入时候, 显示一个 dash .
   

   # 844213178 12 text.c
   # 3391003827 10
   # 005b6fdc4f4816a6b5539e7470007ab7  text.c
   # 8babc97a6f62a4649716f4df8d61728f  -


   #  注意: 已经有 128-bit md5sum 被破解的报告了,
   #  所以现在更安全的 160-bit sha1sum 是
   #  非常受欢迎的, 并且已经被加入到 checksum 工具包中.
   #  一些安全顾问认为即使是 sha1sum 也是会被泄漏的. 所以, 下一个工具是什么呢?
   #  -- 512-bit 的 checksum 工具?
   #  bash$ md5sum testfile
   #  e181e2c8720c60522c4c4c981108e367
   #  testfile
   #  bash$ sha1sum testfile
   #  5d7425a9c08a66c3177f1e31286fa40986ffc996
   #  testfile
  
   # shred 

   #   用随机字符填充文件, 使得文件无法恢复, 这样就可以保证文件安全的被删除
   #   这个命令的效果与 Example 12-55 一样, 但是使用这个命令是一种更优雅更
   #   彻底的方法.这是一个 GNU fileutils.
   #   注意: 即使使用了 shred 命令, 高级的(forensic)辩论技术还是能够恢复文件的内容.

   











