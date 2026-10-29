# WebGoat container perf test image
FROM traefik:v2.10
ENV APP_ID=47127
LABEL variant="660343"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
