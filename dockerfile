FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
x11-apps \
xauth \
openjdk-11-jre \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /new-calc

COPY calc.jar /new-calc/

ENV DISPLAY=:0

CMD [ "java", "-jar", "/new-calc/calc.jar"]