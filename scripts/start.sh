#!/bin/bash

mongod --logpath /var/log/mongod.log --dbpath=/data/mongodb &

python ninjablog/blog.py
