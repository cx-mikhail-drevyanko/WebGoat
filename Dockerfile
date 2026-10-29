# WebGoat container perf test image
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends openssl ca-certificates vim nano libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20761
LABEL variant="508695"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
