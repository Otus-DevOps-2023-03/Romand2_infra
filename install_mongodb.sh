#!/bin/bash
#Install MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt install apt-transport-https ca-certificates
sudo apt update
sudo apt install -y mongodb
sudo systemctl enable mongod
sudo systemctl start mongod
