# WebGoat container perf test image
FROM caddy:2.7-alpine
RUN apk add --no-cache wget openssl ca-certificates vim
LABEL variant="533912"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
