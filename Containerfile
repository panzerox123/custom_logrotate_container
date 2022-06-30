FROM registry.hub.docker.com/library/alpine:3.16

RUN apk add --update \
    docker-cli \
    logrotate

ENTRYPOINT [ "/usr/sbin/logrotate" ]
CMD [ "-s" , "/config/logrotate.state", "/config/logrotate.config" ]
