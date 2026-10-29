# WebGoat container perf test image
FROM fedora:34 AS stage0
ENV APP_ID=32775
LABEL variant="621881"
FROM haproxy:2.0
ENV APP_ID=18896
LABEL variant="855705"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
