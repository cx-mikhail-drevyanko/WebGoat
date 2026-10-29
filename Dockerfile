# WebGoat container perf test image
FROM nginx:1.18 AS stage0
ENV APP_ID=33550
LABEL variant="707592"
FROM amazonlinux:2
LABEL variant="251470"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
