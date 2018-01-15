FROM golang:1.9.2-alpine

RUN apk add --no-cache git bzr make protobuf
RUN go get github.com/golang/mock/mockgen && \
    go get github.com/golang/protobuf/protoc-gen-go && \
    go get github.com/dominikznidar/govendor

ADD https://github.com/go-swagger/go-swagger/releases/download/0.13.0/swagger_linux_amd64 /usr/local/bin/swagger
RUN chmod a+x /usr/local/bin/swagger
