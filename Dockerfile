# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano libxml2 zlib1g procps curl unzip wget && rm -rf /var/lib/apt/lists/*
LABEL variant="504498"
FROM nginx:1.18
ENV APP_ID=82182
LABEL variant="923084"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
