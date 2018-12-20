FROM php:7.0-apache

MAINTAINER Fábio Rodrigues Ribeiro <farribeiro@gmail.com.br>

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y --no-install-recommends \
wget \
ca-certificates \
libyaz4-dev \
libpng-dev \
libpq-dev \
sqlite3 \
&& docker-php-ext-install \
gd \
pdo \
pdo_mysql \
pdo_pgsql \
pdo_sqlite \
ldap \
&& wget https://softwarepublico.gov.br/social/articles/0000/5869/gnuteca_3.3.8.deb -O /gnuteca_3.deb \
&& dpkg -i --force-depends /gnuteca_3.deb

RUN apt-get remove -y \
wget \
ca-certificates
