# Use a base image with Java
FROM openjdk:11-jre-slim

# Metadata (optional)
LABEL maintainer="your_email@example.com"
LABEL description="Wine Quality Prediction using Apache Spark"

# Create app directory
WORKDIR /app

# Copy your built JAR into the container
COPY target/wine-quality-predictor-1.0.jar app.jar

# Default command: can be overridden when running `spark-submit`
CMD ["java", "-jar", "app.jar"]
