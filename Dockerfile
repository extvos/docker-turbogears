FROM extvos/python
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
RUN apk update && apk add  --no-cache build-base linux-headers python-dev postgresql-client postgresql-libs py-mysqldb
RUN pip install --upgrade pip virtualenv circus \
	&& mkdir -p /opt && cd /opt \
	&& virtualenv tg2env \
	&& . /opt/tg2env/bin/activate \
	&& pip install tg.devtools gearbox-tools chaussette waitress \
	&& mkdir /opt/works /root/.pip

COPY pip.conf /root/.pip/pip.conf
COPY pydistutils.cfg /root/.pydistutils.cfg
COPY entrypoint.sh /entrypoint.sh
VOLUME /opt/works

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
