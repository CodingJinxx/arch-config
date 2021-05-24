#!/bin/sh
picom -b

xrandr --output DVI-D-0 --left-of DP-4 --auto --pos 3840x0
xrandr --output HDMI-O --right-of DP-4 --auto --pos 1920x0
 
xinput set-prop 9 'Coordinate Transformation Matrix' 0.5 0 0 0 0.5 0 0 0 1
xinput set-prop 9 'libinput Accel Speed' 0

nvidia-settings --assign CurrentMetaMode="DPY-6: nvidia-auto-select +1920+0 {ForceCompositionPipeline=On}, DPY-0: nvidia-auto-select +0+0 {ForceCompositionPipeline=On}, DPY-1: nvidia-auto-select +3840+0 {ForceCompositionPipeline=On}"
feh --bg-scale --randomize ~/.config/i3wallpaper/*

