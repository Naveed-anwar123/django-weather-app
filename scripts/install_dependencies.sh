#!/bin/bash
cd /home/ec2-user/django-weather-app

# Create virtual environment if not already created
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt