FROM ghcr.io/linuxserver/chromium:latest

# set version label
ARG BUILD_DATE
ARG VERSION
ARG TESTER_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
