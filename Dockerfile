# WebGoat container perf test image
FROM mongo:4.4
ENV APP_ID=69204
LABEL variant="518264"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
