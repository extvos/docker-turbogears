FROM extvos/python

MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

ADD requirements.txt /

RUN yum install -y  mysql-devel mysql-libs \
	&& pip install -r /requirements.txt \
	&& pip install circus chaussette waitress