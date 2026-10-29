# WebGoat container perf test image
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client libssl-dev sqlite3 vim gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=28255
LABEL variant="74479"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
