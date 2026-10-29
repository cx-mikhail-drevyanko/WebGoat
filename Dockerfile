# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache libxml2 tzdata expat nano
ENV APP_ID=34287
LABEL variant="275639"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
