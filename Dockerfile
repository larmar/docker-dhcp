FROM larmar/ubuntu:latest
MAINTAINER martin.wilderoth@gmail.com

RUN echo 'deb http://deb.theforeman.org/ trusty 1.7' > /etc/apt/sources.list.d/foreman.list \
 && wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add - \
 && apt-get update \
 && apt-get install -y foreman-proxy \
 && apt-get install -y isc-dhcp-server \
 && rm -rf /var/lib/apt/lists/* 

