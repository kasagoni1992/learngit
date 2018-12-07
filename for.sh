#!/bin/bash
for myvalue in $*
do
num=1
((num++))
if [ $num -eq 4 ]
then 
break
fi
echo "$num : $myvalue"
done
