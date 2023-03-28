FROM debian:bullseye

RUN apt-get update \
    && apt-get upgrade -y

COPY eventrouter /app/

CMD ["/app/eventrouter"]
