FROM --platform=linux/amd64 ubuntu:18.04

COPY install.sh .

RUN sh install.sh

WORKDIR /app

COPY package* index.js /app/

RUN npm install

CMD ["npm","start"]

    



