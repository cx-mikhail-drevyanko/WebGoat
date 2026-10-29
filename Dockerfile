# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps libcurl4 unzip && rm -rf /var/lib/apt/lists/*
RUN npm install axios@0.18.0 handlebars@4.0.5 lodash@4.17.4
ENV APP_ID=19847
LABEL variant="666353"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
