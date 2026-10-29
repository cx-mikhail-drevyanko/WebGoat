# WebGoat container perf test image
FROM ruby:3.1-slim
LABEL variant="466249"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
