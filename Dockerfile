# WebGoat container perf test image
FROM mongo:5.0 AS stage0
ENV APP_ID=95012
LABEL variant="430522"
FROM elasticsearch:7.17.9
ENV APP_ID=4614
LABEL variant="351520"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
