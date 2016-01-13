FROM wordpress:latest

ENV WOOCOMMERCE_VERSION 2.4.13
ENV WOOCOMMERCE_UPSTREAM_VERSION 2.4.13

RUN apt-get -y update \
    && apt-get -y install unzip wget \
    && wget https://downloads.wordpress.org/plugin/woocommerce.${WOOCOMMERCE_VERSION}.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip

EXPOSE 80
