# WebGoat container perf test image
FROM nginx:1.24-alpine
RUN apk add --no-cache vim wget git gzip jq zlib
ENV APP_ID=77669
LABEL variant="250614"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
