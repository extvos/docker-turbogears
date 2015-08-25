FROM extvos/python

MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

ADD requirements.txt /

RUN pip install -r /requirements.txt \
	&& pip install circus chaussette waitress