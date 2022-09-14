#!/bin/bash

apt update -y 
apt install curl -y

curl  https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
bash nodesource_setup.sh 
apt install nodejs -y
apt remove curl -y