# WebGoat container perf test image
FROM mongo:4.4
ENV APP_ID=10574
LABEL variant="907274"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
