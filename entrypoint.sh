#! /bin/sh
# chown -R minio:minio /data
# /usr/bin/gosu minio /usr/bin/minio $@
mc admin update

server /data --console-address ":9090"
