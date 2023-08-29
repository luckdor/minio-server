#! /bin/sh
# chown -R minio:minio /data
# /usr/bin/gosu minio /usr/bin/minio $@
minio server /data --console-address :9090 --address :9001

service minio restart
