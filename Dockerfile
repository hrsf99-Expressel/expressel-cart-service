FROM node:7.6-alpine

RUN mkdir -p /src/

WORKDIR /

COPY . /

RUN npm install

EXPOSE 3003

CMD [ "npm", "start" ]
