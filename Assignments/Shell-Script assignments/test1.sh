#!/bin/sh
touch /tmp/test
x=$(date +%Y%m%d%H%M%S)
mkdir $x
mv /tmp/test /home/alex/shell-scripts/$x



