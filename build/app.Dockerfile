# WebGoat container perf test image
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 sqlite3 nano procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=45010
LABEL variant="472872"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
