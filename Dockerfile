FROM alpine:3.9

WORKDIR /app
RUN apk update --no-cache && apk add ca-certificates
ADD eventrouter /app/
USER nobody:nobody

CMD ["/bin/sh", "-c", "/app/eventrouter"]
