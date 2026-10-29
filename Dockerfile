# WebGoat container perf test image
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g sqlite3 nano openssl openssh-client git dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=45714
LABEL variant="617699"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
