FROM ubuntu:bionic

RUN apt update 

COPY /app /app

WORKDIR /app

RUN apt install apache2

RUN mv -r /app/assets /var/www/html/
RUN mv -r /app/css /var/www/html/
RUN mv -r /app/js /var/www/html/
RUN mv -r /app/index.html /var/www/html/index.html
 
EXPOSE 80/tcp
