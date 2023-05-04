#!/bin/bash
#Update packages && install git
sudo apt update
sudo apt install -y git
#Clone project
git clone -b monolith https://github.com/express42/reddit.git
#Into dir install requirements.
cd reddit && bundle install
#Start server
puma -d
