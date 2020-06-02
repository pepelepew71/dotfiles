#!/usr/bin/env bash

cp ~/.vimrc      ./
cp ~/.tmux.conf  ./

cp ~/.config/redshift.conf    ./.config/
cp ~/.config/autostart        ./.config/
cp ~/.config/powerline-shell  ./.config/

cp ~/.config/xfce4/helpers.rc  ./.config/
cp ~/.config/xfce4/terminal    ./.config/ -r
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml  ./.config/xfce4/xfconf/xfce-perchannel-xml/ -r
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml               ./.config/xfce4/xfconf/xfce-perchannel-xml/ -r
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml                     ./.config/xfce4/xfconf/xfce-perchannel-xml/ -r
