# WebGoat container perf test image
FROM mysql:5.7 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget git nano dnsutils net-tools openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=59944
LABEL variant="535866"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev zlib1g git gnupg openssh-client sqlite3 vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=52011
LABEL variant="374890"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
