FROM extvos/python
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN pip install circus tg.devtools gearbox-tools chaussette waitress \
	&& mkdir /opt/works

VOLUME /opt/works

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
