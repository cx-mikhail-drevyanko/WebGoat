# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13302
LABEL variant="127151"
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends net-tools gnupg openssh-client openssl libxml2 jq dnsutils wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=11426
LABEL variant="65901"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
