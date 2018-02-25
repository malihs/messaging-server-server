# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

WORKDIR /usr/src
RUN mkdir temp
RUN mkdir server

COPY server.js ./temp
RUN npm install pm2 experss -g

EXPOSE 4000

CMD ["pm2-runtime", "./temp/server.js"]