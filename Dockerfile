# WebGoat container perf test image
FROM alpine:3.14 AS stage0
RUN apk add --no-cache nano busybox-extras libxml2 curl ca-certificates openssh-client expat libcurl
ENV APP_ID=94672
LABEL variant="193500"
FROM alpine:3.10
LABEL variant="317177"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
