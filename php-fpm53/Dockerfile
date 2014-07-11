#base image name
FROM ubuntu:12.04
RUN echo  "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
#установка необходимых пакетов
RUN apt-get install -y php5 php5-fpm php5-mysql
#заставим php-fpm слушать не только localhost
RUN sed -i "s/listen = 127.0.0.1:9000/listen = 9000/g" /etc/php5/fpm/pool.d/www.conf