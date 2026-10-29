# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano zlib1g vim libcurl4 sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip install numpy==1.16.0
ENV APP_ID=78412
LABEL variant="869353"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
