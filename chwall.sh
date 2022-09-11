#!/bin/bash

# gsettings set org.gnome.desktop.background picture-uri ~/Pictures/wallhaven/$(ls ~/Pictures/wallhaven| shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri $(find ~/Pictures/Walls/ -type f| shuf -n 1)
