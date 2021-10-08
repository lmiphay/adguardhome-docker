#!/sbin/openrc-run
# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

description="Adguard Home in a container"

depend() {
    need net docker
}

start() {
    ebegin "Starting Adguard Home container"
    /usr/bin/adguardhome-docker start
    eend $?
}

stop() {
    ebegin "Stopping Adguard Home container"
    /usr/bin/adguardhome-docker stop
    eend $?
}
