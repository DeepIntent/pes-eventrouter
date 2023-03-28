FROM debian:bullseye

RUN apt-get update \
    && apt-get upgrade -y

COPY /work/eventrouter /app/

CMD ["/app/eventrouter"]
