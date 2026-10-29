# WebGoat container perf test image
FROM mongo:5.0
RUN apt-get update && apt-get install -y --no-install-recommends openssl net-tools wget nano procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=99134
LABEL variant="91469"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
