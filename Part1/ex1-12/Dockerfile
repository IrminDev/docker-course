FROM node:16-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm install -g serve

RUN REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]