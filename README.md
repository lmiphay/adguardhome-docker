# adguardhome-docker

Adguardhome in a container.

## Configuration

Variables in `/etc/adguardhome.conf` (on the host server) allow these settings to be customised:

1. adguardhome version
2. directories to mount from the host
3. timezone setting
4. ports - different DNS and DHCP options - see https://hub.docker.com/r/adguard/adguardhome

The AdGuard Home service is found on: http://127.0.0.1:3000/

## Quickstart

```
$ adguardhome-docker settings
...
$ adguardhome-docker pull
$ adguardhome-docker create
...
$ adguardhome-docker start
$ adguardhome-docker logs
...
$ adguardhome-docker stop
...
$ adguardhome-docker delete
```

## Examine AdGuard Home Logs

The first time AdGuard Home starts, logs similar to this will be seen:

```
$ adguardhome-docker logs
2021/10/08 16:25:55.806120 [info] AdGuard Home, version v0.106.3
2021/10/08 16:25:55.806232 [info] This is the first time AdGuard Home is launched
2021/10/08 16:25:55.806241 [info] Checking if AdGuard Home has necessary permissions
2021/10/08 16:25:55.806404 [info] AdGuard Home can bind to port 53
2021/10/08 16:25:55.807264 [info] Initializing auth module: /opt/adguardhome/work/data/sessions.db
2021/10/08 16:25:55.810938 [info] auth: initialized.  users:0  sessions:0
2021/10/08 16:25:55.810947 [info] Initialize web module
2021/10/08 16:25:55.810967 [info] This is the first launch of AdGuard Home, redirecting everything to /install.html 
2021/10/08 16:25:55.811008 [info] AdGuard Home is available on the following addresses:
2021/10/08 16:25:55.811123 [info] Go to http://127.0.0.1:3000
2021/10/08 16:25:55.811128 [info] Go to http://172.17.0.3:3000
...
```

## OpenRC

To have the container start automatically:

```
rc-config add adguardhome
```

## References

1. https://wiki.gentoo.org/wiki/Docker
2. https://hub.docker.com/r/adguard/adguardhome
3. https://github.com/AdguardTeam/AdGuardHome/wiki/Docker
4. https://github.com/AdguardTeam/AdGuardHome
5. https://www.ibm.com/docs/en/tpmfod/7.1.1.14?topic=configuration-dhcpdconf-example