# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache bind-tools libcurl vim tar libxml2 ca-certificates git curl
ENV APP_ID=63872
LABEL variant="413070"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
