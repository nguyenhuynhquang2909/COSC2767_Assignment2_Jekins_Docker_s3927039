# Start from the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Install Java from adoptopenjdk (version can be adjusted)
RUN apt-get update && \
    apt-get install -y wget && \
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && \
    echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/adoptopenjdk.list && \
    apt-get update && \
    apt-get install -y adoptopenjdk-11-hotspot


