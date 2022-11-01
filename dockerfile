FROM node:current-alpine

LABEL org.openconatainer.image.title="first image"

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install

EXPOSE 9999

ENTRYPOINT [ "node", "app.js" ]