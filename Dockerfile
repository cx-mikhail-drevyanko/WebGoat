# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine
LABEL variant="560876"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
