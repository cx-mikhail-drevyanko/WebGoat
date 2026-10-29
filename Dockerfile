# WebGoat container perf test image
FROM redis:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git perl openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=99777
LABEL variant="675870"
FROM mariadb:10.6 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssl zlib1g nano curl unzip openssh-client libssl-dev sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="622184"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg libssl-dev libcurl4 ca-certificates wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=7160
LABEL variant="1228"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
