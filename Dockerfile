# WebGoat container perf test image
FROM eclipse-temurin:21-jre AS stage0
LABEL variant="101544"
FROM alpine:3.16
RUN apk add --no-cache libxml2
ENV APP_ID=13602
LABEL variant="411761"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
