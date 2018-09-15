#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/5a0fad5699f75dee39434cc26587411b948e0574a545ef4157e5bf4700e9d62a
unzip 5a0fad5699f75dee39434cc26587411b948e0574a545ef4157e5bf4700e9d62a
pdftotext challenge.pdf
grep CTF challenge.txt | sed 's/. Password: //' > key.txt

# Cleanup
rm 5a0fad5699f75dee39434cc26587411b948e0574a545ef4157e5bf4700e9d62a*
rm challenge.*