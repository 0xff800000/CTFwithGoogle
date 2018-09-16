#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/4e69382f661878c7da8f8b6b8bf73a20acd6f04ec253020100dfedbd5083bb39
unzip 4e69382f661878c7da8f8b6b8bf73a20acd6f04ec253020100dfedbd5083bb39
binwalk foo.ico
unzip foo.ico
cat driver.txt | grep CTF > key.txt

# Cleanup
rm 4e69382f661878c7da8f8b6b8bf73a20acd6f04ec253020100dfedbd5083bb39*
rm foo*
rm www*
rm driver*
