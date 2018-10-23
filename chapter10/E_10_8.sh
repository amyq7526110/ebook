#!/bin/bash

# userlist.sh

   Password_File=/etc/passwd

   n=1     # user number

   for name in `awk 'BEGIN{FS=":"}{print $1}' < $Password_File`

   do

      echo "User  # $n = $name"

      let "n += 1"

   done




   exit 0


