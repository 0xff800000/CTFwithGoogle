#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b
unzip f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b
# pdftotext challenge.pdf
# grep CTF challenge.txt | sed 's/. Password: //' > key.txt

# Cleanup
# rm f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b*
# rm challenge.*