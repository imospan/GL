#!/bin/bash

#installing Apache httpd server
sudo yum install httpd -y

#starting httpd service
sudo systemctl start httpd

#configure Apache to run on startup
sudo systemctl enable httpd

#enabling permissions to create and edit the HTML file
sudo chown -R $USER:$USER /var/www

#creating HTML
echo "Hello GlobalLogic! Homework_2 by Ivan Mospan" > /var/www/html/index.html
