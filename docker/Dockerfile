# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client ca-certificates libcurl4 libssl-dev jq nano wget procps && rm -rf /var/lib/apt/lists/*
LABEL variant="208426"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
