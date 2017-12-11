#!/bin/bash

cd /home/ec2-user
sudo yum update -y
sudo curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -
sudo yum install git nodejs -y
cd /home/ec2-user
git clone https://github.com/cygni/cygni-competence-aws2-ec2album ec2-album
cd ec2-album
sed -i 's/examplebucket/ACTUALBUCKETNAME/g' index.js
npm install
sudo node index.js
