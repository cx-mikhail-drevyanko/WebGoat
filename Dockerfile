# WebGoat container perf test image
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano dnsutils gnupg git openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=30875
LABEL variant="700758"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
