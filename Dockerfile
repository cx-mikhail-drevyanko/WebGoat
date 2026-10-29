# WebGoat container perf test image
FROM fedora:34
ENV APP_ID=31021
LABEL variant="981560"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
