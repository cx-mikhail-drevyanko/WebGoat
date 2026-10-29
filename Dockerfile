# WebGoat container perf test image
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq && rm -rf /var/lib/apt/lists/*
LABEL variant="713733"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
