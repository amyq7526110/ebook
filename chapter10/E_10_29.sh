#!/bin/bash

  
    PS3='Choose your favorite vegetable: ' # 设置提示符字串

    echo 

    select vegetable in "beans" "carrots" "potatoes" "onions" "rutabagas"

    do
       echo 

       echo "your favorite veggie is $vegetable."

       echo "Yuck!"

       echo 

       break 

    done

    exit 0
