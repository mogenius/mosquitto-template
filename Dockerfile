# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:2.0.14

EXPOSE 1883

WORKDIR /src

COPY mosquitto.conf .

RUN mosquitto_passwd -b -c /mosquitto/config/passwd mogenius mogenius

USER 1000

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]

# PERSITENCE
# /mosquitto/config
# /mosquitto/data
# /mosquitto/log
