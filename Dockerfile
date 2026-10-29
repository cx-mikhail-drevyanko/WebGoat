# WebGoat container perf test image
FROM nginx:1.26
LABEL variant="107189"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
