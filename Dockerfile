FROM tutum/apache-php

MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

RUN apt-get update && apt-get install -yq git postgresql

RUN rm /app -rf
RUN git clone https://github.com/Flyspray/flyspray.git /app

# Link configurations
RUN touch /app/flyspray.conf.php
RUN ln -s /app/flyspray.conf.php /app/cache/

WORKDIR /app

RUN composer self-update
RUN composer install

RUN chown www-data:www-data /app -R

VOLUME /app/attachments
VOLUME /app/cache
VOLUME /app/setup

CMD ["/run.sh"]
