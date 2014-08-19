FROM maxexcloo/nginx-php

MAINTAINER Alejandro Baez 

RUN apt-get install -yq git curl unzip
RUN rm /data/http -rf 
#RUN mkdir /app
RUN git clone https://github.com/Flyspray/flyspray.git /data/http
#RUN curl -o fly.zip http://flyspray.org/flyspray-0.9.9.7.zip; unzip -d /app

