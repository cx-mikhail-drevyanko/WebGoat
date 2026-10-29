# WebGoat container perf test image
FROM caddy:2.7-alpine
LABEL variant="89246"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
