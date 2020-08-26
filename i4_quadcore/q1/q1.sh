#! /usr/bin/bash

i=1
sum=0
while (( $i <= $1 ))
do
     sum=$(( sum+i*i ))
     i=$(( i+1 ))
done
 
echo "$sum"
