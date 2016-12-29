#!/bin/sh
a=1
echo "Enter the name of file with names"
read name_file
echo "Enter the name of file with passwords"
read password_file
c1=$(wc -l < $name_file)
c2=$(wc -l < $password_file)
if [ "$c1" = "$c2" ]
then
      echo "c1 is equal to c2"
   while [ $a -le $c1 ]
   do 
     username=$(sed -n "${a}p" $name_file)
     userpassword=$(sed -n "${a}p" $password_file)
     echo "$a"  
     echo "$username"
     echo "$userpassword"
     sudo useradd $username
     sudo echo $username:$userpassword | sudo chpasswd 
     a=$((a+1))   
   done
else
   echo "c1 is not equal to c2"
fi

