FROM ubuntu:22.04

RUN apt update \
    && apt upgrade -y

COPY eventrouter /app/

CMD ["/app/eventrouter"]
