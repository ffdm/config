#!/bin/bash
valpath=~/repos/config/redshift-utils/redshift-value.txt
val=$(<$valpath)
if [ $val -gt 1000 ]; then
	redshift -P -O $((val-500))
	echo $((val-500)) > $valpath
fi

