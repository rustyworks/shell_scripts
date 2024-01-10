lsblk -do +VENDOR,MODEL,SERIAL
mkdir /mnt/flashdrive
mount /dev/sdb /mnt/flashdrive
sudo mount /dev/sdb /mnt/flashdrive
