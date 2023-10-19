# Setups up Rails for deployment in Ubuntu Server using rvm

#!/bin/bash

# Version of Ruby to install
RUBY_VERSION=3.2.2

# Update the system
sudo apt update -y && sudo apt upgrade -y

# Install dependencies
sudo apt install gnupg2 build-essential git libpq-dev libcurl4-gnutls-dev -y

# Keyserver for rvm
gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Install rvm
curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install $RUBY_VERSION --default

# For rails
gem install bundler
gem install rails

# For nginx
gem install passenger

# Requires manual intervention
rvmsudo passenger-install-nginx-module
