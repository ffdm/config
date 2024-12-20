#!/bin/bash
valpath=/home/f/misc/config/redshift-utils/redshift-value.txt
val=$(<$valpath)
if [ $val -lt 6500 ]; then
	redshift -P -O $((val+500))
	echo $((val+500)) > $valpath
fi

