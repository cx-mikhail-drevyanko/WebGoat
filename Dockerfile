# WebGoat container perf test image
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg openssh-client libcurl4 jq git && rm -rf /var/lib/apt/lists/*
LABEL variant="932105"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
