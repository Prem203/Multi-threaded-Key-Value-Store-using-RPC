# Dockerfile for KeyValueStoreServer

# Base image
FROM openjdk:latest

# Set working directory
WORKDIR /app

# Copy server files to the container
COPY . /app

# Compile the Java server files
RUN javac *.java

# Expose RMI port
EXPOSE 1101

# Command to start the server
CMD ["java", "KeyValueStoreServer"]
