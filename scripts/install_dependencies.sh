#!/bin/bash
# Use linux 2023
cd /home/ec2-user/django-weather-app

# Ensure Python and pip are installed
#sudo amazon-linux-extras install nginx1 python3.8 -y
#sudo yum install -y python3.8 python3-pip

sudo dnf install python3 python3-pip nginx git -y
python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip install -r requirements.txt