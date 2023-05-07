# kea-dhcp
kea-dhcp wrapped in an alpine Docker container

## How to run
To run the container, you can use the following docker-compose file

```
version: '3.3'
services:
    kea-dhcp:
        image: ghcr.io/dotsoltecti/kea-dhcp      
        network_mode: host
        volumes:
            - '/path/to/your/kea-dhcp.conf:/etc/kea-dhcp.conf'
        ports:
            - '67:67'
            - '68:68'
        container_name: kea-dhcp
```
