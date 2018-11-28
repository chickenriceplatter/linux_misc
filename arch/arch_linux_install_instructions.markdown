check internet connection
---
ping -c 3 google.com

ip a


partition disk
---

fdisk /dev/sda

o (to wipe disk)

n (new partition)

p (primary)

+30G

a (makes partition bootable)

n, p sector default

+2G

type

82 (linux swap)

n, p, enter

w (exits fdisk)


mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3



fdisk -l

cfdisk /dev/sda (alternative to fdisk)

mkfs.ext4 /dev/sda1


mount /dev/sda1 /mnt

lsblk

pacstrap -i /mnt base base-devel

genfstab -U -p /mnt >> /mnt/etc/fstab

cat /mnt/etc/fstab

arch-chroot /mnt /bin/bash

pacman -S openssh grub-bios linux-headers linux-lts linux-lts-headers wpa_supplicant wireless_tools


nano /etc/locale.gen

### uncomment en-US.UTF-8 UTF-8

locale-gen

ln -s /usr/share/zoneinfo/America/New_York /etc/localtime

hwclock --systohc --utc

echo linux-box > /etc/hostname

nano /etc/hosts

### add line 127.0.0.1 localhost.localdomain linux-box

systemctl enable dhcpcd

systemctl enable sshd.service

passwd

pacman -S grub

grub-install --target=i386-pc --recheck /dev/sda (alternative)

grub-install /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

exit

umount -R /mnt

reboot

login as root

useradd -m -g users -G wheel -s /bin/bash dave
passwd dave

EDITOR=nano visudo

#uncomment %wheel ALL=(ALL) ALL

exit

login as dave

sudo pacman -S pulseaudio pulseaudio-alsa

sudo pacman -S xorg xorg-xinit

startx

sudo pacman -S gdm

systemctl enable gdm


gnome install
---

sudo pacman -S gnome-control-center gnome-shell gnome-shell-extensions gnome-system-monitor gnome-terminal gnome-tweak-tool nautilus

sudo pacman -S nvidia-lts


swap space not enabled
gnome-xorg not showing (if xorg is used, then it is just shown as gnome)

terminal not loading (set language in Region & Language)
