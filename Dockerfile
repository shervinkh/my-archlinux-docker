FROM shervinkh/archlinux:2016.09.12
MAINTAINER "Shervin Khastoo" <shervinkh145@gmail.com>
RUN pacman -S bash-completion git gnu-netcat iproute nano net-tools pkgfile sudo systemd vim wget --noconfirm && mv /etc/bash.bashrc /etc/bash.bashrc.bak && rm /etc/skel/.bashrc && pkgfile --update && unlink /etc/localtime && ln -s /usr/share/zoneinfo/Iran /etc/localtime && ln -s /usr/lib/systemd/systemd /usr/sbin/init && sed 's/#Color/Color/' /etc/pacman.conf > /etc/pacman.conf
COPY bash.bashrc DIR_COLORS /etc/
VOLUME ["/sys/fs/cgroup"]
ENTRYPOINT ["/usr/sbin/init"] 
