# WebGoat container perf test image
FROM fedora:38
LABEL variant="538553"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
