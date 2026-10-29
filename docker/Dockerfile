# WebGoat container perf test image
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends curl nano unzip openssl vim git perl libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=71489
LABEL variant="647541"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
