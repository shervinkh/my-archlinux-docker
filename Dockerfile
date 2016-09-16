FROM shervinkh/archlinux:latest
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
RUN pacman -S bash-completion git gnu-netcat iproute man-db man-pages nano net-tools pkgfile sudo systemd vim wget --noconfirm && mv /etc/bash.bashrc /etc/bash.bashrc.bak && rm /etc/skel/.bashrc && pkgfile --update && unlink /etc/localtime && ln -s /usr/share/zoneinfo/Iran /etc/localtime && ln -s /usr/lib/systemd/systemd /usr/sbin/init && sed --in-place 's/#Color/Color/' /etc/pacman.conf && rm /usr/lib/systemd/system/*.target.wants*/*
COPY bash.bashrc DIR_COLORS /etc/
VOLUME ["/sys/fs/cgroup"]
ENTRYPOINT ["/usr/sbin/init"] 
