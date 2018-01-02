FROM python:2-slim as build
MAINTAINER justinleegarrison@gmail.com

ENV BUILD_PACKAGES git python-dev gcc
RUN apt-get update \
    && apt-get install -y $BUILD_PACKAGES
RUN pip install git+https://github.com/syphoxy/ouimeaux.git \
    && pip install -e 'git+https://github.com/syphoxy/ouimeaux.git#egg=ouimeaux[server]'

RUN apt-get remove --purge -y --force-yes $BUILD_PACKAGES \
    && rm -rf /var/lib/apt/lists/*
    

EXPOSE 5000

ENTRYPOINT ["wemo"]
CMD ["server"]
