FROM ubuntu:16.04
RUN apt-get update && apt-get install -y nginx-full

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
 && ln -sf /dev/stderr /var/log/nginx/error.log

ADD rootfs /

STOPSIGNAL SIGTERM

EXPOSE 81

CMD [ "nginx", "-g", "daemon off;" ]
