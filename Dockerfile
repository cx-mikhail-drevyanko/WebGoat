# WebGoat container perf test image
FROM postgres:14
LABEL variant="833456"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
