# WebGoat container perf test image
FROM nginx:1.22 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget nano jq procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=75662
LABEL variant="690072"
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends vim dnsutils jq libssl-dev openssl libxml2 nano net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96238
LABEL variant="497116"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
