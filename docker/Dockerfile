# WebGoat container perf test image
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends curl wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=41161
LABEL variant="725934"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
