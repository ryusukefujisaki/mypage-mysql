FROM mysql:8.0.32-debian

RUN apt-get update && apt-get install -y locales-all
ENV LANG=ja_JP.UTF-8 LANGUAGE=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8

COPY my.cnf /etc/mysql/conf.d
RUN chmod 644 /etc/mysql/conf.d/my.cnf
