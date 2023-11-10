#!/bin/bash

# Update and install Docker
sudo yum update
sudo yum install -y docker
sudo usermod -a -G docker ec2-user
sudo service docker start
sudo chkconfig docker on
docker run -d -p 4444:4444 -p 7900:7900 selenium/standalone-chrome:latest