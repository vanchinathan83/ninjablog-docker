FROM ubuntu:14.04
MAINTAINER Vanchinathan<ac.vanchinathan@gmail.com>

RUN sudo apt-get update
RUN sudo apt-get install -y  python
RUN sudo apt-get install -y wget
RUN sudo apt-get install -y mongodb
RUN sudo apt-get install -y git

RUN mkdir /opt/data
RUN cd /opt/data

RUN cd ~
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install -U setuptools

RUN sudo pip install Flask flask-pymongo passlib 
RUN git clone https://github.com/vanchinathan83/ninjablog.git
