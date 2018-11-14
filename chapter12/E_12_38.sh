#!/bin/bash 

   #   quote-fetch.sh  下载一份股票报价

   E_NOPARAMS=65

   if [ -z  "$1"  ]   # 必须指定需要获取的股票(代号).

   then 

      echo "Usgae: `basename $0` stock-symbol"

      exit $E_NOPARAMS

   fi  


   stock_symbol=$1

   file_suffix=.html

   #   获得一个 HTML 文件, 所以要正确命名它.
   
   URL='http://finance.yahoo.com/q?s='

   # Yahoo 金融板块, 后缀是股票查询.

   # ----------------------------------

   wget -O ${stock_symbol}${file_suffix} "${URL}${stock_symbol}"

   # -----------------------------------


   # 在 http://search.yahoo.com 上查询相关材料:

   # ----------------------------
   #
   # URL="http://search.yahoo.com/search?fr=ush-news&p=${query}"
   # wget -O "$savefilename" "${URL}"
   # -----------------------------------------------------------

   #  保存相关 URL 的列表.

   exit $?










       
