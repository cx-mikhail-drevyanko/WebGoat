# WebGoat container perf test image
FROM mysql:5.7 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git gnupg jq nano && rm -rf /var/lib/apt/lists/*
LABEL variant="232460"
FROM nginx:1.20-alpine
RUN apk add --no-cache sqlite openssh-client jq bind-tools curl
ENV APP_ID=84421
LABEL variant="370845"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
