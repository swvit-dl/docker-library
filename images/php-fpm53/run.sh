#!/bin/bash

sudo docker run -d -i -p 9010:9000 -v /var/www/:/var/www/:rw php-fpm53 \
		/bin/sh -c "service php5-fpm start && /bin/bash"