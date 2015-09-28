#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu vivid/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo aptitude update -q

# install nginx, php5-fpm
sudo aptitude install -q -y -f nginx php5-fpm

# install curl
sudo apt-get install curl

# install node
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install nodejs

# install nvm
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash
nvm install stable

# install mean stack
sudo npm install -g mean-cli

# mean-cli plugins and packages
mean install mean-admin
mean install upload
mean install gmap
mean install socket
mean install video
mean install comments
