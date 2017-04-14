FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum && add-apt-repository -y ppa:ethereum/ethereum-dev
RUN apt-get update && apt-get install -y nodejs npm git ethereum
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g truffle
RUN npm install -g ethereumjs-testrpc