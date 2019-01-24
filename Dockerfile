FROM ubuntu:trusty

RUN apt-get install update &&
    apt-get install -y curl &&
    apt-get install -y realpath

COPY wait-for-it.sh .

ENV TEST_HOST
ENV CURL_HOST
ENV HTTP_VERB

ENTRYPOINT "./wait-for-it.sh $TEST_HOST -- curl -X $HTTP_VERB $CURL_HOST"