#! /bin/bash

sudo apt-get  install xmonad suckless-tools xscreensaver 
sudo apt-get  install xmobar 
sudo apt-get install stalonetray 

sudo apt-get install xclip
[ ! -f /usr/lib/urxvt/perl/clipboard ] && sudo cp clipboard /usr/lib/urxvt/perl/clipboard

#rm ../.Xdefaults
#ln -s dotfile/.Xdefaults ../.Xdefaults
rm ../.stalonetrayrc
ln -s dotfile/.stalonetrayrc ../.stalonetrayrc
rm ../.xsessionrc
ln -s dotfile/.xsessionrc ../.xsessionrc
rm ../.xmobarrc
ln -s dotfile/.xmobarrc ../.xmobarrc
rm ../.xmonad
ln -s dotfile/.xmonad ../.xmonad
