# Start from the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Maven using yum
RUN apt-get update && apt-get install -y Maven

# Install Java using yum
RUN amazon-linux-extras install -y java-openjdk11