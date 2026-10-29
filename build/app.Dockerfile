# WebGoat container perf test image
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 git jq ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=32433
LABEL variant="871216"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
