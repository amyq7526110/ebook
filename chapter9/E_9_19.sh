#!/bin/bash

  #  变量拓展/字串替换

  #  这些结构都是从ksh中吸收来的

  #  ${var:pos}

  #     变量从位置pos开始拓展

  #  ${var:pos:len}

  #    从位置 pos 开始,并扩展 len 长度个字符.见 Example A-14(这个例子里有这种操作的一 创造性用法)

  #  ${var/Pattern/Replacement}

  #     使用Replacement 来替换 var中的第一个Pattern 的匹配

  #  ${var//Pattern/Replacement}

  #  全局替换.在 var 中所有的匹配,都会用 Replacement 来替换.
  #  向上边所说,如果 Replacement 被忽略的话,那么所有匹配到的 Pattern 都会被删除.


  var1=abcd-1234-defg

  echo "var1 = $var1"

  t=${var1#*-*}

  echo "var1 (with everything,up to and including first - stripped out) =$t"

  #  t=${var1#*-} 在这个例子中作用是一样的,

  #+ 因为 # 匹配这个最近的字符串,

  #+ 并且 * 匹配前边的任何字符串,包括一个空字符.

  t=${var1##*-*}

  echo "if vari contains a \"-\",returns empty string...  var1 = $t"

  t=${var1%*-*}

  echo "var1 (with everything,upto and include last = stripped out) var1 =$t"

  echo 


  #  -----------------



  path_name=/home/bozo/ideas/thoughts.for.today

  # ----------------------------------]


  echo "path_name = $path_name"

  t=${path_name##/*/}

  echo "path_name,stripped of prefixs  = $t"

   echo "path_name, stripped of prefixes = $t"

   # 在这个特定的例子中,与 t=`basename $path_name` 的作用一致.

   # t=${path_name%/}; t=${t##*/} 是一个更一般的解决办法,

   #+ 但有时还是不行.

   # 如果 $path_name 以一个新行结束, 那么`basename $path_name` 将不能工作,

   #+ 但是上边这个表达式可以.


   t=${path_name%/ *.*}

   # 与 t=`dirname $path_name`  效果相同

  echo "path_name,stripped if suffixes = $t"

  #  在某些情况下将失效,比如 "../", "/foo////", # "foo/", "/".

  #  删除后缀,尤其是在 basename 没有后缀的时候,

  #+ 但是 dirname 还是会使问题复杂化.


  echo 

  t=${path_name:11}

  echo "$path_name,with first 11 chars stripped off = $t"

  t=${path_name:11:5}

  echo "$path_name,with first 11 chars,stripped,lenth=5   off = $t"

  echo 

  t=${path_name/bozo/clown}

  echo "$path_name with \"bozo\" replaced by \"clown\" = $t"

  t=${path_name/today/}

  echo "$path_name with 'today' deleted = $t"
  
  t=${path_name//o/O}

  echo "$path_name with all o's capitalized = $t"

  t=${path_name//o/}

  echo "$path_name with all o's deleted = $t"

  exit 0
  


 












