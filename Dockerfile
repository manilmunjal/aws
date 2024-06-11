
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Java source file into the container
COPY HelloWorld.java .

# Compile the Java source file inside the container
RUN javac HelloWorld.java

# Set the entry point for the container to run the Java application
CMD ["java", "HelloWorld"]
