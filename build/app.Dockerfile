# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache jq bash bind-tools
ENV APP_ID=39829
LABEL variant="303990"
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates vim nano libssl-dev perl openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="364668"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
