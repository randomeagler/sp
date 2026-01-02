FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y openjdk-17-jre-headless wget curl
WORKDIR /
COPY sp.jar /sp.jar
CMD ["java -jar /sp.jar"]
