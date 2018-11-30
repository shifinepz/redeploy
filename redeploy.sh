#!/usr/bin/bash

sudo sed -i 's/port="8080"/port="8080"/' /etc/tomcat/server.xml
sudo systemctl restart tomcat
sudo systemctl status tomcat.service
cp /opt/Devops/java/cacheImplement-2.4-SNAPSHOT.war /var/lib/tomcat/webapps/
sudo systemctl restart tomcat
sudo systemctl status tomcat.service
