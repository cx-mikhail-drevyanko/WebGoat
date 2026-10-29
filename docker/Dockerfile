# WebGoat container perf test image
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 gnupg vim openssl jq curl procps unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84097
LABEL variant="256099"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
