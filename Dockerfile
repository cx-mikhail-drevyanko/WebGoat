# WebGoat container perf test image
FROM caddy:2.7-alpine
RUN apk add --no-cache libxml2
ENV APP_ID=12433
LABEL variant="932810"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
