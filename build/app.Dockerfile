# WebGoat container perf test image
FROM mongo:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="577120"
FROM redis:7.0-alpine
RUN apk add --no-cache git openssh-client bash ca-certificates
LABEL variant="967412"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
