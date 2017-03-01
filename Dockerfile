
# shadowsocks-go
#
# VERSION 0.0.1

FROM busybox

MAINTAINER Kaijun Chen <Kaijun.cn@gmail.com>

ENV version 1.2.1

ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${version}/shadowsocks-server.tar.gz /ss.tar.gz

RUN tar -zxvf /ss.tar.gz -O > /ss
RUN chmod 777 /ss

# Configure container to run as an executable
ENTRYPOINT ["/ss"]