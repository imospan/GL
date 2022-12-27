#!/bin/bash

#installing Apache httpd server
sudo yum install httpd -y

#starting httpd service
sudo systemctl start httpd

#configure Apache to run on startup
sudo systemctl enable httpd

#enabling permissions to create and edit the HTML file
sudo chown -R $USER:$USER /var/www

#installing SQL and PHP
sudo yum install mariadb-server -y
sudo yum install php libapache2-mod-php php-mysql -y

#creating HTML
echo "Hello GlobalLogic! Homework_4 by Ivan Mospan via GCP on $(hostname)" > /var/www/html/index.html

sudo systemctl restart httpd

echo "LAMP script done successfully"