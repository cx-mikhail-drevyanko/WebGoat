# WebGoat container perf test image
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends git vim gnupg jq procps ca-certificates libcurl4 net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="480532"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
