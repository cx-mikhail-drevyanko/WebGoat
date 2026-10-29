# WebGoat container perf test image
FROM busybox:1.31 AS stage0
RUN apk add --no-cache tar openssl busybox-extras tzdata expat zlib libcurl
LABEL variant="541454"
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends nano libxml2 vim && rm -rf /var/lib/apt/lists/*
LABEL variant="334562"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
