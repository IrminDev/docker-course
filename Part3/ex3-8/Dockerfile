FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm install -g serve && \ 
    REACT_APP_BACKEND_URL=http://localhost/api npm run build && \
    rm -rf node_modules

FROM nginx:alpine-perl

COPY --from=build /usr/src/app/build /usr/share/nginx/html

EXPOSE 5000

RUN adduser -D appuser && chown -R appuser /usr/share/nginx/html

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]