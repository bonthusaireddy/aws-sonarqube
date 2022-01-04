FROM ubuntu:18.04

## Set working directory to for deployment ##
WORKDIR /data/salm

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get install -y wget && \
    apt-get install -y unzip

# Install SonarScanner
RUN wget -U "scannercli" -q -O /opt/sonar-scanner-cli.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
RUN unzip /opt/sonar-scanner-cli.zip -d /opt
RUN rm -rf /opt/sonar-scanner-cli.zip
RUN mv /opt/sonar-scanner-4.6.2.2472-linux /opt/sonar-scanner







