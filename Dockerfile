FROM alpine:latest

MAINTAINER github.com/dotsoltecti
LABEL Description="kea-dhcp wrapped in an alpine Docker container"

RUN apk --no-cache add kea kea-hook-ha kea-hook-lease-cmds bash tzdata

COPY entrypoint.sh /etc/

EXPOSE 67 68

CMD ["/bin/bash", "/etc/entrypoint.sh"]
