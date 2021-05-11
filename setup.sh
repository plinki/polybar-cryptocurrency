#!/bin/sh
set -x

DISTRO=$(lsb_release -i | cut -f 2-)

case $DISTRO in
    'Arch')
        dir_fonts=~/.local/share/fonts
        ;;
    'Artix')
        dir_fonts=~./local/share/fonts
        ;;
    *)
        dir_fonts=~/.fonts
        ;;
esac

dir_polybar=~/.config/polybar/

mkdir -p $dir_fonts

cp coins.otf $dir_fonts
cp -t $dir_polybar pcrypto.py coins.svg
