FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y ngnix 
ADD index.html /usr/share/ngnix/html/index.html

ENTRYPOINT ['/usr/sbin/nginx", "-g", "daemon off;"] 

EXPOSE 80