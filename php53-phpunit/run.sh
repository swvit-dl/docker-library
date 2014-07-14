#!/bin/bash

# # cd /opt/egen/XLib && composer install

sudo docker run -t -i -v /home/vit/local/$1:/opt/$2:rw swvitaliy/php53-phpunit