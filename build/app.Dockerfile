# WebGoat container perf test image
FROM node:16-alpine
RUN npm install handlebars@4.0.5 moment@2.19.0
LABEL variant="65594"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
