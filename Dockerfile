FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive 
RUN ln -fs /usr/share/zoneinfo/Europe/Warsaw /etc/localtime 
RUN apt-get update && apt-get upgrade -y && apt-get install -y git tzdata && \
	dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get install -y npm
RUN npm install -g yarn || echo "OK"
ENV PATH=/usr/local/lib/node_modules/yarn/bin:$PATH
