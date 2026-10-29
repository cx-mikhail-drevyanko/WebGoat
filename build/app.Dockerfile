# WebGoat container perf test image
FROM alpine:3.10
RUN apk add --no-cache wget bash jq expat git nano
LABEL variant="635982"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
