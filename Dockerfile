FROM node:0.12

LABEL MAINTAINER Prolike/drop-gdpr.io

VOLUME /opt/youtransfer/config 		
VOLUME /opt/youtransfer/uploads

WORKDIR /opt/youtransfer/

RUN npm install youtransfer -g
RUN youtransfer init
RUN npm install

EXPOSE 5000

CMD npm run dockerized