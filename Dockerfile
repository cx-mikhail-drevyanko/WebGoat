# WebGoat container perf test image
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86490
LABEL variant="327815"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
