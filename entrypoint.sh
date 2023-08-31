#! /bin/sh
# chown -R minio:minio /data
# /usr/bin/gosu minio /usr/bin/minio $@
minio server /data --console-address ":9090" --address "wbwb-syw1738.koyeb.app:9001"

# docker-compose up -d

# service minio restart

# server /data
