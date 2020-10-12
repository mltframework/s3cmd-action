FROM ubuntu:latest
LABEL maintainer="dan@dennedy.org"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get install -yqq s3cmd ca-certificates

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
