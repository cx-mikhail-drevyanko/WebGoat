# WebGoat container perf test image
FROM ubuntu:18.04 AS stage0
LABEL variant="161576"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends wget sqlite3 curl libxml2 perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65267
LABEL variant="967056"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
