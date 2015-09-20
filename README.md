# archrescue

This will create a live media iso with the Mate desktop.  You can use this as a rescue media or to bootstrap install an arch linux installation similar to official archiso.  The customizations of this media will not transfer to a hard drive install unless you manually do so.

## Quickstart

1. Clone: ```git clone https://github.com/dbehnke/archrescue.git```
2. Install archiso ```sudo pacman -S archiso```
3. Edit pacman.conf and change the path of customrepo
4. Execute ```make```

output will be in out directory

## Customization

Edit the packages.x86_64 file to add more packages

Any custom files for the filesystem, copy to airootfs directory (this is the root of livemedia)

Modify the airootfs/root/customize_airootfs.sh script for any post-package install modifications

Any aur or personal packages should be placed in the customrepo directory.  Run the makerepo.sh that is in that directory when done.
