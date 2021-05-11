#!/bin/sh
set -x

DISTRO=$(lsb_release -i | cut -f 2-)

case $DISTRO in
    'Manjaro')
        dir_fonts=/home/$USER/.local/share/fonts/
        ;;
    'Arch')
        dir_fonts=/home/$USER/.local/share/fonts/
        ;;
    'Artix')
        dir_fonts=/home/$USER/.local/share/fonts/
        ;;
    *)
        dir_fonts=/home/$USER/.fonts/
        ;;
esac

mkdir $dir_fonts

dir_polybar=/home/$USER/.config/polybar/

cp coins.otf $dir_fonts
cp -t $dir_polybar pcrypto.py coins.svg
