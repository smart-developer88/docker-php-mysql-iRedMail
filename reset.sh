#!/bin/sh

# docker-compose down

rm -f -r ./certbot
mkdir ./certbot

rm -f -r ./data
mkdir ./data

rm -f -r ./iredmail
mkdir ./iredmail
mkdir ./iredmail/log
cat '' >> ./iredmail/log/mail.log
cat '' >> ./iredmail/log/maillog

rm -f -r ./etc/log/nginx

