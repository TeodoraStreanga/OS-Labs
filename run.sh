#!/bin/bash
DIR="/home/ubuntu/Lab6"
if [ -d "$DIR" ]; then
	sudo chmode +x /var/www/html
	sudo mv "$DIR"/Web/index.html /var/www/html
	sudo mv -v "$DIR"/Web/* /var/www/html
fi
