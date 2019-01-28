FROM ubuntu:trusty

RUN apt-get update 

RUN apt-get install -y curl &&\
    apt-get install -y realpath

ADD ./wait-for-it.sh /ws/
WORKDIR /ws
RUN chmod +x /ws/wait-for-it.sh

ENV TEST_HOST http://www.google.com 
ENV HTTP_VERB GET
ENV CURL_HOST http://www.google.com
