#!/bin/bash

docker exec -ti $1 wp core config --dbname=wordcampcr2016 --dbuser=root --dbpass=root --dbhost="wordcampcr_2016_db:3306" --path=/var/www/html --allow-root
docker exec -ti $1 wp core install --url=local.worcampcr2016.com --title="WordCamp Costa Rica 2016" --admin_user=admin --admin_password=123 --admin_email=me@alemadlei.tech --path=/var/www/html --skip-email --allow-root
docker exec -ti $1 wp plugin install jetpack --path=/var/www/html --allow-root
docker exec -ti $1 wp plugin activate jetpack wordcampcr2016_plugin --path=/var/www/html --allow-root
docker exec -ti $1 wp theme install _tk --allow-root --path=/var/www/html
docker exec -ti $1 wp theme activate wordcampcr2016_theme --path=/var/www/html --allow-root


