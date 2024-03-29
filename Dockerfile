# Copied from https://github.com/AppImageCrafters/tests-env/blob/master/ubuntu-bionic.docker

FROM ubuntu:focal

# https://techoverflow.net/2019/05/18/how-to-fix-configuring-tzdata-interactive-input-when-building-docker-images/
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update; \
    apt-get install -y libdrm2 libexpat1 libfontconfig1 libfreetype6 libgl1 libpciaccess0 libx11-6 libx11-xcb1 libxau6 libxcb1 ca-certificates openssl \
	libxcb-dri2-0 libxcb-dri3-0 libxcb-present0 libxcb-randr0 libxcb-render0 libxcb-shape0 xkb-data libxkbcommon-x11-0 xorg \
	libxcb-shm0 libxcb-sync1 libxcb-util1 libxcb-xfixes0 libxcb-xkb1 libxcursor1 libxdamage1 libxdmcp6 libxfixes3 libxrender1 libxshmfence1 libxxf86vm1; \
    apt-get autoclean
