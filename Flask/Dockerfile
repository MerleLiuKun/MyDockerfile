FROM ubuntu:latest
MAINTAINER merle.liukun@gmal.com
#
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update -y \
    && apt-get install -y python python-dev python-pip \
    && apt-get install -y libmysqlclient-dev libmysqld-dev \
    && mkdir ~/.pip \
	&& echo '[global]' >> ~/.pip/pip.conf \
	&& echo 'index-url=https://mirrors.ustc.edu.cn/pypi/web/simple' >> ~/.pip/pip.conf \
	&& echo 'trusted-host=pypi.douban.com' >> ~/.pip/pip.conf \
	&& pip install --upgrade pip
#
ENV FLASK_CONFIG production
#
WORKDIR /usr/src/app
COPY . /usr/src/app

#
RUN pip install -r requirements.txt \
    && flask initdb
#
CMD gunicorn -w 4 -b :8001 wsgi:app