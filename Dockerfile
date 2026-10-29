# WebGoat container perf test image
FROM nginx:1.20-alpine
RUN apk add --no-cache git
ENV APP_ID=90448
LABEL variant="596437"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
