FROM robertdcatx/mixfin
MAINTAINER Robert Donovan <admin@mixfin.com>

RUN apk add --update git && \
    rm -rf /var/cache/apk/*

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y git curl
RUN pip3 install --upgrade pip && \

# Install app
#RUN rm -rf /var/www/*
#ADD src /var/www

# Configure apache
#RUN a2enmod rewrite
#RUN chown -R www-data:www-data /var/www
#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]