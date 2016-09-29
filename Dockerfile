FROM shervinkh/archlinux:latest
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
COPY update.sh cleanup.sh /
RUN pacman -Sy pkgfile --noconfirm && \
    /update.sh && \
    pacman -S bash-completion git gnu-netcat iproute net-tools sudo vim wget --noconfirm && \
    mv /etc/bash.bashrc /etc/bash.bashrc.bak && \
    rm /etc/skel/.bashrc && \
    unlink /etc/localtime && \
    ln -s /usr/share/zoneinfo/Iran /etc/localtime && \
    sed --in-place 's/#Color/Color/' /etc/pacman.conf && \
    /cleanup.sh
COPY bash.bashrc DIR_COLORS /etc/
