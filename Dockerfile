# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:2.0.14

EXPOSE 1883

WORKDIR /src

COPY mosquitto.conf .
COPY passwd .
COPY entrypoint.sh .

USER 1000

ENTRYPOINT ["sh", "/src/entrypoint.sh"]

# PERSITENCE
# /mosquitto/config
# /mosquitto/data
# /mosquitto/log
