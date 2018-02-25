# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

WORKDIR /usr/src

RUN npm install pm2 -g

EXPOSE 4000

CMD ["pm2-runtime", "envs.json", "--env", "staging"]