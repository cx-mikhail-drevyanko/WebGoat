# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache busybox-extras jq zlib openssh-client
RUN pip install lxml==4.2.0
ENV APP_ID=38266
LABEL variant="709027"
FROM alpine:3.22 AS stage1
RUN apk add --no-cache libcurl openssh-client nano zlib openssl ca-certificates git libxml2
LABEL variant="179399"
FROM busybox:1.36
RUN apk add --no-cache sqlite openssh-client libcurl nano libxml2
LABEL variant="834613"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
