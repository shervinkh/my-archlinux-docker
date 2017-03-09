#!/bin/bash

yes | pacman -Sy archlinux-keyring && yes | pacman -Syu 2> /dev/null && pkgfile --update

