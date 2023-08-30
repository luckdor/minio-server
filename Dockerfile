FROM ubuntu:latest
# MAINTAINER Thibault NORMAND <me@zenithar.org>

RUN apt-get update && apt-get install -y wget
RUN wget -qO- get.docker.com | bash

RUN apt install systemd
RUN systemctl enable docker

WORKDIR root
COPY docker-compose.yaml .
COPY nginx.conf .

RUN docker-compose up -d

EXPOSE 9090 9001 9000
# ENTRYPOINT  ["/entrypoint.sh"]

# CMD ["server","/data"]
