#!/bin/bash

sudo yum update -y
sudo curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -
sudo yum install nodejs -y
