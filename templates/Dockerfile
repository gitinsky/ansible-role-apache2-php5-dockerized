FROM gitinsky/baseimage:0.1.1
MAINTAINER Git In Sky <support@gitinsky.com>
EXPOSE 80

RUN apt-get update && apt-get -y install libapache2-mod-php5 && apt-get -y install libapache2-mod-rpaf && apt-get -y install php5-mysql && apt-get -y install php5-gd
VOLUME /var/www/html
ADD apache2.rb /etc/eye/apache2.rb
ADD mpm_prefork.conf /etc/apache2/mods-available/mpm_prefork.conf
