#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/America/Detroit /etc/localtime

useradd -m rescue
passwd -d rescue
usermod -s /usr/bin/zsh rescue
cp -aT /etc/skel/ /home/rescue/
chown -R rescue:users /home/rescue
chmod 700 /home/rescue

#sed -i 's/#\(PermitRootLogin \)no/\1yes/' /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

systemctl enable pacman-init.service choose-mirror.service
#systemctl set-default grapical.target
systemctl enable lightdm
systemctl enable NetworkManager
systemctl enable ntpd
systemctl enable vboxservice
