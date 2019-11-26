#!/usr/bin/env bash

cp ~/.config/redshift.conf ./.config/ -r
cp ~/.config/Thunar        ./.config/ -r
cp ~/.config/autostart     ./.config/ -r

cp ~/.config/xfce4/panel      ./.config/xfce4/ -r
cp ~/.config/xfce4/terminal   ./.config/xfce4/ -r
cp ~/.config/xfce4/xfconf     ./.config/xfce4/ -r
cp ~/.config/xfce4/helpers.rc ./.config/xfce4/ -r

cp ~/.vimrc      ./
cp ~/.tmux.conf  ./
cp ~/.Xresources ./
