#!/bin/bash

#some files are losted, when svn add whole project!
#so, I use this script to add them 
#fixme: --no-ignore
#find | grep -v svn | xargs svn add
str=`find . -type d | grep -v svn`
echo $str
for i in $str
do
	cd $i
	svn add *
	svn ci -m "dir:$i"
	cd -
done
