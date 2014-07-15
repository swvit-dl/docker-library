#!/bin/bash

# Install phpunit globally
su -c 'composer global require "phpunit/phpunit=4.1.*" && PATH=/home/worker/.composer/vendor/bin:$PATH' - worker

su - worker
