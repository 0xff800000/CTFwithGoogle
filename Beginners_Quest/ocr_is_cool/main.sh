#!/bin/bash

wget https://storage.googleapis.com/gctf-2018-attachments/7ad5a7d71a7ac5f5056bb95dd326603e77a38f25a76a1fb7f7e6461e7d27b6a3
unzip 7ad5a7d71a7ac5f5056bb95dd326603e77a38f25a76a1fb7f7e6461e7d27b6a3
convert OCR_is_cool.png -crop 1307x421+319+322 crop.png
convert crop.png -colorspace Gray -depth 8 -resample 200x200 crop2.png
tesseract crop2.png mail

for i in {1..26}
do
	python caesar.py mail.txt $i >> deciph.txt
done;

grep -o -E ctf{.+} deciph.txt > key.txt

# Cleanup
rm 7ad5a7d71a7ac5f5056bb95dd326603e77a38f25a76a1fb7f7e6461e7d27b6a3*
rm *.png
rm deciph* mail*
# rm challenge.*
