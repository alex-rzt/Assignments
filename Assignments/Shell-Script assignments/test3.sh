#!/bin/sh
myVariable=$(ps -A -o pid)
echo "$myVariable" > "destfile"


