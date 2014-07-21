FROM ubuntu:precise
MAINTAINER James Turnbull "james@lovedthanlost.net"

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -y update

RUN apt-get -y install ruby1.9.3 rubygems
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install puppet librarian-puppet
