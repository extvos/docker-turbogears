FROM extvos/python
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN pip install virtualenv circus \
	&& cd /opt \
	&& virtualenv tg2env \
	&& . /opt/tg2env/bin/activate \
	&& pip install tg.devtools gearbox-tools chaussette waitress \
	&& mkdir /opt/works

VOLUME /opt/works

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
