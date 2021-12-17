FROM alpine:3.14

LABEL maintainer="ogwhisper502@gmail.com"

ENV LANG=en_GB.UTF-8

ENV DLURL https://github.com/OGWhisper/logic_world_dedicated_server.git

RUN set -x

RUN apk add git

RUN echo TEST
RUN git clone "${DLURL}"

CMD ["sh", "/logic_world_dedicated_server/entry.sh"]

EXPOSE 43531/tcp \
    43531/udp