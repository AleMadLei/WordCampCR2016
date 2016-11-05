# Esto es un comentario.

# Utilizamos una imagen existente. Estas se encuentran en https://hub.docker.com/_/wordpress/
# Esta imagen requiere parámetros especificos para funcionar, por lo que leer la documentación es importante.
FROM wordpress:latest

# MAINTAINER indica quien es el autor del archivo docker.
MAINTAINER Alejandro Madrigal Leiva

# Esta parte require un poco de experiencia instalando librerías desde línea de comandos. Es solo cuestión de práctica.

# Instala librerías del sistema.
RUN \
    apt-get update -y && \
    apt-get install -y unzip

# Instala WP-CLI.
RUN \
    cd /tmp && \
    curl -OL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
