FROM php:7.2-apache

MAINTAINER Fábio Rodrigues Ribeiro <farribeiro@gmail.com.br>

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update \
&& apt-get upgrade -y

RUN apt-get install -y --no-install-recommends \
wget \
ca-certificates

RUN wget https://softwarepublico.gov.br/social/articles/0000/5869/gnuteca_3.3.8.deb | apt install

