#!/bin/bash

# Make sure it's Linux system
if [[ $MACHTYPE = *linux* ]] ; then
  distro=$(cat /etc/issue | grep '\s' | head -n 1 | awk '{print $1}')
  echo -e "\nDetected distro: $distro\n"
  if [[ $distro = 'Ubuntu'  ]] ; then
    echo "Hi Ubuntu"
    exit 1
  fi
fi