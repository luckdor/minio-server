FROM ubuntu:latest
# MAINTAINER Thibault NORMAND <me@zenithar.org>

RUN curl -fsSL https://test.docker.com -o test-docker.sh

WORKDIR root
COPY docker-compose.yaml .
COPY nginx.conf .

RUN docker compose up -d

EXPOSE 9090 9001 9000
# ENTRYPOINT  ["/entrypoint.sh"]

# CMD ["server","/data"]
