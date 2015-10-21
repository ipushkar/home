#!/bin/bash
path=$1
folder=$2
newpath=$3

cd $path
if [ $? == 0 ]
  then 
      mv $folder $newpath
      if [ $? == 0 ] 
        then
            echo -e "\033[0;32mFolder was moved to new path\033[0m"
            echo -e "\033[0;32mOperation successfully completed\033[0m"
        else 
            echo -e "\033[0;31mProcess failed, please specify correct new path for the folder\033[0m"
      fi
  else
      echo -e "\033[0;31mCan't find path for the folder\033[0m"
fi
