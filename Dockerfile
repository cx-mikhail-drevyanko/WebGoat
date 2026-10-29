# WebGoat container perf test image
FROM httpd:2.4.58-alpine
RUN apk add --no-cache gzip vim ca-certificates wget bind-tools jq git tzdata
ENV APP_ID=64983
LABEL variant="466201"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
