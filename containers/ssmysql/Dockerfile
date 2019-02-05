FROM mysql:5.7
LABEL com.damonyuan.ss-mysql.version="1.0.0" \
      vendor="Damon Yuan"
MAINTAINER Damon Yuan <yzmhit@gmail.com>

ADD mysql.cnf /etc/mysql/conf.d/mysql.cnf
ADD init_webgui.sql /docker-entrypoint-initdb.d/init_webgui.sql