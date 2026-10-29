# WebGoat container perf test image
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends unzip jq curl procps libssl-dev perl gnupg net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=24494
LABEL variant="917101"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
