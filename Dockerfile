FROM tutum/apache-php

MAINTAINER Alejandro Baez


RUN apt-get update && apt-get install -yq git

RUN rm /app -rf
RUN git clone https://github.com/Flyspray/flyspray.git /app
RUN touch /app/flyspray.conf.php

WORKDIR /app

RUN composer self-update
RUN composer install

RUN chown www-data:www-data /app -R

VOLUME ["/app/attachments" "/app/cache", "/app/setup"]

USER www-data
CMD["php", "-S 0.0.0.0:80", "-t /app"]
