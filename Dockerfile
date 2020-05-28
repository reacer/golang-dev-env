FROM golang:1.14-alpine
ADD . .
RUN apk add git make bash protobuf
#ENV GOPROXY=https://goproxy.cn
ENV GO111MODULE=on
RUN go get github.com/golang/protobuf/protoc-gen-go@v1.3 && \
    go get google.golang.org/grpc@v1.29

