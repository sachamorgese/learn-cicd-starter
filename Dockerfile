FROM --platform=linux/amd64 debian:stable-slim

COPY . /app

RUN apt-get update && apt-get install -y golang
RUN apt-get update && apt-get install -y ca-certificates


WORKDIR /app
RUN go build -o notely

ENTRYPOINT ["/app/notely"]