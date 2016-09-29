FROM shervinkh/archlinux:latest
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
ENV CLEANUP_SCRIPT "rm -r /usr/share/man/* && pacman -Scc --noconfirm"
RUN pacman -Syu --noconfirm && pacman -S bash-completion git gnu-netcat iproute net-tools pkgfile sudo vim wget --noconfirm && pacman -Scc --noconfirm && mv /etc/bash.bashrc /etc/bash.bashrc.bak && rm /etc/skel/.bashrc && pkgfile --update && unlink /etc/localtime && ln -s /usr/share/zoneinfo/Iran /etc/localtime && sed --in-place 's/#Color/Color/' /etc/pacman.conf && ${CLEANUP_SCRIPT}
COPY bash.bashrc DIR_COLORS /etc/
