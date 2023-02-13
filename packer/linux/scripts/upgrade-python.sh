#!/usr/bin/env bash

sudo yum update -y
sudo yum groupinstall "Development Tools" -y
sudo yum erase openssl-devel -y
sudo yum install openssl11 openssl11-devel libffi-devel bzip2-devel wget -y
sudo wget https://www.python.org/ftp/python/3.10.10/Python-3.10.10.tgz
sudo tar xzf Python-3.10.10.tgz && cd Python-3.10.10
sudo ./configure --enable-optimizations
nproc && make -j $(nproc)
sudo make altinstall
python3.10 --version
