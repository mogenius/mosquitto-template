# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:2.0.14

EXPOSE 1883

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

RUN mosquitto_passwd -b -c /mosquitto/config/passwd mogenius mogenius

USER 1000

# PERSITENCE
# /mosquitto/config
# /mosquitto/data
# /mosquitto/log
