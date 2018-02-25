#!/bin/bash

apt-get install openssh-server -y
sed -i 's/Port 22/Port 53055/g' /etc/ssh/sshd_config
service sshd restart