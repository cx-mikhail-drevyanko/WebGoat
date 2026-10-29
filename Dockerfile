# WebGoat container perf test image
FROM haproxy:2.6-alpine
RUN apk add --no-cache libcurl ca-certificates git
ENV APP_ID=45529
LABEL variant="229822"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
