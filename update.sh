#!/bin/bash

yes | pacman -Syu 2> /dev/null && pkgfile --update

