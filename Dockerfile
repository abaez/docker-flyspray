FROM tutum/apache-php

MAINTAINER Alejandro Baez 

RUN apt-get install -yq git curl unzip
RUN rm /app -rf 
#RUN mkdir /app
RUN git clone https://github.com/Flyspray/flyspray.git /app
#RUN curl -o fly.zip http://flyspray.org/flyspray-0.9.9.7.zip; unzip -d /app
ONBUILD RUN chown www-data:www-data /app -R

