#!/bin/bash
cd /home/ec2-user/django-weather-app

# Ensure Python and pip are installed
sudo amazon-linux-extras install python3.8 -y
sudo yum install -y python3 python3-pip

# Create virtual environment inside the app folder
python3 -m venv venv

# Activate it
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt