str=`find . -type d | grep -v svn`
echo $str
for i in $str
do
	cd $i
	svn add *
	svn ci -m "dir:$i"
	cd -
done
