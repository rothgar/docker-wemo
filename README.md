docker wemo
========

A docker container to run [ouimeaux](https://github.com/iancmcc/ouimeaux) server.

Run it with

```
docker --net="host" --name wemo rothgar/wemo
```

*NOTE* container requires host networking for wemo device UDP discovery on random ports.

Control your wemo devices by browsing to 127.0.0.1:5000
