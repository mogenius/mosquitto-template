# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:latest

EXPOSE 1883

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

RUN mosquitto_passwd -b -c /mosquitto/config/passwd mogenius mogenius

# PERSITENCE
# /mosquitto/config
# /mosquitto/data
# /mosquitto/log