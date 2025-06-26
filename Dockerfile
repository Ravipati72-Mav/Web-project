# Use a Java runtime image
FROM openjdk:17-jdk-slim

# Set the JAR file path (copied from target/)
ARG JAR_FILE=target/trackerformapp-0.0.1-SNAPSHOT.jar

# Copy the JAR into the image
COPY ${JAR_FILE} app.jar

# Run the app with Java
ENTRYPOINT ["java", "-jar", "/app.jar"]