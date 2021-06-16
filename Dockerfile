FROM alpine:3.13.5

WORKDIR /app

RUN apk update --no-cache \
    && apk upgrade \
    && apk add ca-certificates

COPY eventrouter /app/
USER nobody:nobody

CMD ["/bin/sh", "-c", "/app/eventrouter"]
