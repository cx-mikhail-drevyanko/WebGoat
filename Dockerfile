# WebGoat container perf test image
FROM alpine:3.10
RUN apk add --no-cache curl jq libcurl bash ca-certificates libxml2 tzdata
LABEL variant="124273"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
