FROM golang:1.15

WORKDIR /usr/src/app

COPY . .

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
RUN go mod download && go mod verify && go build -v -o /usr/local/bin/app .

# 3days
CMD mkdir -p /usr/local/var/GeoIP/output && while $true;do app --destDir /usr/local/var/GeoIP/output;sleep 259200;done

