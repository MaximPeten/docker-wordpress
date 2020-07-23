#!/bin/bash

PKG="docker"

if rpm -q $PKG 
then
	echo "installed"
else
	echo "installing docker"
	sudo yum install -y docker
fi

if [ ! -e "/bin/docker-compose" ]; then
        echo "installing docker-compose"
        sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
        sudo chmod +x /bin/docker-compose
fi
