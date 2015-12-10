FROM extvos/python
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

ADD requirements.txt /

RUN yum install -y  mysql-devel mysql-libs \
	&& pip install virtualenv circus \
	&& cd /opt \
	&& virtualenv tg2env \
	&& . /opt/tg2env/bin/activate \
	&& pip install -r /requirements.txt \
	&& pip install chaussette waitress \
	&& mkdir /opt/works

EXPOSE 8080

VOLUME /opt/works
