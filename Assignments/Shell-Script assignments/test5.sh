#!/bin/sh
x=$(date +%Y%m%d%H%M%S)
mkdir $x
a=1
echo "Enter the name of file with path name"
read name
c1=$(wc -l < $name)
while [ $a -le $c1 ]
   do 
     echo "$filename" 
     filename=$(sed -n "${a}p" $name)
     echo "$filename" 
     echo "$x" 
     sudo cp  --parents -r --preserve=all $filename $x
     a=$((a+1)) 
   done 

