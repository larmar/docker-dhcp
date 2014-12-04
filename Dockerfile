FROM larmar/ubuntu:latest
MAINTAINER martin.wilderoth@gmail.com

RUN apt-get update \
 && echo echo "deb http://deb.theforeman.org/ trusty 1.7" > /etc/apt/sources.list.d/foreman.list \
 && apt-get install -y foreman-proxy \
 && apt-get install -y isc-dhcp-server \
 && rm -rf /var/lib/apt/lists/* 

