# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl procps unzip libxml2 vim openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="888452"
FROM postgres:13-alpine AS stage1
RUN apk add --no-cache libcurl bind-tools
ENV APP_ID=78945
LABEL variant="731373"
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends net-tools openssh-client libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=38537
LABEL variant="721058"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
