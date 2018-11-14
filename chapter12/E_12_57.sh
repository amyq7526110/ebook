#!/bin/bash 


#  units
#  这个工具用来在不同的计量单位之间互相转换. 
#  当你在交互模式下正常调用时, 会发现在
#  脚本中 units 也很有用.

#  unit-conversion.sh

convert_units()   #  通过参数取得需要转换的单位.
{
  cf=`units "$1" "$2"  | sed --silent -e '2p' | awk '{print $2}'`
  
  # 除了真正需要转换的部分保留下来外,其他的部分都去掉.
  
  echo $cf 

}



Unit1=miles

Unit2=meters

cfactor=`convert_units $Unit1 $Unit2`

echo  $cfactor


quantity=3.73

result=$(echo $quantity*$cfactor | bc )

echo "There are $result $Unit2  in $quantity $Unit1."

# # 如果你传递了两个不匹配的单位会发生什么?
#+ 比如分别传入英亩和英里?

exit 0
