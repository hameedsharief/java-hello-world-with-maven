# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the executable JAR file from the target directory into the container at /app
COPY target/jb-hello-world-maven-0.2.0.jar /app

# Expose the port
EXPOSE 8080

# Set environment variables
ENV APP_NAME=hello-world
ENV APP_VERSION=0.2.0

# Mount the volume
VOLUME /mnt/volume

# Run the application when the container starts
CMD ["java", "-jar", "jb-hello-world-maven-0.2.0.jar"]
