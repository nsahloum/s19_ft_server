FROM debian:buster

COPY srcs/nginx.conf ./
COPY srcs/init.sh ./
ADD srcs/wordpress var/www/mysite
CMD bash init.sh && tail -f /dev/null
