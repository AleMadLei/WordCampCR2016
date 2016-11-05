#!/bin/bash

# Utiliza WP CLI para activar el plugin y el tema de ejemplos.
docker exec $1 wp plugin activate wordcampcr2016_plugin --allow-root
docker exec $1 wp theme install _tk --allow-root
docker exec $1 wp theme activate wordcampcr2016_theme --allow-root
