# WebGoat container perf test image
FROM golang:1.16-alpine
RUN apk add --no-cache jq
ENV APP_ID=53201
LABEL variant="421818"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
