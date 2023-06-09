FROM alpine:latest

MAINTAINER github.com/dotsoltecti
LABEL Description="kea-dhcp wrapped in an alpine Docker container"

RUN apk --no-cache add kea kea-hook-ha kea-hook-lease-cmds bash tzdata

#Build from source
#RUN apk --no-cache add bash git autoconf build-base automake libtool tzdata
#RUN apk --no-cache add openssl openssl-dev log4cplus-dev boost-dev
#WORKDIR /opt
#RUN git clone https://gitlab.isc.org/isc-projects/kea.git
#WORKDIR /opt/kea
#RUN autoreconf --install
#RUN ./configure
#RUN make
#RUN make install

COPY entrypoint.sh /etc/

EXPOSE 67 68

CMD ["/bin/bash", "/etc/entrypoint.sh"]
