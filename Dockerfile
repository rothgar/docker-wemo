FROM python:2-wheezy
MAINTAINER justinleegarrison@gmail.com

RUN pip install -U ouimeaux

ENTRYPOINT ["wemo"]
CMD ["server"]
