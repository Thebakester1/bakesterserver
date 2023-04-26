# Using official python runtime base image
FROM ubuntu:20.04

#Install dependencies
RUN apt-get update && apt-get install -y
RUN apt-get install -y python
RUN apt-get install -y python3-pip
RUN apt-get install -y curl 
RUN apt-get update

#install odbc on ubuntu
RUN apt-get install unixodbc -y \
 && apt-get install unixodbc-dev -y

#install microsoft driver for sql server on ubuntu
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  && curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  && apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17

#Run flask app
RUN mkdir /app
WORKDIR /app

EXPOSE 5001

COPY . .
RUN pip3 install -r requirements.txt

# ENTRYPOINT [ "bash" ]
CMD [ "python3", "app.py"]