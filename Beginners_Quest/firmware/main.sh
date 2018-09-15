#!/bin/bash
if [ ! -f 9522120f36028c8ab86a37394903b100ce90b81830cee9357113c54fd3fc84bf ]
then
	wget https://storage.googleapis.com/gctf-2018-attachments/9522120f36028c8ab86a37394903b100ce90b81830cee9357113c54fd3fc84bf
fi
unzip 9522120f36028c8ab86a37394903b100ce90b81830cee9357113c54fd3fc84bf
gzip -d challenge*
umount /mnt
mount challenge* /mnt
cp /mnt/.mediapc* .
gzip -d .mediapc*
mv .mediapc* key.txt

# Cleanup
# rm 9522120f36028c8ab86a37394903b100ce90b81830cee9357113c54fd3fc84bf*
rm challenge.*
umount /mnt