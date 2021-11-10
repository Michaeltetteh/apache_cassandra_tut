FROM ubuntu:20.04

RUN apt-get update

RUN echo "deb http://www.apache.org/dist/cassandra/debian 40x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list


RUN apt-get install -y software-properties-common && \
	add-apt-repository ppa:openjdk-r/ppa -y

RUN apt-get install -y curl

RUN curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add - && \ 
	sudo apt-get update

RUN apt-get install -y cassandra

