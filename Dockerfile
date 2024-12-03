FROM golang:1.21

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download
COPY . .

RUN go build -o /aaisp-exporter ./cmd/aaisp-exporter/main.go
EXPOSE 8080
CMD [ "/aaisp-exporter" ]