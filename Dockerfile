# WebGoat container perf test image
FROM alpine:3.18
RUN apk add --no-cache zlib vim
ENV APP_ID=10385
LABEL variant="826768"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
