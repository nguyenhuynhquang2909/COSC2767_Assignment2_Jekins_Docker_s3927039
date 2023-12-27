# Start from the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Maven using yum
RUN yum update -y && \
    yum install -y maven

# Install Java using yum
RUN amazon-linux-extras install -y java-openjdk11