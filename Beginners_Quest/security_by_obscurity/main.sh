#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383
unzip 2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383

ret=0
while [ "$ret" == "0" ]
do
	i=$(ls password.*)
	echo $i
	unzip $i &&	rm $i
	ret=$?
done

ret=0
while [ "$ret" == "0" ]
do
	i=$(ls password.*)
	echo $i
	mv $i $i.xz
	unxz $i*
	ret=$?
	echo "$ret"
done

ret=0
while [ "$ret" == "0" ]
do
	i=$(ls password.*)
	bzip2 -d $i*
	ret=$?
	echo "$ret"
done

ret=0
while [ "$ret" == "0" ]
do
	i=$(ls password.*)
	mv $i $i.gz
	gzip -d $i*
	ret=$?
	echo "$ret"
done

pass="asdf" # Use fcrackzip
unzip -P $pass password.*
mv password.txt key.txt

# Cleanup
rm 2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383*
rm password.*