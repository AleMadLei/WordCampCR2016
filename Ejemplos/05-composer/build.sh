#!/bin/bash

docker exec -ti $1 composer install --working-dir=/opt/site-build
docker exec -ti $1 bash /opt/site-build/mv.sh

