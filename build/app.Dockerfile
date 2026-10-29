# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libssl-dev openssh-client libxml2 jq sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73803
LABEL variant="859268"
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9452
LABEL variant="465343"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
