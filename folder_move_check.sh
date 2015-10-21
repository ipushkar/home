#!/bin/bash
path=$1
folder=$2
newpath=$3

cd $path
if [ $? == 0 ] && [ ! -d $folder ]
  then
      echo -e "Your folder \033[0;32m$folder\033[0m was removed from \033[0;32m$path\033[0m"
  else 
      echo -e "\033[0;31mSomething goes wrong. Your folder $folder is still in $path. Please try again\033[0m"
fi

cd $newpath 
if [ $? == 0 ] && [ -d $folder ]
  then 
      echo -e "Folder \033[0;32m$folder\033[0m was successfully moved to \033[0;32m$newpath\033[0m"
      echo "Test completed"
  else 
      echo -e "\033[0;31mNo folder $folder found in $newpath\033[0m"       
      echo "Test failed"
fi

