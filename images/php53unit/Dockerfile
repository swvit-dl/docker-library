FROM ubuntu:12.04

# RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y curl php5 mysql-client php5-mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Setup worker user
RUN useradd -m -p secret worker  
RUN chsh -s /bin/bash worker  
RUN su - worker -c "touch ~/.bash_profile"

ADD startup.sh /startup.sh
RUN chmod 755 /startup.sh

# Start the shell as the worker user
#
# Usage: docker run -t -i $IMAGE
CMD ["/startup.sh"]
