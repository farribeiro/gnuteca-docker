FROM php:7.0-apache

MAINTAINER Fábio Rodrigues Ribeiro <farribeiro@gmail.com.br>

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y --no-install-recommends \
wget \
ca-certificates \
libyaz4-dev \
&& docker-php-ext-install \
gd \
pdo \
pdo_mysql \
pdo_pgsql \
pdo_sqlite \
ldap \

RUN wget https://softwarepublico.gov.br/social/articles/0000/5869/gnuteca_3.3.8.deb | apt install

RUN apt-get remove -y \
wget \
ca-certificates
