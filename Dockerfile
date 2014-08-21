FROM tutum/apache-php

MAINTAINER Alejandro Baez 


RUN apt-get update && apt-get install -yq git curl unzip postgresql
RUN rm /app -rf 
RUN git clone https://github.com/Flyspray/flyspray.git /app
RUN rm /var/www/html && ln -s /app /var/www/html
RUN cd /app; composer install 
#RUN curl -o fly.zip http://flyspray.org/flyspray-0.9.9.7.zip; unzip -d /app

