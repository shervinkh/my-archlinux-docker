#!/bin/bash

yes | pacman -Sy archlinux-keyring && yes | pacman -Syu --force 2> /dev/null && pkgfile --update

