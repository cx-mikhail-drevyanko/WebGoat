# WebGoat container perf test image
FROM alpine:3.18
RUN apk add --no-cache libxml2
ENV APP_ID=71106
LABEL variant="620164"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
