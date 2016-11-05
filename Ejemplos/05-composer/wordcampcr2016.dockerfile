# Esto es un comentario.

# Utilizamos una imagen existente. Estas se encuentran en https://hub.docker.com/_/wordpress/
# Esta imagen requiere parámetros especificos para funcionar, por lo que leer la documentación es importante.
FROM php:7.0-apache

# MAINTAINER indica quien es el autor del archivo docker.
MAINTAINER Alejandro Madrigal Leiva

# Esta parte require un poco de experiencia instalando librerías desde línea de comandos. Es solo cuestión de práctica.

# Instala librerías del sistema.
RUN \
    apt-get update -y && \
    apt-get install -y unzip mysql-client php5-mysql

# Instala WP-CLI.
RUN \
    cd /tmp && \
    curl -OL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Instala composer
RUN \
    cd /tmp && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer

# Instala las extensiones de mysql.
RUN \
    docker-php-ext-install mysqli pdo pdo_mysql

# Crea la carpeta de builds.
RUN \
    mkdir -p /opt/site-build