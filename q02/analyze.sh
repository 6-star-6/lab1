#!/bin/bash

csvfile="$1"

if [ ! -f "$csvfile" ]; then
	echo "error:file not exist" >&2
	exit 1
fi

awk -F',' 'NR>1 && $4 ~/^5/{print $3}' "$csvfile" | sort |uniq -c | sort -k1,1nr -k2,2 | head -n2

awk -F',' ' BEGUN{SUM=0;CNT=0} NR>1{sum+=$5;cnt+=1} END{printf"%.2f\n", sum/cnt}' "$csvfile"
