# WebGoat container perf test image
FROM traefik:v2.5
ENV APP_ID=93815
LABEL variant="602151"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
