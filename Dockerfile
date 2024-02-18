# Use the official OpenJDK 21 base image
FROM openjdk:21

# Set the working directory inside the container
WORKDIR /app

# Expose the port that the application will run on
EXPOSE 8081

# Add labels to the image
LABEL maintainer="Professor Husnain contact@professorhusnain.com"
LABEL version="1.0"
LABEL description="This image is only used for jenkins automation testing purpose only."

# ARG to specify the build argument (default is 'target')
ARG JAR_TARGET=target

# ADD the JAR file into the container at /app
ADD ${JAR_TARGET}/*.jar jenkins-cicd.jar

# Specify the command to run on container start
CMD ["java", "-jar", "jenkins-cicd.jar"]
