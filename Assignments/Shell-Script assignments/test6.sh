#!/bin/sh
find /home/alex/Testfolder -size 0 -print > test.txt
cd ..
cd Testfolder
find . /home/alex/Testfolder -type f -printf "%f\0" | sort -nz | tr '\0' '\n'
c1=$(wc -l < /home/alex/Test_folder/test.txt)
echo "$c1"
a=1
while [ $a -le $c1 ]
   do 
   f=$(sed -n "${a}p" /home/alex/Test_folder/test.txt)
   echo "Do you want to delete the size zero file $f (y/n) ?"
   read s
   if [ $s = y ]
      then
      echo "now"
      rm $(echo "$f")
      echo "File deleted"
      a=$((a + 1))
   else 
      echo "File not deleted"
      a=$((a + 1))
   fi
done


