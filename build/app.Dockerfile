# WebGoat container perf test image
FROM postgres:11-alpine
RUN apk add --no-cache openssl vim wget expat git tar nano gzip
ENV APP_ID=40687
LABEL variant="160142"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
