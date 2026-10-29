# WebGoat container perf test image
FROM traefik:v2.5
ENV APP_ID=19805
LABEL variant="908803"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
