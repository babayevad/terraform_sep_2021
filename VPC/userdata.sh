#!/bin/bash
sudo yum install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo “Instance is running successfully” > /var/www/html/index.htm