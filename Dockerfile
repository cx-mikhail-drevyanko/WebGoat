# WebGoat container perf test image
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends perl jq unzip gnupg vim curl nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=21595
LABEL variant="73501"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
