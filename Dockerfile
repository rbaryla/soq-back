FROM node:7.9

RUN mkdir -p /usr/src/app
RUN chown node:node /usr/src/app
RUN npm install -g nodemon
USER node

WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]



