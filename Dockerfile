FROM ubuntu:latest
EXPOSE 8888

RUN apt-get -y update && \
    apt-get -y install wget && \
    apt-get -y install npm && \
    npm install -g n && \
    n stable && \
    mkdir -p /usr/local/start


ADD package.json /usr/local/start/
ADD server.js /usr/local/start/

WORKDIR /usr/local/start

RUN npm install --save express && \
    npm install --save body-parser
