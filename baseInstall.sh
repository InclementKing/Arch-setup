#!/bin/zsh
parted /dev/sda mklabel msdos
parted -a optimal /dev/sda mkpart primary 0% 100%
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base base-devel
genfstab -L /mnt >> /mnt/etc/fstab
wget raw.githubusercontent.com/InclementKing/Arch-setup/master/chrooted.sh
mv chrooted.sh /mnt
echo
echo Now run arch-chroot /mnt, and run chrooted
