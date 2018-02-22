# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

WORKDIR /usr/src
RUN mkdir -p temp 

COPY package.js ./temp
COPY server.js ./temp

RUN npm install

EXPOSE 4000

CMD [ "npm", "start" ]