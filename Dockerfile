FROM debian:bullseye

RUN apt-get update \
    && apt-get upgrade -y

COPY --from=build  /work/eventrouter /app/

CMD ["/app/eventrouter"]
