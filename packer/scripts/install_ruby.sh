#!/bin/bash -e
sudo apt update && \
sudo apt install -y  ruby-full ruby-bundler build-essential
sudo ruby -v
sudo bundler -v
