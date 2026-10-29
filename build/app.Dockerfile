# WebGoat container perf test image
FROM traefik:v2.5
LABEL variant="861839"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
