# node-start
A Dockerfile for running node.js projects.  It takes the *latest* ubuntu image and then adds the *latest stable* version of node.js

You can test it is working like this:

``docker run -d -p 8080:8888 davidsblog/node-start node server.js``
