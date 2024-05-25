# Use JDK 22 as the base image
FROM adoptopenjdk/openjdk22:alpine-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/demobackend-0.0.1-SNAPSHOT.jar /app/demobackend.jar

# Expose the port that your application runs on
EXPOSE 8080

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "demobackend.jar"]
