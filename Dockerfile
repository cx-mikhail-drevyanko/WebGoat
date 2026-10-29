# WebGoat container perf test image
FROM postgres:13-alpine
RUN apk add --no-cache zlib
LABEL variant="517893"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
