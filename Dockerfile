FROM node:latest

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

RUN npm install pm2

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "server.js"]
