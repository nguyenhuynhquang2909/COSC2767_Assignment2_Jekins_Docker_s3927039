# Start from the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Java using apt-get (since the base image is based on Debian)
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk

# Install Maven
RUN apt-get install -y maven

