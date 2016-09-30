# shadowsocks-go-docker 

Current version: 1.1.5 on [DockerHub](https://hub.docker.com/r/kaijun/shadowsocks-go/)


A Dockerfile for building image of [shadowsocks-go](https://github.com/shadowsocks/shadowsocks-go) with its [binary(compiled) files](https://github.com/shadowsocks/shadowsocks-go/releases). 

The image is based on  [Busybox](https://hub.docker.com/_/busybox/) which is extreamly tiny, and using binary files, so the whole image only takes **12.03 MB**. 

This project is initially inspired by [docker-shadowsocks](https://github.com/oddrationale/docker-shadowsocks), and my objective was to achieve a more bare-bone and cleaner image comparing with `docker-shadowsocks`. 


Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable. 

    docker run --restart=always -d -p 443:443 kaijun/shadowsocks-go -p 443 -k $SSPASSWORD -m aes-128-cfb 

You can configure the service to run on a port of your choice. Just make sure the port number given to Docker is the same as the one given to shadowsocks. Also, it is  highly recommended that you store the shadowsocks password in an environment variable as shown above. This way the password will not show in plain text when you run `docker ps`.

For more command line options, refer to the [shadowsocks-go documentation](https://github.com/shadowsocks/shadowsocks-go)

