# bozoxx
# script for elitebook 8460p users
# hardcoded experimental uefi fix


echo starting

cd ~

sudo mkdir /boot/efi

echo boot path created

# dev/sda# your uefi boot partition
sudo mount /dev/sda1 /boot/efi

echo boot partition mounted

cd ../../boot/efi/efi

sudo mkdir Microsoft/Boot

cd GRUB

sudo cp grubx64.efi ../Microsoft/Boot/bootmgfw.efi

echo file copied

cd ../../../

sudo umount /boot/efi

echo boot partition unmounted

echo change the world my final message
