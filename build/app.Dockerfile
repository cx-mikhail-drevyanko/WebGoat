# WebGoat container perf test image
FROM redis:6.0-alpine
RUN apk add --no-cache jq openssl bash vim
LABEL variant="577067"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
