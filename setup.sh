#!/bin/bash
set -x

dir_fonts=~/.fonts
dir_polybar=~/.config/polybar

mkdir -p $dir_fonts

cp coins.otf $dir_fonts
cp {pcrypto.py, coins.svg} $dir_polybar