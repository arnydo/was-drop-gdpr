FROM node:10

LABEL MAINTAINER Prolike/drop-gdpr.io

VOLUME /opt/youtransfer/config
VOLUME /opt/youtransfer/uploads

WORKDIR /opt/youtransfer/

COPY . /opt/youtransfer/.

RUN npm install


EXPOSE 5000

CMD npm run dockerized
