#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b
unzip f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b
chmod +x gatekeeper
gcc -o mylibrary.so -shared mylib.c -ldl -fPIC
LD_PRELOAD=./mylibrary.so ./gatekeeper login password > out.txt
echo CTF{$(cat -v out.txt | grep reversed | tr -d '\n' | cut -c 31-)} > key.txt

# Cleanup
rm f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b*
rm gatekeeper
rm mylibrary.so
rm out.txt
