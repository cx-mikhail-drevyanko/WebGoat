# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache expat bash curl
ENV APP_ID=46586
LABEL variant="257170"
FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache openssl expat tar nano
LABEL variant="703704"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
