# WebGoat container perf test image
FROM amazonlinux:2
LABEL variant="132772"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
