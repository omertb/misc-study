FROM ubuntu:16.04

RUN apt-get update && apt-get install --no-install-recommends -y apache2 libapache2-mod-php

COPY phpinfo.php /var/www/html/

EXPOSE 80/tcp 443/tcp
CMD ["apachectl", "-D", "FOREGROUND"]