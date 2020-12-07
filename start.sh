#!/bin/sh

rm -f ./etc/nginx/mail.conf
cp ./etc/nginx/mail-ssl.conf ./etc/nginx/mail.conf


docker-compose up --build -d
