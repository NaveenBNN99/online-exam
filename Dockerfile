# Use the official OpenJDK image as the base image
FROM adoptopenjdk/openjdk14:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file and the Maven wrapper files
COPY target/examserver-0.0.1-SNAPSHOT.jar /app/examserver.jar
COPY mvnw /app/mvnw
COPY .mvn /app/.mvn

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "examserver.jar"]
