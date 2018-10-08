#!/bin/bash



    # Example 4-6 wh,whois 节点名字查询 

    # ex18.sh

    # Does a 'whols domain-name' lookup on any of 3 alternate servers;

    # 把这个脚本从本重命名为'wh',然后放到/usr/local/bin 下 

    # 需要3个符号链接

#    ln -s /usr/local/bin/wh /usr/local/bin/wh-ripe

#    ln -s /usr/local/bin/wh /usr/local/bin/wh-cw

#    ln -s /usr/local/bin/wh /usr/local/bin/wh-radb


    E_NOARGS=65

    if [ -z "$1" ]

    then

        echo "Usage:`bashname $0` [domian-name]" 

	exit $E_NOARGS

    fi	

    #  检查脚本名字，然后调用合适服务器

    case `basename $0` in # 0r: case ${0##*/}  in

       "wh"   ) whois $1@whois.ripe.net;;

       "wh-ripe"   ) whois $1@whois.ripe.net;;

       "wh-radb"   ) whois $1@whois.radb.net;;


       "wh-cw"   ) whois $1@whois.cw.net;;

       *) echo "Usage: `basename $0`[domian-name]";;

    esac

    exit  $?





