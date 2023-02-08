FROM python:3.12.0a3-slim-bullseye

RUN apk --no-cache add g++ \ 
      && apk --no-cache add zeromq-dev \
      && pip install locustio pyzmq

EXPOSE 8089 5557 5558

ENTRYPOINT ["/usr/local/bin/locust"]
