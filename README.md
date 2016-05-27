# shadowsocks-go-docker

A Dockerfile for creating [shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go). The image is based on  [Busybox](https://hub.docker.com/_/busybox/) which is extreamly tiny. It also uses  the [binary(compiled) version](https://github.com/shadowsocks/shadowsocks-go/releases) simply, so currently the whole image only takes **12.03 MB**. 

This project is inspired by [docker-shadowsocks](https://github.com/oddrationale/docker-shadowsocks), and my objective was to achieve a more bare-bone and cleaner image comparing docker-shadowsocks. 


Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable. 

    docker run -d -p 443:443 kaijun/shadowsocks-go -p 443 -k $SSPASSWORD -m aes-128-cfb 

You can configure the service to run on a port of your choice. Just make sure the port number given to Docker is the same as the one given to shadowsocks. Also, it is  highly recommended that you store the shadowsocks password in an environment variable as shown above. This way the password will not show in plain text when you run `docker ps`.

For more command line options, refer to the [shadowsocks-go documentation](https://github.com/shadowsocks/shadowsocks-go)

