#!/bin/bash 

    a=/home/bozo/daily-journal.txt

    echo "Basename of /home/bozo/daily-journal.txt =  `basename $a`"

    echo "Dirname of /home/bozo/daily-journal.txt = `dirname $a`"

    echo 

    echo  "My own home is `basename ~/` "            # `basename ~` also works.
 
    echo  "The home of my home is `dirname ~/` "     # `dirname ~`  also works

    exit 0

    # Basename of /home/bozo/daily-journal.txt =  daily-journal.txt
    # Dirname of /home/bozo/daily-journal.txt = /home/bozo

    # My own home is root 
    # The home of my home is / 



