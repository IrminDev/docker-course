FROM node:16-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm install -g serve

RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]