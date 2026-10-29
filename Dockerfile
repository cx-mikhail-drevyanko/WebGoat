# WebGoat container perf test image
FROM tomcat:10.1-jre17
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates nano openssh-client openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="541264"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
