#!/bin/bash
set -e
APP_DIR=${1:-$HOME}
sudo apt-get install -y git
sudo git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
sudo rm /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma

