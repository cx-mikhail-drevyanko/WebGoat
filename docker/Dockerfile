# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN npm install jquery@2.2.4 axios@0.18.0 minimist@1.2.0 lodash@4.17.4
LABEL variant="770583"
FROM debian:buster
LABEL variant="198983"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
