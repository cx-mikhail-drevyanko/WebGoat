# WebGoat container perf test image
FROM mongo:4.4 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps && rm -rf /var/lib/apt/lists/*
LABEL variant="441560"
FROM fedora:34 AS stage1
RUN yum install -y curl zlib git && yum clean all
ENV APP_ID=67052
LABEL variant="201683"
FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev nano wget gnupg curl git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=66957
LABEL variant="583061"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
