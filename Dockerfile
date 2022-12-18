# import typesense image
FROM typesense/typesense:latest

ENV TYPESENSE_API_KEY=xyz

# create data directory
RUN mkdir /data

EXPOSE 8108

# run typesense server
CMD ["typesense-server", "--data-dir", "/data", "--api-key", "$TYPESENSE_API_KEY"]
