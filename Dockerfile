FROM python:2-wheezy
MAINTAINER justinleegarrison@gmail.com

RUN apt-get update && apt-get install tcpdump
RUN pip install -U ouimeaux

EXPOSE 54321/udp

CMD ["wemo", "server"]
