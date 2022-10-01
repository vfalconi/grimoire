#!/usr/bin/env bash

curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
FILEHASH=`sha384sum /tmp/composer-setup.php`
if [ HASH == FILEHASH ]; then
	echo HASH
	echo FILEHASH
	echo 'checksums match'
	php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
fi
