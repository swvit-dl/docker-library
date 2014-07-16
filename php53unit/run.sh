#!/bin/bash

CONTAINER_DB_NAME="mysqldb1"

docker run -t -i --link $CONTAINER_DB_NAME:$CONTAINER_DB_NAME \
	-v /home/vit/local/$1:/opt/$2:rw swvitaliy/php53-phpunit