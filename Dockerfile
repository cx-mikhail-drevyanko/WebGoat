# WebGoat container perf test image
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends vim libxml2 wget net-tools libcurl4 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=8889
LABEL variant="584811"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
