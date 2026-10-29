# WebGoat container perf test image
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client gnupg unzip libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=35402
LABEL variant="772195"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
