FROM tutum/apache-php

MAINTAINER Alejandro Baez 


RUN apt-get update && apt-get install -yq git 

RUN rm /app -rf 
RUN git clone https://github.com/Flyspray/flyspray.git /app
RUN cd /app; composer install 

