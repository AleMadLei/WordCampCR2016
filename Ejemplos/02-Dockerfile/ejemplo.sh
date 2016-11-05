#!/bin/bash

# La imagen de wordpress requiere que haya una instancia de MySQL funcionando. Entonces la generamos acá.
docker run \
    --name wordcamp_cr_2016_db \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_DATABASE=wordcampcr2016 \
    -d mysql:5.7

# Ahora ejecutamos la instancia de Wordpress
docker run \
    --name wordcamp_cr_2016_web \
    --link wordcamp_cr_2016_db \
    -p 8080:80 \
    -d alemadlei_tech:WordCampCR2016_Basico

