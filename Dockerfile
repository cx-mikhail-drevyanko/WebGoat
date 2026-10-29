# WebGoat container perf test image
FROM debian:buster
LABEL variant="872105"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
