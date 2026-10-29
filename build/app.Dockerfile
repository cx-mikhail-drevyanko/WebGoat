# WebGoat container perf test image
FROM redis:7.0-alpine
RUN apk add --no-cache zlib
ENV APP_ID=49599
LABEL variant="255454"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
