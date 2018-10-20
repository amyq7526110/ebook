#!/bin/bash


# -----------------------

#  这部分内容来自独立的文件

  isdnMyProvideRemoteNet=172.16.0.100

  isdnYourProvideRemoteNet=10.0.0.10

  isdnOnlineService="MyProvide"

#-------------------------------------


  remoteNet=$(eval "echo \$$(echo isdn${isdnOnlineService}RemoteNet)")


  echo "$remoteNet"    # 172.16.0.10


   remoteNet=$(eval "echo \$$(echo isdnMyProvideRemoteNet)")

   remoteNet=$(eval "echo \$isdnMyProvideRemoteNet")

   remoteNet=$(eval "echo $isdnMyProvideRemoteNet")


   echo "$remoteNet"   #  172.16.0.10

   echo 

#  ----------------------------------



  isdnOnlineService="YourProvide"

  remoteNet=$(eval "echo \$$(echo isdn${isdnOnlineService}RemoteNet)")

  echo  "$remoteNet"   # 10.0.0.10


   remoteNet=$(eval "echo \$$(echo isdnYourProvideRemoteNet)")

   remoteNet=$(eval "echo \$isdnYourProvideRemoteNet")

   remoteNet=$(eval "echo $isdnYourProvideRemoteNet")

  echo "$remoteNet"    #  10.0.0.10

  echo   

#  ---------------

   #   同时它能更好

   #


   #   考虑下面的脚本，给出了一个变量getSparc

   #+   但是没有给出变量getla64


   chkMirrorArchs(){
   
      arch="$1"

      if [ "$(eval "echo \${$(echo get$(echo -ne $arch  |
          sed  -r 's/^(.).*/\1/g' | tr 'a-z' 'A-Z';echo $arch |
	  sed  -r 's/^.(.*)/\1/g')):-false}")" = true ]


      then

          return 0;

      else 
       
          return  1;


    fi	  
   
   }


   getSparc="true"

   unset getla64

   chkMirrorArchs sparc


   echo $?

   chkMirrorArchs  la64

   echo $?


    # -----<rojy bug>
    # Even the to-be-substituted variable name part is built explicitly.
    # The parameters to the chkMirrorArchs calls are all lower case.
    # The variable name is composed of two parts: "get" and "Sparc" . . .
   

 











