# WebGoat container perf test image
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends procps vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=26407
LABEL variant="370435"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
