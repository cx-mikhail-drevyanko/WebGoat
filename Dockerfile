# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=30703
LABEL variant="467934"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
