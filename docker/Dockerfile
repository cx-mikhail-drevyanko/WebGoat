# WebGoat container perf test image
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends curl openssh-client perl openssl git net-tools unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=76237
LABEL variant="155297"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
