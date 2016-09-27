FROM shervinkh/archlinux:latest
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
RUN pacman -Sy bash-completion git gnu-netcat iproute man-db man-pages nano net-tools pkgfile sudo vim wget --noconfirm && mv /etc/bash.bashrc /etc/bash.bashrc.bak && rm /etc/skel/.bashrc && pkgfile --update && unlink /etc/localtime && ln -s /usr/share/zoneinfo/Iran /etc/localtime && sed --in-place 's/#Color/Color/' /etc/pacman.conf
COPY bash.bashrc DIR_COLORS /etc/
