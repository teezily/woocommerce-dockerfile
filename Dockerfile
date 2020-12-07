FROM wordpress:5.5.3-php7.2-apache

ENV WOOCOMMERCE_VERSION 4.7.1
ENV WOOCOMMERCE_UPSTREAM_VERSION 3.6.5

RUN apt-get -y update \
    && apt-get -y install unzip wget \
    && wget https://downloads.wordpress.org/plugin/woocommerce.${WOOCOMMERCE_VERSION}.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip

EXPOSE 80
