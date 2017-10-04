#!/bin/bash
# checking database
user=$1 
pass=$2
base=$3
mysql -u $user -p$pass -e "use $base; show tables ; describe friends; select * from friends"
if [ $? == 0 ]
  then 
      echo -e "\033[0;32mTables created successfully in test database\033[0m"
      echo -e "\033[0;32mTest successfully completed\033[0m"
  else 
      echo -e "\033[0;31mSomething went wrong. Please try again\033[0;31m"
      echo -e "\033[0;31mTest failed\033[0m"
fi
