#!/bin/bash
set -ex; \
	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-5.4.1.tar.gz"; \
	echo "9800c231828eb5cd76ba0b8aa6c1a74dfca2daff *wordpress.tar.gz" | sha1sum -c -; \
	tar -xzf wordpress.tar.gz -C "$PWD"; \
	rm wordpress.tar.gz; \
	chown -R www-data:www-data "$PWD/wordpress"
