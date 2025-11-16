#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo ufw allow 'Nginx Full'
echo "<h1>Welcome to Auto-Scaled Nginx Server</h1>" | sudo tee /var/www/html/index.html
