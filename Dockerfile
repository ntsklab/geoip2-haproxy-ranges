FROM golang:1.15

WORKDIR /usr/src/app

COPY . .

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
RUN go mod download && go mod verify

RUN go build -v -o /usr/local/bin/app ./...

CMD mkdir -p /usr/local/var/GeoIP/output && app --destDir /usr/local/var/GeoIP/output
