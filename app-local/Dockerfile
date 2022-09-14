FROM ubuntu:18.04

WORKDIR /app

COPY install.sh /app

RUN sh install.sh

COPY ../package* ../index.js /app/

RUN npm install

EXPOSE 8888

CMD ["npm","start"]

    



