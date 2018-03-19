# now the lastrelease is 17.10
FROM ubuntu:17.10

MAINTAINER merle <merle.liukun@gmail.com>

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y wget \
	&& apt-get install -y zsh \
	&& apt-get install -y git \
	&& apt-get install -y vim \
	&& wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | bash || true \
	&& apt-get install -y python python-dev python-pip \
	&& apt-get install -y python3 \
	&& mkdir ~/.pip \
	&& echo '[global]' >> ~/.pip/pip.conf \
	&& echo 'index-url = https://mirrors.ustc.edu.cn/pypi/web/simple' >> ~/.pip/pip.conf \
	&& echo 'format = columns' >> ~/.pip/pip.conf \
	&& pip install virtualenvwrapper \
	&& echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.zshrc \
	&& echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.zshrc 
	

# for python3.6 
# if you are use 16.04 install python3.6 as follows.

# apt-get install software-properties-common
# add-apt-repository ppa:jonathonf/python-3.6
# apt-get update
# apt-get install python3.6


# Define define command
CMD ["bash"]