# WebGoat container perf test image
FROM mysql:5.7 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils wget sqlite3 libxml2 perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=67025
LABEL variant="196570"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends curl zlib1g libcurl4 perl libxml2 sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73248
LABEL variant="387621"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
