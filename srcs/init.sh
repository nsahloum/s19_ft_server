apt-get update && apt-get install -y
apt-get install -y wget
apt-get install -y curl
apt-get install -y nginx
apt-get install -y php-fpm php-mysql
apt-get install -y mariadb-server
apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
chown -R www-data:www-data /var/www/html
service nginx start
cp nginx.conf /etc/nginx/sites-available/nginx.conf
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
mkdir /var/www/php
cp index.php /var/www/php
service php7.3-fpm start
service nginx restart