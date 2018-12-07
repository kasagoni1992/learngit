#!/bin/bash
#set -x 
echo -e "This script is used to parse all text files to find ManuMahi \n"
echo ""
if [ -f temp.txt ]
  then
   rm temp.txt
  fi 

ls | grep txt | grep -v temp > temp.txt

while read line
do
   echo -e "Parsing text file $line \n"
   sleep 4
   find_mm=`cat $line | grep -i ManuMahi`
   
   if [ -z "$find_mm" ]
     then
        echo -e "ManuMahi is not found in text file $line\n "
       else
        echo -e "ManuMahi is found in text file $line \n"
         
         c=1
         while read line1
          
           do
             if [[ "$line1" =~ "ManuMahi" ]]
                then
                  echo -e "ManuMahi is found in line $c of text file $line \n"
             fi
             c=$((c+1))
          done < $line
    fi
  
done < temp.txt
