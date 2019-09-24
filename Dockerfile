FROM arm32v7/alpine:latest

# Building ARM images on DockerHub https://daehne.net/docker/dockerhub/github/2018/12/09/building-arm-images-on-docker-hub.html
ADD qemu-arm-static /usr/bin

# Install tor and privoxy
RUN apk --no-cache --no-progress upgrade
RUN apk --no-cache --no-progress add bash 
RUN apk --no-cache --no-progress add curl

EXPOSE 80

VOLUME ["/etc/", "/var/lib/"]
