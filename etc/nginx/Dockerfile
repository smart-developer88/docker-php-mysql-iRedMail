FROM debian:jessie
  
# RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
  nginx
RUN rm /etc/nginx/sites-enabled/default
RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf
RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
