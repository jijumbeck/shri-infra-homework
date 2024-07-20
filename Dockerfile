FROM node as build

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "start"]

FROM ubuntu:latest
CMD echo "Hi, I'm inside"