FROM node:22-alpine
WORKDIR /usr/src/app

COPY . .

RUN npm install && npm install -g serve

RUN npm run build

EXPOSE 8000

CMD ["serve", "-s", "build", "-l", "8000"]