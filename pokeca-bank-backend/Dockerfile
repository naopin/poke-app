FROM node:lts-alpine

RUN npm i -g @nestjs/cli
# Create App dir
RUN mkdir -p /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD [ "npm", "run", "start:dev"]