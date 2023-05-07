# kea-dhcp
kea-dhcp wrapped in an alpine Docker container

## How to run
To run the container, you can use the following docker-compose file.
Please note that the container looks for the config-file at ```/etc/kea/kea-dhcp.conf``` so include it in the kea dir you are mounting as a volume.

```
version: '3.3'
services:
    kea-dhcp:
        image: ghcr.io/dotsoltecti/kea-dhcp      
        network_mode: host
        volumes:
            - '/path/to/your/kea/dir/:/etc/kea/'
        ports:
            - '67:67'
            - '68:68'
        container_name: kea-dhcp
```
