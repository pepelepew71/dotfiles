#!/usr/bin/env bash

cp .vimrc       ~/
cp .tmux.conf   ~/
cp .Xresources  ~/

xrdb -merge ~/.Xresources

cp .config/compton.conf   ~/.config/
cp .config/redshift.conf  ~/.config/
cp .config/i3             ~/.config/  -r
cp .config/i3blocks       ~/.config/  -r
cp .config/script         ~/.config/  -r

mkdir ~/.config/ranger -p

cp .config/ranger/config  ~/.config/ranger/

