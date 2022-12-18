#!/usr/bin/env sh

# export env vars
export TYPESENSE_API_KEY=xyz

# create data dir
mkdir $(pwd)/typesense-data

# start typesense server
docker run -p 8108:8108 -v$(pwd)/typesense-data:/data typesense/typesense:0.23.1 \
    --data-dir /data --api-key=$TYPESENSE_API_KEY --enable-cors
