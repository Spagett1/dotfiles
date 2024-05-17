#!/bin/sh
eww open --toggle background 
eww open --toggle profile 
eww open --toggle clock 
eww open --toggle network 
eww open --toggle music 
eww open --toggle system 
eww open --toggle workspaces 
eww open --toggle battery 
eww open --toggle weather

rofi -show drun /home/spagett/.config/rofi/ && \\
eww close background \\
eww close profile \\
eww close clock \\
eww close network \\
eww close music \\
eww close system \\
eww close workspaces \\
eww close battery \\
eww close weather \\
    || killall rofi

