FROM ubuntu:latest
EXPOSE 8888

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install npm
RUN npm install -g n
RUN n stable

RUN mkdir /usr/local/start
WORKDIR /usr/local/start
RUN echo "{ \"name\":\"start\"  }" > package.json
RUN npm install --save express
RUN npm install --save body-parser

RUN echo "var express = require('express');" > server.js
RUN echo "var app = express();" >> server.js
RUN echo "app.get('/', function(req, res) {" >> server.js
RUN echo "   res.send(200, 'Hello, world');" >> server.js
RUN echo "});" >> server.js
RUN echo "app.listen(8888);" >> server.js
