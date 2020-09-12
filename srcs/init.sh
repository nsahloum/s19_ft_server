apt-get update && apt-get install -y
apt-get install -y wget
apt-get install -y curl
apt-get install -y nginx
apt-get install -y php-fpm php-mysql
apt-get install -y mariadb-server
apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
chown -R www-data:www-data /var/www/html
service nginx start
mv nginx.conf /etc/nginx/sites-available/nginx.conf
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
unlink /etc/nginx/sites-enabled/default
mkdir var/www/mysite
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
tar xvf phpMyAdmin-4.9.0.1-english.tar.gz
mkdir /var/www/mysite/phpmyadmin
cp -R phpMyAdmin-4.9.0.1-english/* /var/www/mysite/phpmyadmin/
mv start.sql /var/www/
service mysql start
mysql < /var/www/start.sql
service mysql restart
service php7.3-fpm start 
service nginx restart
