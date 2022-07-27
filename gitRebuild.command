#! /bin/sh
#
# gitRebuild.command --- replace a .git folder with a fresh copy
#
# 2015-03-22 -- first completely automated version 

D=`dirname "$0"`
cd "$D"

if test ! -d .git
then
	echo "Not a git repo"
	exit
fi

U=`fgrep 'url =' .git/config | sed 's/\s*url = //'`
T=tmp$$

git clone $U $T
rm -rf .git
mv $T/.git .
rm -rf $T

exit
