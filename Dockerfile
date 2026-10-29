# WebGoat container perf test image
FROM redis:6.0-alpine
RUN apk add --no-cache wget bash nano libxml2 curl
ENV APP_ID=45184
LABEL variant="599932"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
