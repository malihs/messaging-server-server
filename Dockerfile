# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

WORKDIR /usr/src 

COPY package.js ./
COPY server.js ./

RUN npm install

EXPOSE 4000

CMD [ "npm", "start" ]