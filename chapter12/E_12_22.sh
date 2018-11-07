#!/bin/bash 

   # crypto-quote.sh:加密

   #  使用单码替换(单一字母替换法)

   #  The result is similar to the "Crypto Quote" puzzles

   #+ seen in the Op Ed pages of the Sunday paper <rojy bug>  
   
   #  太了解这句的内容, 应该是有特定的含义


   key=ETAOINSHRDLUBCFGJMQPVWZYXK

   # "key"  不过是一个乱序的字母表

   #  修改"key"就会修改加密的结果

   # The 'cat "$@"'  construction gets input input either from stdin or from files

   #  如果使用stdin .那么想要结束输入就使用ctrl-D

   # 否则就要在命令行上指定文件名

   cat "$@" | tr "a-z" "A-Z" | tr "A-Z" "$key"

   # | 转化为大写 | 加密

   # 小写, 大写, 或混合大小写, 都可以正常工作.
   
   # 但是传递进来的非字母字符将不会起任何变化.

   # 解密 ：

   #  cat "$@"  | tr "$key"  "A-Z"

   # 这个简单的密码可以轻易的被一个 12 岁的小孩
   #+ 用铅笔和纸破解.

   exit 0




