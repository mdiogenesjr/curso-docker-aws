#!/bin/bash
# Use this for your user data (script without newlines)
# install httpd (Linux 2 version)
sudo su
yum update -y
yum install -y httpd
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

