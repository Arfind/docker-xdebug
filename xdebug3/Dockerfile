FROM php:7.4-apache
WORKDIR /var/www/html
ENV  LANG="en_US.UTF-8"
COPY ./run.sh /run.sh
COPY ./xdebug-3.1.5.tgz /xdebug-3.1.5.tgz
COPY ./src /var/www/html
RUN chmod +x /run.sh\
&&/run.sh
COPY ./ini /usr/local/etc/php/conf.d

EXPOSE 80