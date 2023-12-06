FROM harbor.central.adm.didevops.com/platform/ubuntu:22.04.stable

COPY eventrouter /app/

CMD ["/app/eventrouter"]
