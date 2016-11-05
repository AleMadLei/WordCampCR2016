#!/bin/bash

# Limpia todas las imágenes de docker.
docker rm -f $(docker ps -a -q)