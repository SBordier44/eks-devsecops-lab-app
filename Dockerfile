FROM golang:1.26-alpine AS builder

WORKDIR /src

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o app main.go

FROM gcr.io/distroless/static-debian13:nonroot

COPY --from=builder /src/app /app

EXPOSE 8080

ENTRYPOINT ["/app"]
