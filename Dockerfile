# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends nano openssl curl wget unzip openssh-client zlib1g libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46021
LABEL variant="455018"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
