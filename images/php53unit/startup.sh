#!/bin/bash

TMP_ENV_FILE="/tmp/.root_env"
ENV_FILE="/home/worker/.root_env"

env | grep MYSQLDB1 > $TMP_ENV_FILE
sed -e 's/^/export /' $TMP_ENV_FILE > $ENV_FILE
chown worker:worker $ENV_FILE 
echo "source $ENV_FILE" >> /home/worker/.bash_profile

# Install phpunit globally
su -c 'composer global require "phpunit/phpunit=4.1.*"' - worker
su -c 'PATH=/home/worker/.composer/vendor/bin:$PATH' - worker

su - worker
