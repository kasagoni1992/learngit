#!/bin/bash
echo "enter value"
read value
if [[ ($value -lt 3 || $value -gt 5) ]]
then
echo "true"
else
echo "false"
fi
