# WebGoat container perf test image
FROM nginx:1.18
RUN apt-get update && apt-get install -y --no-install-recommends nano procps dnsutils openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84649
LABEL variant="36878"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
