
# shadowsocks-go
#
# VERSION 0.0.1

FROM busybox

MAINTAINER Kaijun Chen <Kaijun.cn@gmail.com>

ENV version 1.1.5

ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${version}/shadowsocks-local-linux64-${version}.gz /ss.gz

RUN gunzip -c ss.gz > /ss
RUN chmod 777 /ss

# Configure container to run as an executable
ENTRYPOINT ["/ss"]