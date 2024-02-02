#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update


echo "Installing default-java"
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Installing jenkins"
sudo apt-get -y install jenkins > /dev/null 2>&1
sudo service jenkins start

sleep 1m

echo "Installing Jenkins Plugins"
JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo $JENKINSPWD

IP_ADDRESS=$(ip -f inet addr show enp0s8 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
echo "IP de acceso a Jenkins: http://$IP_ADDRESS:8080"