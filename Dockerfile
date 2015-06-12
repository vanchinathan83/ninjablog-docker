FROM ubuntu:14.04
MAINTAINER Vanchinathan<ac.vanchinathan@gmail.com>

RUN sudo apt-get update
RUN sudo apt-get install -y python wget curl mongodb git

RUN mkdir -p /opt/data/mongodb
RUN mkdir -p /var/log
RUN touch /var/log/mongod.log
RUN cd /opt/data/mongodb

ADD scripts/start.sh /start.sh
RUN cd ~
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install -U setuptools

RUN sudo pip install Flask flask-pymongo passlib 
RUN git clone https://github.com/vanchinathan83/ninjablog.git

EXPOSE 5000
EXPOSE 27017

ENTRYPOINT ["/bin/bash", "/start.sh"]

