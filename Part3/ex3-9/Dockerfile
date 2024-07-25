FROM golang:1.16-rc-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN apk add build-base && go build && go test ./...

FROM scratch

COPY --from=build /usr/src/app/server /server

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["/server"]

# Build command: docker build -t backend-app .
# Run command: docker run -ti -p 127.0.0.1:8080:8080 backend-app