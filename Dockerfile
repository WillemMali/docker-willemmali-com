FROM debian:8
MAINTAINER WillemMali

# update packages
RUN sudo apt-get update
RUN sudo apt-get upgrade -y

# install git
RUN sudo apt-get install -y git php

# download website soruce
RUN git clone https://github.com/WillemMali/site-willemmali-com.git /var/wwwroot

# expose server port
EXPOSE 8080 8080

# run PHP server
CMD php -S 127.0.0.1:8080
