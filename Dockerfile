# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget libcurl4 vim libssl-dev dnsutils sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85647
LABEL variant="356999"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
