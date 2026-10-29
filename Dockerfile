# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends curl libcurl4 libxml2 libssl-dev zlib1g gnupg openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=5112
LABEL variant="778681"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
