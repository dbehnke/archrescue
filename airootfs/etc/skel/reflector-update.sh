#!/bin/bash
sudo reflector --verbose --country 'United States' -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syu
