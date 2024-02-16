# Use the official OpenJDK 21 base image
FROM openjdk:21

# Set the working directory inside the container
WORKDIR /app

# ARG to specify the build argument (default is 'target')
ARG JAR_TARGET=target

# Copy the JAR file into the container at /app
ADD ${JAR_TARGET}/jenkins-cicd.jar /app/jenkins-cicd.jar

# Expose the port that the application will run on
EXPOSE 8081

# Specify the command to run on container start
CMD ["java", "-jar", "jenkins-cicd.jar"]
