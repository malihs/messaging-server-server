# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

RUN mkdir /usr/src/temp
RUN mkdir /usr/src/server
WORKDIR /usr/src/temp

COPY server.js .
COPY package.json .

RUN npm install
RUN npm install pm2 -g

EXPOSE 4000

CMD ["pm2-runtime", "server.js"]