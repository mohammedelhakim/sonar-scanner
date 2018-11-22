FROM openjdk:8-jdk-alpine

ENV SONAR_SCANNER_VERSION 3.2.0.1227

RUN apk add --no-cache wget nodejs && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
    unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
    ln -s $(pwd)/sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner /usr/local/bin/ && \