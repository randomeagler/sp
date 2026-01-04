FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y openjdk-25-jre-headless wget curl
WORKDIR /
COPY sp.jar sp.jar
COPY main.sh main.sh
RUN chmod +x main.sh
CMD ["./main.sh"]
