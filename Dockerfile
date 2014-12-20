FROM python:2-wheezy
MAINTAINER justinleegarrison@gmail.com

RUN pip install -U ouimeaux

EXPOSE 54321

CMD ["wemo", "-b", "54321", "server"]
