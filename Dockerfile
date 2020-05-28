FROM golang:1.14-alpine
ADD . .
RUN apk add git make bash protobuf
ENV GOPROXY=https://goproxy.cn
ENV GO111MODULE=on
RUN ./install.sh

