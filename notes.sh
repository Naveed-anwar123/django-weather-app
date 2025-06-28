# How to connect with docker daemon runnnig remotely  hbnjh nnnnnnnnnnn                                                            
sudo usermod -aG docker $USER # to avoid using sudo user every time
newgrp docker

sudo mkdir -p /etc/systemd/system/docker.service.d/
sudo nano /etc/systemd/system/docker.service.d/override.conf

[Service]
 ExecStart=
 ExecStart=/usr/bin/dockerd

sudo systemctl reload-daemon
systemctl restart docker.service

docker context create ec2-instance --driver remote --endpoint tcp:ec2-public-ip:2375 # add a security group to allow inbound port 2375
docker context use ec2-instance


