# WebGoat container perf test image
FROM tomcat:8.5-jre8 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73882
LABEL variant="908880"
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends unzip curl nano openssl gnupg net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=16065
LABEL variant="990380"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
