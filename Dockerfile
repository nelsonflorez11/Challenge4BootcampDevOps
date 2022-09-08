FROM ubuntu:18.04

COPY install.sh .

RUN sh install.sh

WORKDIR /app

COPY package* index.js /app/

RUN npm install

EXPOSE 8888


CMD ["npm","start"]

    



