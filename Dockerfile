FROM alpine:latest

MAINTAINER github.com/dotsoltecti
LABEL Description="kea-dhcp wrapped in an alpine Docker container"

RUN apk --no-cache add kea bash tzdata

COPY entrypoint.sh /etc/kea/

EXPOSE 67 68

CMD ["/bin/bash", "/etc/kea/entrypoint.sh"]
