#!/bin/sh
echo "Input file name"
read name
echo "Input path"
read path
file="$path/$name"
if [ -f "$file" ]
then
	rm $file
else
	tar -zcvf archive.tar.gz $path
fi
