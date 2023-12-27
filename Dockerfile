# Start from the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Maven using apt-get
RUN apt-get update && \
    apt-get install -y maven

# Install Java using apt-get
RUN apt-get install -y openjdk-11-jdk
