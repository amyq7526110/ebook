#!/bin/bash

 
#  位操作符

#   晕,有点强大过分了吧,位级操作都支持.

#   位操作符在 shell 脚本中极少使用.它们最主要的用途看起来就是操作和 test 从 sockets 中

#   读出的变量."Bit flipping"与编译语言的联系很紧密,比如 c/c++,在这种语言中它可以

#   运行得足够快.(原文有处 on the fly,我查了一下,好像是没事干的意思,没理解)




#      << 左移 1 位(每次左移都将乘 2)

#      <<= 左移几位,=号后边将给出左移几位

#      let "var <<= 2"就是左移 2 位(就是乘 4)

#      >> 右移 1 位(每次右移都将除 2)

#      >>=

#      右移几位

#      & 按位与

#      &= 按位与赋值

#      | 按位或

#      |= 按位或赋值

#      ~ 按位非

#      ! 按位否?(没理解和上边的~有什么区别?),感觉是应该放到下边的逻辑操作中

#      ^ 按位异或 XOR

#      ^= 异或赋值














