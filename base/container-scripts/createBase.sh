#!/bin/bash

###################################################
# THIS SCRIPT IS EXECUTED WHEN THE IMAGE IS BUILT #
###################################################

NODE_VERSION="11.6.0";

export USER=root;

# Install Dependencies
######################
apt-get update;
apt-get -f install;
apt-get install -y ntp;
apt-get install -y wget;
apt-get install -y curl;
apt-get install -y git;
apt-get install -y vim;
apt-get install -y aptitude;
apt-get install -y nginx;
apt-get install -y psmisc; 
apt-get install -y cron;
apt-get install -y jq;
apt-get install -y sudo
apt-get install -y unzip

# Install Python
#apt-get install -y python3.6 # this should be default
#update-alternatives --install /usr/bin/python python /usr/bin/python3 10
#update-alternatives --config python
apt-get install -y python3-setuptools;
apt-get install -y python3-pyqt5;
apt-get install -y python3-pip;

#Install aws CLI tools
pip3 install awscli --ignore-installed six;

rm -rf /var/lib/apt/lists/*;

# Install Node
##############
cd /;
wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz
cd /usr/local;
tar --strip-components 1 -xzf /node-v$NODE_VERSION-linux-x64.tar.gz;
rm /node-v$NODE_VERSION-linux-x64.tar.gz;

# Install Yarn
##############
cd /;
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install -y yarn
apt-get install -y --no-install-recommends yarn

# Install global modules
########################
npm install -g npm@6.1.0;
npm install -g forever@v0.15.3;
npm install -g bunyan@1.8.5;
npm install -g n;
