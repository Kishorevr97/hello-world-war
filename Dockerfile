FROM ubuntu:latest
RUN apt update
RUN apt install maven -y
WORKDIR /app
COPY . .
RUN mvn clean package
