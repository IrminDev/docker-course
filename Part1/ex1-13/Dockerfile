FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN go test ./...

EXPOSE 8080

ENTRYPOINT ["./server"]

# Build command: docker build -t backend-app .
# Run command: docker run -ti -p 127.0.0.1:8080:8080 backend-app