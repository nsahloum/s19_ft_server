FROM debian:buster

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install nginx -y \
&& apt-get install mariadb-server mariadb-client -y \
&& apt-get install php -y \
&& apt-get install wget -y

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz

COPY src/ /var/www/html