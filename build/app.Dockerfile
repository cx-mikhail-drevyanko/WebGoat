# WebGoat container perf test image
FROM memcached:1.5
LABEL variant="178532"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
