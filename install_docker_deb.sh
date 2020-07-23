#!/bin/bash

PKG="docker"

if [[ $(sudo dpkg -s $PKG 2>/dev/null | grep "Status" | awk '{print $4}') == "installed" ]]; then
	echo "installed"
else
	echo "installing docker"
	sudo apt-get install -y docker
fi

if [ ! -e "/bin/docker-compose" ]; then
        echo "installing docker-compose"
        sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
        sudo chmod +x /bin/docker-compose
fi
