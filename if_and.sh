#!/bin/bash
echo "enter number"
read number
echo "enter name"
read name
if [[ ( $number == 1 && $name == "manasa" ) ]]
then
echo "excellent"
else
echo "wrong answer"
fi
