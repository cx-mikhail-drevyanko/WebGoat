# WebGoat container perf test image
FROM mysql:8.0
ENV APP_ID=88491
LABEL variant="651208"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
