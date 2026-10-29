# WebGoat container perf test image
FROM alpine:3.20 AS stage0
LABEL variant="945869"
FROM alpine:3.12
LABEL variant="456446"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
