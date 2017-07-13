#!/bin/bash

sudo yum update -y
sudo curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -
sudo yum install git nodejs -y
git clone https://github.com/robu/ec2-album.git
cd ec2-album
sed -i 's/examplebucket/ACTUALBUCKETNAME/g' index.js
npm install
sudo node index.js
