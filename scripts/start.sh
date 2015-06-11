#!/bin/bash

mongod --dbpath=/opt/data/mongodb & sleep 10 
python ninjablog/blog.py

