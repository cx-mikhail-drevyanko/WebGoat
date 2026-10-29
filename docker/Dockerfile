# WebGoat container perf test image
FROM nginx:1.24-alpine
RUN apk add --no-cache expat gzip nano libcurl openssh-client zlib
LABEL variant="221788"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
