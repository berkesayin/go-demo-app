FROM golang:1.16 AS build

WORKDIR /compose/demo-app
COPY main.go main.go
RUN CGO_ENABLED=0 go build -o demo-app main.go

FROM scratch

COPY --from=build /compose/demo-app/demo-app /usr/local/bin/demo-app

CMD ["/usr/local/bin/demo-app"]
