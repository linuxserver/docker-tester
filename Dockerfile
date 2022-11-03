FROM ghcr.io/linuxserver/baseimage-rdesktop-web:3.16

# set version label
ARG BUILD_DATE
ARG VERSION
ARG TESTER_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

ENV GUIAUTOSTART="true"

RUN \
  echo "**** install packages ****" && \
  apk add --no-cache \
    chromium && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000

VOLUME /config
