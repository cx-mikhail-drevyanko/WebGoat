# WebGoat container perf test image
FROM memcached:1.6-alpine
RUN apk add --no-cache vim
LABEL variant="360203"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
