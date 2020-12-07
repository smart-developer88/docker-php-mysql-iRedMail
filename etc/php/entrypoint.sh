#!/bin/sh
 
echo ' START PHP POST INSTALL SCRIPTS'
 
echo 'setting write access for www-data'
setfacl -dR -m u:www-data:rwX -m u:docker:rwX var
setfacl -R -m u:www-data:rwX -m u:docker:rwX var
 
echo ' END PHP POST INSTALL SCRIPTS'
docker-php-entrypoint $@
