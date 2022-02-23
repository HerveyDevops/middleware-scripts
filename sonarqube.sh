


#!/bin/bash

#Author: Hervey Fagnon
#Date: Feb 22 2022

echo "Please wait while we are installing SonarQube for you"

sleep 2

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

echo "Downloading SonarQube latest versions"

sleep 2

cd /opt 

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

echo" Please continue waiting ..."

sleep 2

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

echo "Installation completed for SonarQube"

