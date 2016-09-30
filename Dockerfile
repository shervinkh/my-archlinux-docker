FROM shervinkh/archlinux:latest
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
COPY update.sh cleanup.sh /
RUN pacman -Sy pkgfile --noconfirm && \
    /update.sh && \
    pacman -S bash-completion git gnu-netcat iproute net-tools sudo vim wget supervisor cronie rsyslog --noconfirm && \
    mv /etc/bash.bashrc /etc/bash.bashrc.bak && \
    rm /etc/skel/.bashrc && \
    unlink /etc/localtime && \
    ln -s /usr/share/zoneinfo/Iran /etc/localtime && \
    sed --in-place 's/#Color/Color/' /etc/pacman.conf && \
    mkdir -p /var/spool/rsyslog && \
    /cleanup.sh
COPY configs /etc/
ENTRYPOINT ["/usr/bin/supervisord"]
