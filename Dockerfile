# WebGoat container perf test image
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=75235
LABEL variant="880379"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
