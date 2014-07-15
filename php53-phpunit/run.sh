#!/bin/bash

CONTAINER_DB_NAME="mysqldb1"
COMPOSER_GLOBAL_CONTAINER_DIR="/home/worker/.composer"
COMPOSER_GLOBAL_HOST_DIR=$(readlink -f ./.composer)

docker run -t -i --link $CONTAINER_DB_NAME:$CONTAINER_DB_NAME \
	-v $COMPOSER_GLOBAL_CONTAINER_DIR:$COMPOSER_GLOBAL_HOST_DIR \
	-v /home/vit/local/$1:/opt/$2:rw swvitaliy/php53-phpunit