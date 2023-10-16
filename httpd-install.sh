#!/bin/bash

sudo su
# Update package lists
yum update -y

# Install Apache
yum install httpd -y

# Install PHP
yum install php php-mysql -y

systemctl enable httpd
# Start and enable Apache
systemctl start httpd


# Restart Apache
sudo systemctl restart httpd

#Install Git
sudo yum install git -y

#clone the ttms repository from GitHub
git clone https://github.com/SUBBARAMIREDDY-K/ttms.git


#move the files to the /var/www/html
sudo mv ttms/* /var/www/html


