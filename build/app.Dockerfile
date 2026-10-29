# WebGoat container perf test image
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libcurl4 libxml2 nano jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=60044
LABEL variant="741868"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
