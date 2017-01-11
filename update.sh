#!/bin/bash

pacman-key --refresh-keys && yes | pacman -Syu 2> /dev/null && pkgfile --update

