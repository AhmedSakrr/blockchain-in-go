FROM golang:alpine3.15

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go mod download
RUN go build -o main ./src/main.go

CMD ["/app/main"]
