FROM ubuntu:latest
# MAINTAINER Thibault NORMAND <me@zenithar.org>

#docker安装
RUN apt-get update && apt-get install -y wget
RUN wget -qO- get.docker.com | bash

#docker compose安装
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN apt install systemd
RUN systemctl enable docker

WORKDIR root
COPY docker-compose.yaml .
COPY nginx.conf .

RUN docker-compose up -d

EXPOSE 9090 9001 9000
# ENTRYPOINT  ["/entrypoint.sh"]

# CMD ["server","/data"]
