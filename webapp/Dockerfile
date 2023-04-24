FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y python python3-pip 
RUN apt-get update

RUN mkdir /app
COPY . .

RUN pip3 install -r piprequirements.txt
RUN pip install -y flask-mysql

WORKDIR /app/
ENTRYPOINT [ "bin/bash" ]