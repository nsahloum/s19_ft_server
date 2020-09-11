FROM debian:buster

COPY srcs/index.php ./
COPY srcs/nginx.conf ./
COPY srcs/init.sh ./
CMD bash init.sh && tail -f /dev/null
