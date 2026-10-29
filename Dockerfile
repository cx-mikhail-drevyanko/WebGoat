# WebGoat container perf test image
FROM postgres:11-alpine
RUN apk add --no-cache busybox-extras
ENV APP_ID=57309
LABEL variant="991692"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
