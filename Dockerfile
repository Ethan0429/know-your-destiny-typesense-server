# import typesense image
FROM typesense/typesense:lastest

ENV TYPESENSE_API_KEY=xyz

EXPOSE 8108

# run typesense server
CMD ["typesense-server", "--data-dir", "/data", "--api-key", "$TYPESENSE_API_KEY"]
