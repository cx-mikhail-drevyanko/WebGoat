# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends openssl nano openssh-client vim curl libcurl4 jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65439
LABEL variant="598079"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
