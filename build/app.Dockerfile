# WebGoat container perf test image
FROM alpine:3.12
RUN apk add --no-cache git bind-tools zlib tzdata expat
LABEL variant="888096"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
