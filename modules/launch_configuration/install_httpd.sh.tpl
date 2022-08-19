#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
myip=`hostname -I`
sudo aws s3 cp s3://acs730-project-${env}/${env}-images/${env}-environment.png  /var/www/html/image
echo "<h1>Welcome to ${prefix} ${app}! private IP is $myip in ${env} environment </h1> <h2> Name: ${owner}       StudentID: ${studentId} </h2><br>Built by Terraform! </br>"  >  /var/www/html/index.html
echo " <img src='image'/>" >>  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd