FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install wget -y && \
	apt-get install apt-utils -y && \
	apt-get upgrade -y && \
	apt-get install openjdk-8-jdk -y

RUN apt-get install apt-transport-https gnupg2 -y

RUN wget -q -O - https://www.apache.org/dist/cassandra/KEYS | apt-key add -


RUN sh -c 'echo "deb http://www.apache.org/dist/cassandra/debian 311x main" > /etc/apt/sources.list.d/cassandra.list'




RUN apt-get update -y && \
	apt-get install cassandra -y

