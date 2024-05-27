#!/bin/bash

# Variables
BACKUP_DIR=/home/knoldus/jenkins_backup
DATE=$(date +%Y%m%d)
BACKUP_FILE="jenkins_backup_${DATE}.zip"
JENKINS_HOME=/var/lib/jenkins
JENKINS_WAR_PATH=/usr/share/jenkins/jenkins.war

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Stop Jenkins
sudo systemctl stop jenkins

# Create backup
sudo zip -r $BACKUP_DIR/$BACKUP_FILE $JENKINS_HOME

# Download the latest Jenkins WAR file
wget https://get.jenkins.io/war-stable/latest/jenkins.war -O /tmp/jenkins.war

# Replace the old WAR file with the new one
sudo mv /tmp/jenkins.war $JENKINS_WAR_PATH

# Start Jenkins
sudo systemctl start jenkins

echo "Backup created: $BACKUP_DIR/$BACKUP_FILE"
echo "Jenkins has been upgraded successfully."
