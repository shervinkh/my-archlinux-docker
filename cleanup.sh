#!/bin/bash

rm -r /usr/share/man/* &> /dev/null
pacman -Rdd systemd --noconfirm
rm -r /usr/lib/systemd/* &> /dev/null
rm -r /etc/systemd/* &> /dev/null
yes | pacman -Scc

