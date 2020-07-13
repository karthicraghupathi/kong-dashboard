FROM node:10.9-alpine

COPY wait-for-it.sh /wait-for-it.sh

RUN apk add bash \
    && npm install -g kong-dashboard

STOPSIGNAL SIGTERM

CMD /wait-for-it.sh host.docker.internal:4001 -- kong-dashboard start --kong-url http://host.docker.internal:4001 --port 4040
